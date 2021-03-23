USE [BD_API_ECOFUTURO]
GO

/*Administrador*/
INSERT INTO [weco].[CLIENTE]
(
      [CLIE_CORREO_ELECTRONICO_VC]
      ,[CLIE_CLAVE_VC]
      ,[CLIE_CI_VC]
      ,[CLIE_CI_EXPEDICION_VC]
      ,[CLIE_NOMBRE_COMPLETO_VC]
      ,[CLIE_GENERO_VC]
      ,[CLIE_FECHA_NACIMIENTO_DT]
      ,[CLIE_EDAD_IN]
      ,[CLIE_DEPARTAMENTO_VC]
      ,[CLIE_CIUDAD_VC]
      ,[CLIE_DIRECCION_VC]
      ,[CLIE_NUMERO_CELULAR_VC]
      ,[CLIE_NUMERO_FIJO_VC]
      ,[CLIE_NIVEL_EDUCACION_VC]
      ,[CLIE_DISCAPACIDAD_BT]
      ,[CLIE_TIPO_DISCAPACIDAD_VC]
	  ,[CLIE_NOMBRE_REFERENCIA_VC]
      ,[CLIE_CELULAR_REFERENCIA_VC]
      ,[CLIE_TERMINOS_Y_CONDICIONES_ACEPTADOS_BT]
      ,[CLIE_ROL_IN]
      ,[CLIE_TOKEN_VERIFICACION_EMAIL_VC]
      ,[CLIE_FECHA_VERIFICACION_DT]
      ,[CLIE_ESTADO_VERIFICACION_BT]
      ,[CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC]
      ,[CLIE_FECHA_EXPIRACION_TOKEN_RESTABLECER_DT]
      ,[CLIE_FECHA_CAMBIO_CONTRASENA_VC]
      ,[CLIE_REGISTRO_COMPLETO_BT]
      ,[CLIE_USUARIO_CREACION_VC]
      ,[CLIE_FECHA_CREACION_DT]
      ,[CLIE_USUARIO_MODIFICACION_VC]
      ,[CLIE_FECHA_MODIFICACION_DT]
      ,[CLIE_ESTADO_BT]

) VALUES (
	'castilloramiro313@gmail.com'
	,'$2a$11$TyoQNvZDueAEm.4/rmjiTOcLee61ZSiEuDEOJQ9RxUjsWZGmF4.xe'
	,'8353766'
	,'LP'
	,'Javier Ramiro Castillo Tarqui'
	,'Masculino'
	,'1993-07-19'
	,26
	,'La Paz'
	,'La Paz'
	,'El Alto'
	,'75294281'
	,'2216703'
	,'Universitario'
	,0
	,''
	,'Eddy Ramos'
	,'75294281'
	,1
	,0
	,''
	,'2020-12-10 16:35:19.420'
	,1
	,''
	,''
	,''
	,1
	,'AppUseIdAngular20201'
	,'2020-12-10 16:34:26.113'
	,'AppUseIdAngular20201'
	,'2020-12-10 16:35:19.420'
	,1
)
GO
/*Usuario wep API*/
INSERT INTO [weco].[USUARIO_WEP_API] (
      [USWA_USUARIO_NOMBRE_VC]
      ,[USWA_CONTRASENA_ID_VB]
      ,[USWA_TOKEN_PUBLICO_UN]
      ,[USWA_ESTADO_VC]
      ,[USWA_USUARIO_CREACION_VC]
      ,[USWA_FECHA_CREACION_DT]
      ,[USWA_USUARIO_MODIFICACION_VC]
      ,[USWA_FECHA_MODIFICACION_DT]
      ,[USWA_ESTADO_BT]
	)
