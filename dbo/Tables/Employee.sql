CREATE TABLE [dbo].[Employee] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [first_name]    NVARCHAR (50) NULL,
    [last_name]     NVARCHAR (50) NULL,
    [salary]        FLOAT (53)    NULL,
    [department_id] INT           NULL,
    [Gender]        NVARCHAR (50) NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([Id] ASC)
);

