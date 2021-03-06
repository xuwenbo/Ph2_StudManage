if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_t_stud_t_class]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[t_stud] DROP CONSTRAINT FK_t_stud_t_class
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_t_sel_course_t_course]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[t_sel_cours] DROP CONSTRAINT FK_t_sel_course_t_course
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_t_teach_course_t_course]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[t_tch_cours] DROP CONSTRAINT FK_t_teach_course_t_course
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_t_sel_course_t_stud]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[t_sel_cours] DROP CONSTRAINT FK_t_sel_course_t_stud
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_t_stud_t_teacher]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[t_stud] DROP CONSTRAINT FK_t_stud_t_teacher
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_t_teach_course_t_teach]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[t_tch_cours] DROP CONSTRAINT FK_t_teach_course_t_teach
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[t_alias]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[t_alias]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[t_class]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[t_class]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[t_course]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[t_course]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[t_sel_cours]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[t_sel_cours]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[t_stud]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[t_stud]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[t_tch_cours]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[t_tch_cours]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[t_teacher]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[t_teacher]
GO

CREATE TABLE [dbo].[t_alias] (
	[name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[aliasname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[t_class] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[clsno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[clsname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[t_course] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[cno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[cname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[chour] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[t_sel_cours] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[sno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[cno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[score] [float] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[t_stud] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[sno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[sname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[gender] [char] (4) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[birthday] [datetime] NOT NULL ,
	[city] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[clsno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[tno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[t_tch_cours] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[tno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[cno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[t_teacher] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[tno] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[tname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[gender] [char] (4) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[birthday] [datetime] NOT NULL ,
	[ttile] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL 
) ON [PRIMARY]
GO

