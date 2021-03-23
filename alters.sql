USE [BD_API_ECOFUTURO]
ALTER TABLE [weco].[CLIENTE] ADD [CLIE_TIPO_DISCAPACIDAD_VC] VARCHAR(MAX) NULL;

ALTER TABLE [weco].[CLIENTE_MODULO] ALTER COLUMN [CLMO_CUPON_UN] VARCHAR (max) null;
ALTER TABLE [weco].[CLIENTE_MODULO] ADD [CLMO_CUPON_VC] VARCHAR(MAX) NULL;
ALTER TABLE [weco].[CLIENTE_MODULO] DROP COLUMN [CLMO_CUPON_UN];

ALTER TABLE [weco].[PREGUNTA] ADD [MODU_TIPO_PARAMETRO_PREGUNTA_VC] VARCHAR(200) NULL;
ALTER TABLE [weco].[RESPUESTA] DROP CONSTRAINT FK_RESPUESTA;
ALTER TABLE [weco].[RESPUESTA] ADD CONSTRAINT FK_RESPUESTA FOREIGN KEY ([RESP_PREGUNTA_ID_BI]) REFERENCES [weco].[PREGUNTA] ([PREG_PREGUNTA_ID_BI]);

ALTER TABLE [weco].[PREGUNTA] DROP CONSTRAINT FK_PREGUNTA;
ALTER TABLE [weco].[PREGUNTA] ADD CONSTRAINT [FK_PREGUNTA] FOREIGN KEY ([PREG_MODULO_ID_BI]) REFERENCES [weco].[MODULO] (MODU_MODULO_ID_BI);