VALUES (
	'APP_USER_ANGULAR'
	,0x6330FB7B1F8865241EA91D64EE4ACFF87BBD386E8170CFAD7304273C4D750A3B
	,'DF9516E6-2C09-4E62-A98F-2E36DE154C52'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

/*POLITICA*/
INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/Administration/PreRegister'
	,'Es un servicios que permite el preregistro de un cliente a la plataforma'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/Administration/VerifyEmail'
	,'Es un servicio que permite verificar el correo para el cliente'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/ClientService/Authenticate'
	,'Es un servicio que permite realizar el inicio de session del cliente'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO
INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/ClientService/RegistrationComplete'
	,'Es un servicio que permite realizar  el registro completo del cliente'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO
INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/Administration/ForgotPassword'
	,'Es un servicio que enviar un codigo de verificacion al correo para restableces una contraseña'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/Administration/ResetPassword'
	,'Es un servicio que permite restablecer la contraseña de un cliente'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO


/*POLITICA*/
INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/ClientService/AnswerQuestion'
	,'Es un servicios que permite registrar las respuestas del cliente'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO
INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/Administration/GetWinners'
	,'Es un servicios que obtener los ganadores deacuerdo a la evaluación echa'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/Token/RefreshToken'
	,'Es un servicio que permite actualizar un token JWT cuando ya esta por expirar'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO
INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/Token/RevokeToken'
	,'Es un servicio que permite revocar un token a un cliente'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
)
GO

INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/ClientService/QuestionsAndAswers'
	,'Es un servicios que obtener las preguntas y respuestas'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/ClientService/MyInformation'
	,'Es un servicio que obtener información referente al usuario y los modulos que finalizó'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[POLITICA] (
      [POLI_NOMBRE_VC]
      ,[POLI_DESCRIPCION_VC]
      ,[POLI_ESTADO_VC]
      ,[POLI_USUARIO_CREACION_VC]
      ,[POLI_FECHA_CREACION_DT]
      ,[POLI_USUARIO_MODIFICACION_VC]
      ,[POLI_FECHA_MODIFICACION_DT]
      ,[POLI_ESTADO_BT]
	)
