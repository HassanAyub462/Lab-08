CREATE TABLE [dbo].[products] (
    [Id]          INT           NOT NULL IDENTITY,
    [Title]       VARCHAR (50)  NOT NULL,
    [description] VARCHAR (50)  NOT NULL,
    [image]       VARCHAR (255) NOT NULL,
    [price]       INT           NOT NULL,
    [quantity]    INT           NOT NULL,
    [status]      VARCHAR (1)   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);