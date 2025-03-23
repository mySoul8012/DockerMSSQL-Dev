/*
 Navicat Premium Data Transfer

 Source Server         : 55555
 Source Server Type    : SQL Server
 Source Server Version : 16001000 (16.00.1000)
 Source Host           : 192.168.68.79:1433
 Source Catalog        : ming
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16001000 (16.00.1000)
 File Encoding         : 65001

 Date: 07/02/2025 20:12:26
*/


-- ----------------------------
-- Table structure for appointments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[appointments]') AND type IN ('U'))
	DROP TABLE [dbo].[appointments]
GO

CREATE TABLE [dbo].[appointments] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [order_number] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [student_id] varchar(11) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [teacher_id] int  NOT NULL,
  [time_slot] datetime  NOT NULL,
  [contact_phone] varchar(11) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [status] nvarchar(10) COLLATE Chinese_PRC_CI_AS DEFAULT 'created' NULL,
  [created_at] datetime DEFAULT getdate() NULL,
  [modified_at] datetime DEFAULT getdate() NULL
)
GO

ALTER TABLE [dbo].[appointments] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of appointments
-- ----------------------------
SET IDENTITY_INSERT [dbo].[appointments] ON
GO

INSERT INTO [dbo].[appointments] ([id], [order_number], [student_id], [teacher_id], [time_slot], [contact_phone], [status], [created_at], [modified_at]) VALUES (N'2', N'ORD1738586906557832', N'11111111111', N'1', N'2025-02-10 02:00:00.000', N'11111111111', N'created', N'2025-02-03 20:48:27.200', N'2025-02-06 03:09:54.577')
GO

INSERT INTO [dbo].[appointments] ([id], [order_number], [student_id], [teacher_id], [time_slot], [contact_phone], [status], [created_at], [modified_at]) VALUES (N'3', N'ORD1738587016539761', N'11111111111', N'1', N'2025-02-01 02:00:00.000', N'11111111111', N'created', N'2025-01-01 20:50:17.083', N'2025-01-01 00:10:34.600')
GO

INSERT INTO [dbo].[appointments] ([id], [order_number], [student_id], [teacher_id], [time_slot], [contact_phone], [status], [created_at], [modified_at]) VALUES (N'4', N'ORD1738587958394670', N'33333333333', N'3', N'2025-02-26 21:00:00.000', N'11111111111', N'created', N'2025-02-19 02:45:24.680', N'2025-02-19 02:45:24.680')
GO

INSERT INTO [dbo].[appointments] ([id], [order_number], [student_id], [teacher_id], [time_slot], [contact_phone], [status], [created_at], [modified_at]) VALUES (N'5', N'ORD1738598995703761', N'22222222222', N'4', N'2025-02-01 01:30:00.000', N'11111111111', N'modified', N'2025-02-04 00:09:56.280', N'2025-02-07 04:31:07.623')
GO

INSERT INTO [dbo].[appointments] ([id], [order_number], [student_id], [teacher_id], [time_slot], [contact_phone], [status], [created_at], [modified_at]) VALUES (N'7', N'ORD1738796397104650', N'22222222222', N'2', N'2025-02-11 01:00:00.000', N'11111111111', N'cancelled', N'2025-02-06 06:59:57.963', N'2025-02-07 04:31:02.843')
GO

INSERT INTO [dbo].[appointments] ([id], [order_number], [student_id], [teacher_id], [time_slot], [contact_phone], [status], [created_at], [modified_at]) VALUES (N'8', N'ORD1738867524091374', N'55555555555', N'1', N'2025-02-10 02:00:00.000', N'55555555555', N'confirmed', N'2025-02-07 02:45:24.680', N'2025-02-07 04:30:58.877')
GO

INSERT INTO [dbo].[appointments] ([id], [order_number], [student_id], [teacher_id], [time_slot], [contact_phone], [status], [created_at], [modified_at]) VALUES (N'9', N'52454', N'22222222222', N'2', N'2025-01-01 01:00:00.000', N'111', N'created', N'2025-01-01 05:32:58.023', N'2025-01-01 05:32:58.023')
GO