VALUES (
	'/api/v1/Administration/SendCertificate'
	,'Es un servicio que permite creare un certificado'
	,'A'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO


/*USUARIO_POLITICA*/
INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,1
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,2
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO



INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,3
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO
INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,4
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,5
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,6
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,7
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,8
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,9
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,10
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,11
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,12
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[USUARIO_POLITICA] (
      [USPO_USUA_ID_BI]
      ,[USPO_POLI_ID_BI]
      ,[USPO_APP_USUARIO_ID_VC]
      ,[USPO_USUARIO_CREACION_VC]
      ,[USPO_FECHA_CREACION_DT]
      ,[USPO_USUARIO_MODIFICACION_VC]
      ,[USPO_FECHA_MODIFICACION_DT]
      ,[USPO_ESTADO_BT]
	)
VALUES (
	1
	,13
	,'AppUseIdAngular20201031'
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,'USER_DEV_RAMIRO'
	,GETDATE()
	,1
	)
GO

INSERT INTO [weco].[MODULO]
           ([MODU_NUMERO_MODULO_IN]
		   ,[MODU_NOMBRE_VC]
           ,[MODU_DESCRIPCION_VC]
           ,[MODU_USUARIO_CREACION_VC]
           ,[MODU_FECHA_CREACION_DT]
           ,[MODU_USUARIO_MODIFICACION_VC]
           ,[MODU_FECHA_MODIFICACION_DT]
           ,[MODU_ESTADO_BT])
     VALUES
           (
		   1
		   ,'Módulo 1'
           ,'Sistema Financiero, el Rol de la ASFI y Alcance de la Normativa'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[MODULO]
           ([MODU_NUMERO_MODULO_IN]
		   ,[MODU_NOMBRE_VC]
           ,[MODU_DESCRIPCION_VC]
           ,[MODU_USUARIO_CREACION_VC]
           ,[MODU_FECHA_CREACION_DT]
           ,[MODU_USUARIO_MODIFICACION_VC]
           ,[MODU_FECHA_MODIFICACION_DT]
           ,[MODU_ESTADO_BT])
     VALUES
           (
		   2
		   ,'Módulo 2'
           ,'Ahorro'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[MODULO]
           ([MODU_NUMERO_MODULO_IN]
		   ,[MODU_NOMBRE_VC]
           ,[MODU_DESCRIPCION_VC]
           ,[MODU_USUARIO_CREACION_VC]
           ,[MODU_FECHA_CREACION_DT]
           ,[MODU_USUARIO_MODIFICACION_VC]
           ,[MODU_FECHA_MODIFICACION_DT]
           ,[MODU_ESTADO_BT])
     VALUES
           (
		   3
		   ,'Módulo 3'
           ,'Crédito'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[MODULO]
           ([MODU_NUMERO_MODULO_IN]
		   ,[MODU_NOMBRE_VC]
           ,[MODU_DESCRIPCION_VC]
           ,[MODU_USUARIO_CREACION_VC]
           ,[MODU_FECHA_CREACION_DT]
           ,[MODU_USUARIO_MODIFICACION_VC]
           ,[MODU_FECHA_MODIFICACION_DT]
           ,[MODU_ESTADO_BT])
     VALUES
           (
		   4
		   ,'Módulo 4'
           ,'Instrumentos Electrónicos de Pago'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[MODULO]
           ([MODU_NUMERO_MODULO_IN]
		   ,[MODU_NOMBRE_VC]
           ,[MODU_DESCRIPCION_VC]
           ,[MODU_USUARIO_CREACION_VC]
           ,[MODU_FECHA_CREACION_DT]
           ,[MODU_USUARIO_MODIFICACION_VC]
           ,[MODU_FECHA_MODIFICACION_DT]
           ,[MODU_ESTADO_BT])
     VALUES
           (
		   5
		   ,'Módulo 5'
           ,'Puntos de Atención Financiera'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*PREGUNTAS MODULO 1*/
INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   'Indica si el siguiente enunciado es correcto o incorrecto:'
           ,'El Sistema Financiero es aquel conjunto de instituciones, mercados y medios de un país determinado cuyo objetivo y finalidad principal es la de canalizar el ahorro que generan los prestamistas hacia los prestatarios.'
           ,1
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO


INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   'El significado de la sigla “ASFI” corresponde a:'
           ,''
           ,1
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   'Señala si la siguiente afirmación es correcto o incorrecta:'
           ,'El Banco cumple con los lineamientos establecidos en la Ley 393 y la Recopilación de Normativa correspondientemente.'
           ,1
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*PREGUNTAS MODULO 2*/

INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   'Selecciona la definición de “Ahorrar” de las siguientes 3 opciones:'
           ,''
           ,2
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   'Del listado de productos, detallados en la parte inferior, ¿cuál es el adecuado para una persona que realiza el siguiente comentario:'
           ,'“Quiero un producto en el que pueda depositar una cantidad de dinero de forma inmediata y que cuente con una atractiva tasa de interés. Este dinero no lo utilizaré hasta el próximo año que tengo planificadas mis vacaciones”'
           ,2
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*PREGUNTAS MODULO 3*/

INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   'La definición descrita a continuación, ¿a qué tipo de Crédito pertenece?'
           ,'“Crédito otorgado a pequeñas y medianas empresas, con el objeto de financiar actividades de producción, comercialización o servicios.”'
           ,3
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   '¿Qué significa ser garante? Indica si la siguiente definición es correcta:'
           ,'Ser garante es hacerse responsable de la conducta crediticia y las obligaciones de otra persona. Al aceptar esta responsabilidad, el garante compromete sus bienes como garantía en caso de incumplimiento de pago del cliente.'
           ,3
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*PREGUNTAS MODULO 4*/

INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   'Selecciona los 2 canales o medios a través de los cuales se puede operar el Instrumento Electrónico de Pago: Órdenes Electrónicas de Transferencia de Fondos (OETF):'
           ,''
           ,4
           ,'CHECK_BOX'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   'Señala si la siguiente afirmación sobre la Banca Móvil es correcta o incorrecta:'
           ,'Es un servicio otorgado a través de una cuenta de pago ligada a una línea celular, medio por el cual el consumidor financiero puede efectuar transacciones financieras, de forma ágil y segura a cualquier hora, los 365 días del año. Permite realizar una carga de dinero electrónico, enviar dinero, efectivizar (convertir dinero electrónico a dinero tangible), consultar saldo y solicitar mini extracto.'
           ,4
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*preguntas modulo 5*/

INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   '¿A qué Punto de Atención Financiera pertenece la siguiente definición?'
           ,'Instalada al interior de entidades públicas o empresas privadas, con el único objeto de prestar servicios de cobranza por cuenta de instituciones públicas o empresas privadas.'
           ,5
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO


INSERT INTO [weco].[PREGUNTA]
           ([PREG_PREGUNTA_VC]
           ,[PREG_PREGUNTA_DESCRIPCION_VC]
           ,[PREG_MODULO_ID_BI]
		   ,[PREG_TIPO_CAMPO_VC]
           ,[PREG_USUARIO_CREACION_VC]
           ,[PREG_FECHA_CREACION_DT]
           ,[PREG_USUARIO_MODIFICACION_VC]
           ,[PREG_FECHA_MODIFICACION_DT]
           ,[PREG_ESTADO_BT]
           )
     VALUES
           (
		   'Indica si la siguiente afirmación es correcta o incorrecta'
           ,'Puedes cambiar el PIN de la tarjeta, que inicialmente te otorgaron, por un número de tu conveniencia. Esta modificación puedes realizarla llamando al Contact Center del Banco, o si no puede asistirte alguien que esté cerca del Cajero Automático.'
           ,5
           ,'RADIO_BUTTON'
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO


USE [BD_API_ECOFUTURO]
GO
/*RESPUESTAS PREGUNTA 1 MOD 1*/
INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Correcto'
           ,1
           ,1
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Incorrecto'
           ,0
           ,1
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*RESPUESTAS PREGUNTA 2 MOD 1*/

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Asociación de Supervisión del Sistema Financiero'
           ,0
           ,2
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Autoridad de Supervisión de Finanzas Institucionales'
           ,0
           ,2
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Autoridad de Supervisión del Sistema Financiero'
           ,1
           ,2
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO


/*RESPUESTAS PREGUNTA 3 MOD 1*/

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Correcto'
           ,1
           ,3
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Incorrecto'
           ,0
           ,3
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*RESPUESTAS PREGUNTA 1 MOD 2*/

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Emplear una cantidad de dinero en un proyecto, actividad o negocio con el objetivo de obtener un beneficio, ganancia adicional o ingreso.'
           ,0
           ,4
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Es un egreso o salida de dinero que una persona o empresa debe pagar para un fin, ya sea adquirir un producto o recibir un servicio.'
           ,0
           ,4
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Es la acción de separar una parte del ingreso, que obtiene una persona o empresa, con el fin de guardarlo para necesidades futuras.'
           ,1
           ,4
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*RESPUESTAS PREGUNTA 2 MOD 2*/

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Caja de Ahorro'
           ,0
           ,5
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Depósito a Plazo Fijo'
           ,1
           ,5
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Cuenta Corriente'
           ,0
           ,5
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO


/*Respuestas pregunta 1 mod 3*/

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Crédito empresarial'
           ,0
           ,6
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Crédito PYME'
           ,1
           ,6
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Microcrédito'
           ,0
           ,6
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Crédito de Vivienda'
           ,0
           ,6
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Crédito de Consumo'
           ,0
           ,6
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*respuestas pregunta 2 mod 3*/

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Correcto'
           ,1
           ,7
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Incorrecto'
           ,0
           ,7
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*respuestas pregunta 1 mod 4*/

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Tarjeta de Débito'
           ,0
           ,8
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO


INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Tarjeta de Crédito'
           ,0
           ,8
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Banca Móvil'
           ,1
           ,8
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Billetera Móvil'
           ,0
           ,8
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO*/

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Tarjeta Prepagada'
           ,0
           ,8
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Cajeros Automáticos'
           ,1
           ,8
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*respuestas preguntas 2 mod 4 */

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Correcto'
           ,0
           ,9
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Incorrecto'
           ,1
           ,9
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*respuesas pregunta 1 mod 5*/

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Oficina Ferial'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Agencia Fija'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Oficina Externa'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Sucursal'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Ventanilla de Cobranza'
           ,1
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Oficina Central'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Cajero Automático'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Agencia Móvil'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Local Compartido'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Punto Corresponsal No Financiero'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Punto Corresponsal Financiero'
           ,0
           ,10
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

/*respuestas pregunta 2 mod 5*/
INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Correcto'
           ,0
           ,11
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO

INSERT INTO [weco].[RESPUESTA]
           ([RESP_DETALLE_RESPUESTA_VC]
           ,[RESP_ESTADO_RESPUESTA_CORRECTA_BT]
           ,[RESP_PREGUNTA_ID_BI]
           ,[RESP_USUARIO_CREACION_VC]
           ,[RESP_FECHA_CREACION_DT]
           ,[RESP_USUARIO_MODIFICACION_VC]
           ,[RESP_FECHA_MODIFICACION_DT]
           ,[RESP_ESTADO_BT])
     VALUES
           (
		   'Incorrecto'
           ,1
           ,11
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,'USER_DEV_RAMIRO'
           ,GETDATE()
           ,1
		   )
GO