INSERT INTO [dbo].[appointments] ([id], [order_number], [student_id], [teacher_id], [time_slot], [contact_phone], [status], [created_at], [modified_at]) VALUES (N'10', N'14564', N'11111111111', N'2', N'2025-02-13 07:00:00.000', N'15', N'confirmed', N'2025-02-07 05:37:50.700', N'2025-02-07 05:37:50.700')
GO

SET IDENTITY_INSERT [dbo].[appointments] OFF
GO


-- ----------------------------
-- Table structure for CarouselImages
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CarouselImages]') AND type IN ('U'))
	DROP TABLE [dbo].[CarouselImages]
GO

CREATE TABLE [dbo].[CarouselImages] (
  [ImageID] int  IDENTITY(1,1) NOT NULL,
  [ImageURL] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [RedirectURL] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [DisplayOrder] int DEFAULT 0 NOT NULL,
  [IsActive] bit DEFAULT 1 NOT NULL,
  [CreatedAt] datetime DEFAULT getdate() NULL,
  [UpdatedAt] datetime DEFAULT getdate() NULL
)
GO

ALTER TABLE [dbo].[CarouselImages] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CarouselImages
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CarouselImages] ON
GO

INSERT INTO [dbo].[CarouselImages] ([ImageID], [ImageURL], [RedirectURL], [DisplayOrder], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (N'5', N'https://melovemingming444444.oss-cn-beijing.aliyuncs.com/myplot.png', N'https://example.com/page5', N'5', N'1', N'2025-02-06 01:33:31.733', N'2025-02-06 01:33:31.733')
GO

INSERT INTO [dbo].[CarouselImages] ([ImageID], [ImageURL], [RedirectURL], [DisplayOrder], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (N'6', N'http://localhost:3000/uploads/1738796270768-5757.jpg', NULL, N'0', N'1', N'2025-02-06 02:04:20.970', N'2025-02-06 06:58:01.630')
GO

SET IDENTITY_INSERT [dbo].[CarouselImages] OFF
GO


-- ----------------------------
-- Table structure for questionnaire_answers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[questionnaire_answers]') AND type IN ('U'))
	DROP TABLE [dbo].[questionnaire_answers]
GO

CREATE TABLE [dbo].[questionnaire_answers] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [questionnaire_id] int  NOT NULL,
  [user_id] varchar(22) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [answer] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [created_at] datetime DEFAULT getdate() NULL
)
GO

ALTER TABLE [dbo].[questionnaire_answers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of questionnaire_answers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[questionnaire_answers] ON
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'1', N'6', N'11111111111', N'44', N'2025-02-03 23:35:27.830')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'2', N'5', N'11111111111', N'55', N'2025-02-03 23:35:27.860')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'3', N'4', N'11111111111', N'66', N'2025-02-03 23:35:27.867')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'4', N'1', N'11111111111', N'222', N'2025-02-03 23:35:27.910')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'5', N'3', N'11111111111', N'77', N'2025-02-03 23:35:27.923')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'6', N'2', N'11111111111', N'33', N'2025-02-03 23:35:27.963')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'7', N'6', N'11111111111', N'333', N'2025-02-03 23:36:31.360')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'8', N'5', N'11111111111', N'444', N'2025-02-03 23:36:31.397')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'9', N'4', N'11111111111', N'222', N'2025-02-03 23:36:31.453')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'10', N'3', N'11111111111', N'333', N'2025-02-03 23:36:31.480')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'11', N'2', N'11111111111', N'444', N'2025-02-03 23:36:31.500')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'12', N'1', N'11111111111', N'33333', N'2025-02-03 23:36:31.503')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'13', N'6', N'11111111111', N'444', N'2025-02-04 00:10:53.290')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'14', N'5', N'11111111111', N'555', N'2025-02-04 00:10:53.323')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'15', N'4', N'11111111111', N'66', N'2025-02-04 00:10:53.343')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'16', N'3', N'11111111111', N'444', N'2025-02-04 00:10:53.357')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'17', N'2', N'11111111111', N'33', N'2025-02-04 00:10:53.370')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'18', N'1', N'11111111111', N'222', N'2025-02-04 00:10:53.407')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'19', N'7', N'55555555555', N'555', N'2025-02-07 02:49:06.603')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'20', N'6', N'55555555555', N'111', N'2025-02-07 02:49:06.603')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'21', N'5', N'55555555555', N'888', N'2025-02-07 02:49:06.627')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'22', N'4', N'55555555555', N'666', N'2025-02-07 02:49:06.650')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'23', N'3', N'55555555555', N'5555', N'2025-02-07 02:49:06.780')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'24', N'2', N'55555555555', N'2222', N'2025-02-07 02:49:06.793')
GO

INSERT INTO [dbo].[questionnaire_answers] ([id], [questionnaire_id], [user_id], [answer], [created_at]) VALUES (N'25', N'1', N'55555555555', N'888', N'2025-02-07 02:49:06.850')
GO

SET IDENTITY_INSERT [dbo].[questionnaire_answers] OFF
GO


-- ----------------------------
-- Table structure for questionnaires
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[questionnaires]') AND type IN ('U'))
	DROP TABLE [dbo].[questionnaires]
GO

CREATE TABLE [dbo].[questionnaires] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [appointment_id] int  NULL,
  [question] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [answer] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [userId] int  NULL
)
GO

ALTER TABLE [dbo].[questionnaires] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of questionnaires
-- ----------------------------
SET IDENTITY_INSERT [dbo].[questionnaires] ON
GO

INSERT INTO [dbo].[questionnaires] ([id], [appointment_id], [question], [answer], [userId]) VALUES (N'1', N'1', N'您对心理咨询的整体体验如何？', N'', NULL)
GO

INSERT INTO [dbo].[questionnaires] ([id], [appointment_id], [question], [answer], [userId]) VALUES (N'2', N'1', N'您觉得本次咨询是否帮助到您？', N'', NULL)
GO

INSERT INTO [dbo].[questionnaires] ([id], [appointment_id], [question], [answer], [userId]) VALUES (N'3', N'2', N'您对咨询时长是否满意？', N'', NULL)
GO

INSERT INTO [dbo].[questionnaires] ([id], [appointment_id], [question], [answer], [userId]) VALUES (N'4', N'2', N'您对咨询师的沟通能力评价如何？', N'', NULL)
GO

INSERT INTO [dbo].[questionnaires] ([id], [appointment_id], [question], [answer], [userId]) VALUES (N'5', N'3', N'请评价咨询环境是否舒适？', N'', NULL)
GO

INSERT INTO [dbo].[questionnaires] ([id], [appointment_id], [question], [answer], [userId]) VALUES (N'6', N'3', N'如果有改进建议，请填写333', N'', NULL)
GO

INSERT INTO [dbo].[questionnaires] ([id], [appointment_id], [question], [answer], [userId]) VALUES (N'7', NULL, N'555', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[questionnaires] OFF
GO


-- ----------------------------
-- Table structure for reviews
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[reviews]') AND type IN ('U'))
	DROP TABLE [dbo].[reviews]
GO

CREATE TABLE [dbo].[reviews] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [appointment_id] int  NOT NULL,
  [rating] int  NOT NULL,
  [comment] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [created_at] datetime DEFAULT getdate() NULL
)
GO

ALTER TABLE [dbo].[reviews] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of reviews
-- ----------------------------
SET IDENTITY_INSERT [dbo].[reviews] ON
GO

INSERT INTO [dbo].[reviews] ([id], [appointment_id], [rating], [comment], [created_at]) VALUES (N'2', N'2', N'4', N'通过张老师的指导，我学会了如何管理情绪。', N'2025-02-03 19:59:12.440')
GO

INSERT INTO [dbo].[reviews] ([id], [appointment_id], [rating], [comment], [created_at]) VALUES (N'3', N'3', N'5', N'李老师的建议非常实用，让我受益匪浅。', N'2025-02-03 19:59:12.440')
GO

INSERT INTO [dbo].[reviews] ([id], [appointment_id], [rating], [comment], [created_at]) VALUES (N'4', N'4', N'2', N'555555', N'2025-02-03 22:04:29.527')
GO

INSERT INTO [dbo].[reviews] ([id], [appointment_id], [rating], [comment], [created_at]) VALUES (N'5', N'4', N'2', N'55555555', N'2025-02-03 22:06:20.570')
GO

INSERT INTO [dbo].[reviews] ([id], [appointment_id], [rating], [comment], [created_at]) VALUES (N'6', N'5', N'2', N'444444', N'2025-02-04 00:10:29.700')
GO

INSERT INTO [dbo].[reviews] ([id], [appointment_id], [rating], [comment], [created_at]) VALUES (N'7', N'5', N'4', N'5555555555555', N'2025-02-06 04:47:11.670')
GO

INSERT INTO [dbo].[reviews] ([id], [appointment_id], [rating], [comment], [created_at]) VALUES (N'8', N'4', N'5', N'55555', N'2025-02-06 06:26:30.113')
GO

INSERT INTO [dbo].[reviews] ([id], [appointment_id], [rating], [comment], [created_at]) VALUES (N'9', N'7', N'1', N'55555', N'2025-02-06 07:00:54.670')
GO

SET IDENTITY_INSERT [dbo].[reviews] OFF
GO


-- ----------------------------
-- Table structure for teachers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[teachers]') AND type IN ('U'))
	DROP TABLE [dbo].[teachers]
GO

CREATE TABLE [dbo].[teachers] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [introduction] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [profile_picture] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [available_time_slots] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [max_days_in_advance] int DEFAULT 7 NULL,
  [is_active] bit DEFAULT 1 NULL
)
GO

ALTER TABLE [dbo].[teachers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of teachers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[teachers] ON
GO

INSERT INTO [dbo].[teachers] ([id], [name], [introduction], [profile_picture], [available_time_slots], [max_days_in_advance], [is_active]) VALUES (N'1', N'张老师55', N'心理学博士，擅长情绪管理55666', N'https://melovemingming444444.oss-cn-beijing.aliyuncs.com/myplot.png', N'2025-02-10 10:00,2025-02-12 14:00', N'8', N'0')
GO

INSERT INTO [dbo].[teachers] ([id], [name], [introduction], [profile_picture], [available_time_slots], [max_days_in_advance], [is_active]) VALUES (N'2', N'李老师', N'资深心理咨询师，专注于青少年心理', N'https://melovemingming444444.oss-cn-beijing.aliyuncs.com/myplot.png', N'2025-02-11 09:00,2025-02-13 15:00', N'7', N'1')
GO

INSERT INTO [dbo].[teachers] ([id], [name], [introduction], [profile_picture], [available_time_slots], [max_days_in_advance], [is_active]) VALUES (N'3', N'王老师', N'家庭关系调解专家，致力于提升亲子沟通', N'https://melovemingming444444.oss-cn-beijing.aliyuncs.com/myplot.png', N'2025-02-14 10:00,2025-02-15 16:00', N'10', N'1')
GO

INSERT INTO [dbo].[teachers] ([id], [name], [introduction], [profile_picture], [available_time_slots], [max_days_in_advance], [is_active]) VALUES (N'4', N'赵老师', N'国家级心理咨询师，拥有丰富的个案经验', N'https://melovemingming444444.oss-cn-beijing.aliyuncs.com/myplot.png', N'2025-02-16 09:30,2025-02-18 14:30', N'7', N'1')
GO

INSERT INTO [dbo].[teachers] ([id], [name], [introduction], [profile_picture], [available_time_slots], [max_days_in_advance], [is_active]) VALUES (N'5', N'陈老师', N'心理健康教育专家，注重实践和实用性', N'https://melovemingming444444.oss-cn-beijing.aliyuncs.com/myplot.png', N'2025-02-17 11:00,2025-02-19 15:00', N'5', N'1')
GO

SET IDENTITY_INSERT [dbo].[teachers] OFF
GO


-- ----------------------------
-- Table structure for users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type IN ('U'))
	DROP TABLE [dbo].[users]
GO

CREATE TABLE [dbo].[users] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [student_id] varchar(11) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [class] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [age] int  NOT NULL,
  [password] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [phone] varchar(11) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [credit_score] int DEFAULT 10 NULL,
  [avatar] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [role] nvarchar(10) COLLATE Chinese_PRC_CI_AS DEFAULT '' NOT NULL,
  [xyf] int DEFAULT 10 NULL
)
GO

ALTER TABLE [dbo].[users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of users
-- ----------------------------
SET IDENTITY_INSERT [dbo].[users] ON
GO

INSERT INTO [dbo].[users] ([id], [student_id], [name], [class], [age], [password], [phone], [credit_score], [avatar], [role], [xyf]) VALUES (N'6', N'11111111111', N'11', N'4444488899', N'1111', N'Aa11111111', N'11111111111', N'10', NULL, N'student', N'0')
GO

INSERT INTO [dbo].[users] ([id], [student_id], [name], [class], [age], [password], [phone], [credit_score], [avatar], [role], [xyf]) VALUES (N'7', N'22222222222', N'22', N'22', N'22', N'Aa11111111', N'11111111111', N'10', NULL, N'admin', N'10')
GO

INSERT INTO [dbo].[users] ([id], [student_id], [name], [class], [age], [password], [phone], [credit_score], [avatar], [role], [xyf]) VALUES (N'8', N'33333333333', N'33', N'33', N'33', N'Aa11111111', N'33333333333', N'10', NULL, N'admin', N'10')
GO

INSERT INTO [dbo].[users] ([id], [student_id], [name], [class], [age], [password], [phone], [credit_score], [avatar], [role], [xyf]) VALUES (N'9', N'55555555555', N'a', N'A', N'2', N'Aa11111111', N'11111111111', N'10', NULL, N'admin', N'10')
GO

SET IDENTITY_INSERT [dbo].[users] OFF
GO


-- ----------------------------
-- Auto increment value for appointments
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[appointments]', RESEED, 10)
GO


-- ----------------------------
-- Uniques structure for table appointments
-- ----------------------------
ALTER TABLE [dbo].[appointments] ADD CONSTRAINT [UQ__appointm__730E34DF731D3ECF] UNIQUE NONCLUSTERED ([order_number] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Checks structure for table appointments
-- ----------------------------
ALTER TABLE [dbo].[appointments] ADD CONSTRAINT [CK__appointme__statu__412EB0B6] CHECK ([status]='confirmed' OR [status]='cancelled' OR [status]='modified' OR [status]='created')
GO


-- ----------------------------
-- Primary Key structure for table appointments
-- ----------------------------
ALTER TABLE [dbo].[appointments] ADD CONSTRAINT [PK__appointm__3213E83F30424BED] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CarouselImages
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CarouselImages]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table CarouselImages
-- ----------------------------
ALTER TABLE [dbo].[CarouselImages] ADD CONSTRAINT [PK__Carousel__7516F4EC55BE3A74] PRIMARY KEY CLUSTERED ([ImageID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for questionnaire_answers
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[questionnaire_answers]', RESEED, 25)
GO


-- ----------------------------
-- Primary Key structure for table questionnaire_answers
-- ----------------------------
ALTER TABLE [dbo].[questionnaire_answers] ADD CONSTRAINT [PK__question__3213E83FDC73393E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for questionnaires
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[questionnaires]', RESEED, 7)
GO


-- ----------------------------
-- Primary Key structure for table questionnaires
-- ----------------------------
ALTER TABLE [dbo].[questionnaires] ADD CONSTRAINT [PK__question__3213E83F78EF24A7] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for reviews
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[reviews]', RESEED, 9)
GO


-- ----------------------------
-- Primary Key structure for table reviews
-- ----------------------------
ALTER TABLE [dbo].[reviews] ADD CONSTRAINT [PK__reviews__3213E83F7FA4E500] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for teachers
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[teachers]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table teachers
-- ----------------------------
ALTER TABLE [dbo].[teachers] ADD CONSTRAINT [PK__teachers__3213E83FEE10E088] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for users
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[users]', RESEED, 9)
GO


-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [UQ__users__2A33069BABFD577B] UNIQUE NONCLUSTERED ([student_id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Checks structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [CK__users__role__3A81B327] CHECK ([role]='admin' OR [role]='student')
GO


-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [PK__users__3213E83F0629317C] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table appointments
-- ----------------------------
ALTER TABLE [dbo].[appointments] ADD CONSTRAINT [FK_appointments_teachers] FOREIGN KEY ([teacher_id]) REFERENCES [dbo].[teachers] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[appointments] ADD CONSTRAINT [FK_appointments_users] FOREIGN KEY ([student_id]) REFERENCES [dbo].[users] ([student_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

