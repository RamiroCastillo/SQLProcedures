USE [BD_API_ECOFUTURO]
GO

/****** Object:  StoredProcedure [weco].[CLIENTE_InsertIfNotexist]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [weco].[CLIENTE_InsertIfNotexist] @CLIE_CORREO_ELECTRONICO_VC VARCHAR(max)
	,@CLIE_CI_VC VARCHAR(80)
	,@CLIE_CI_EXPEDICION_VC VARCHAR(20)
	,@CLIE_CLAVE_VC VARCHAR(max)
	,@CLIE_TERMINOS_Y_CONDICIONES_ACEPTADOS_BT BIT
	,@CLIE_TOKEN_VERIFICACION_EMAIL_VC VARCHAR(max)
	,@CLIE_ROL_IN INT
	,@CLIE_USUARIO_CREACION_VC VARCHAR(20)
AS
/**********************************************************************************
*Descripcion: Store procedure para crear un nuevo usuario mediante un preregistro *														
*Fecha Creacion: 16/03/2020												          *
*Fecha Modificacion: 16/03/2020											          *
*Autor: Castillo Tarqui Javier Ramiro									          *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro			          *
***********************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @USER_VALIDATED BIT;
	DECLARE @CLIE_CLIENTE_ID_BI BIGINT;

	IF EXISTS (
			SELECT [CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
			)
	BEGIN
		SELECT @USER_VALIDATED = [CLIE_ESTADO_VERIFICACION_BT]
			,@CLIE_CLIENTE_ID_BI = [CLIE_CLIENTE_ID_BI]
		FROM [weco].[CLIENTE]
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC

		IF (@USER_VALIDATED = 1)
		BEGIN
			SELECT '01' [RESULTADO]
		END
		ELSE
		BEGIN
			DELETE
			FROM [weco].[CLIENTE_MODULO]
			WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI;

			DELETE
			FROM [weco].[TOKEN_ACTUALIZACION]
			WHERE [TOAC_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI;

			DELETE
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI;

			INSERT INTO weco.CLIENTE (
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
				)
			VALUES (
				@CLIE_CORREO_ELECTRONICO_VC
				,@CLIE_CLAVE_VC
				,@CLIE_CI_VC
				,@CLIE_CI_EXPEDICION_VC
				,''
				,''
				,''
				,''
				,''
				,''
				,''
				,''
				,''
				,''
				,0
				,''
				,''
				,@CLIE_TERMINOS_Y_CONDICIONES_ACEPTADOS_BT
				,@CLIE_ROL_IN
				,@CLIE_TOKEN_VERIFICACION_EMAIL_VC
				,''
				,0
				,''
				,NULL
				,NULL
				,0
				,@CLIE_USUARIO_CREACION_VC
				,GETDATE()
				,@CLIE_USUARIO_CREACION_VC
				,GETDATE()
				,1
				);

			SELECT '00' [RESULTADO]
				,[CLIE_CLIENTE_ID_BI]
				,[CLIE_CORREO_ELECTRONICO_VC]
				,[CLIE_CI_VC]
				,[CLIE_CI_EXPEDICION_VC]
				,[CLIE_TOKEN_VERIFICACION_EMAIL_VC]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
				AND [CLIE_CI_VC] = @CLIE_CI_VC
		END
	END
	ELSE
	BEGIN
		INSERT INTO weco.CLIENTE (
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
			)
		VALUES (
			@CLIE_CORREO_ELECTRONICO_VC
			,@CLIE_CLAVE_VC
			,@CLIE_CI_VC
			,@CLIE_CI_EXPEDICION_VC
			,''
			,''
			,''
			,''
			,''
			,''
			,''
			,''
			,''
			,''
			,0
			,''
			,''
			,@CLIE_TERMINOS_Y_CONDICIONES_ACEPTADOS_BT
			,@CLIE_ROL_IN
			,@CLIE_TOKEN_VERIFICACION_EMAIL_VC
			,''
			,0
			,''
			,NULL
			,NULL
			,0
			,@CLIE_USUARIO_CREACION_VC
			,GETDATE()
			,@CLIE_USUARIO_CREACION_VC
			,GETDATE()
			,1
			);

		SELECT '00' [RESULTADO]
			,[CLIE_CLIENTE_ID_BI]
			,[CLIE_CORREO_ELECTRONICO_VC]
			,[CLIE_CI_VC]
			,[CLIE_CI_EXPEDICION_VC]
			,[CLIE_TOKEN_VERIFICACION_EMAIL_VC]
		FROM [weco].[CLIENTE]
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
			AND [CLIE_CI_VC] = @CLIE_CI_VC
	END

	SET NOCOUNT OFF
END
GO



/****** Object:  StoredProcedure [weco].[weco.USUARIO_Authenticate]    Script Date: 29/04/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [weco].[USUARIO_Authenticate] @USWA_USUARIO_NOMBRE_VC VARCHAR(300)
,@USWA_CONTRASENA_VB VARCHAR(MAX)
,@USWA_PUBLICA_UN UNIQUEIDENTIFIER
AS
/*****************************************************************************
*Descripcion: Store Procedure para autenticar al usuario que reuqiere la api *	
*Fecha Creacion: 31/10/2020												     *
*Fecha Modificacion: 31/10/2020											     *
*Autor: Castillo Tarqui Javier Ramiro 							             *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 	             *
******************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @HASH_NV NVARCHAR(MAX)
	DECLARE @HAS_CONTRASENA_VB VARBINARY(MAX)
	
	SET @HASH_NV = CONVERT(NVARCHAR(MAX),@USWA_CONTRASENA_VB);
	SET @HAS_CONTRASENA_VB = HASHBYTES('SHA2_256', @HASH_NV)

	IF EXISTS(
				SELECT USWA_USUARIO_WEP_API_ID_BI
				FROM [weco].[USUARIO_WEP_API]
				WHERE USWA_USUARIO_NOMBRE_VC = @USWA_USUARIO_NOMBRE_VC
				AND USWA_CONTRASENA_ID_VB  = @HAS_CONTRASENA_VB
				AND USWA_TOKEN_PUBLICO_UN = @USWA_PUBLICA_UN
				AND USWA_ESTADO_BT = 1
			)
	BEGIN 
		SELECT '00' AS RESULTADO
		      ,USWA_USUARIO_WEP_API_ID_BI
			  ,USWA_USUARIO_NOMBRE_VC
			  ,USWA_CONTRASENA_ID_VB
			  ,USWA_TOKEN_PUBLICO_UN
			  ,USWA_ESTADO_VC
			  ,USWA_ESTADO_BT
		FROM [weco].[USUARIO_WEP_API]
		WHERE USWA_USUARIO_NOMBRE_VC =@USWA_USUARIO_NOMBRE_VC
		AND USWA_CONTRASENA_ID_VB = @HAS_CONTRASENA_VB
		AND USWA_TOKEN_PUBLICO_UN = @USWA_PUBLICA_UN
		AND USWA_ESTADO_BT = 1
   END
   ELSE
   BEGIN
	SELECT '01' AS RESULTADO
   END

   SET NOCOUNT OFF

END
GO

/****** Object:  StoredProcedure [weco].[USUARIO_POLITICA_Authorize]    Script Date: 29/04/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[USUARIO_POLITICA_Authorize] @USPO_USUA_ID_BI BIGINT
	,@USPO_APP_USUARIO_ID_VC VARCHAR(50)
	,@POLI_NOMBRE_VC VARCHAR(300)
AS
/*****************************************************************************
*Descripcion: Store Procedure para AUTORIZAR AL USUARIO EL USO DEL ENDPOINT  *	
*Fecha Creacion: 31/10/2020												     *
*Fecha Modificacion: 31/10/2020											     *
*Autor: Castillo Tarqui Javier Ramiro 							             *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 	             *
******************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @USPO_POLI_ID_BI BIGINT

	SET @USPO_POLI_ID_BI = (
			SELECT [POLI_POLITICA_ID_BI]
			FROM [weco].[POLITICA]
			WHERE [POLI_NOMBRE_VC] LIKE '%' + lower(@POLI_NOMBRE_VC) + '%'
				AND [POLI_ESTADO_BT] = 1
			)

	IF EXISTS (
			SELECT [USPO_USUARIO_POLITICA_ID_BI]
			FROM [weco].[USUARIO_POLITICA]
			WHERE USPO_USUA_ID_BI = @USPO_USUA_ID_BI
				AND USPO_POLI_ID_BI = @USPO_POLI_ID_BI
				AND USPO_APP_USUARIO_ID_VC = @USPO_APP_USUARIO_ID_VC
				AND USPO_ESTADO_BT = 1
			)
	BEGIN
		SELECT '00' AS RESULTADO
			,USPO_ESTADO_BT
		FROM [weco].[USUARIO_POLITICA]
		WHERE USPO_POLI_ID_BI = @USPO_POLI_ID_BI
	END
	ELSE
	BEGIN
		SELECT '01' AS RESULTADO
	END

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[HISTORIAL_CONSUMO_API_ECOFUTURO_Insertt]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[HISTORIAL_CONSUMO_API_ECOFUTURO_Insert] @HIAE_WEAP_NOMBRE_VC VARCHAR(300)
	,@HIAE_HOST_VC VARCHAR(50)
	,@HIAE_ID_CORRELACION_VC VARCHAR(200)
	,@HIAE_APP_USUARIO_ID_VC VARCHAR(20)
	,@HIAE_SOLICITUD_VC VARCHAR(MAX)
	,@HIAE_FECHA_SOLICITUD_DT DATETIME
	,@HIAE_RESPUESTA_VC VARCHAR(MAX)
	,@HIAE_FECHA_RESPUESTA_DT DATETIME
	,@HIAE_CODIGO_RESPUESTA_VC VARCHAR(3)
AS
/**********************************************************************************
*Descripcion: Store procedure para registrar el consumo de los endpoint  		  *
*Fecha Creacion: 16/03/2020												          *
*Fecha Modificacion: 16/03/2020											          *
*Autor: Castillo Tarqui Javier Ramiro 											  *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					  *
***********************************************************************************/
BEGIN
	SET NOCOUNT ON;

	INSERT INTO weco.HISTORIAL_CONSUMO_API_ECOFUTURO (
		[HIAE_WEAP_NOMBRE_VC]
		,[HIAE_HOST_VC]
		,[HIAE_ID_CORRELACION_VC]
		,[HIAE_APP_USUARIO_ID_VC]
		,[HIAE_SOLICITUD_VC]
		,[HIAE_FECHA_SOLICITUD_DT]
		,[HIAE_RESPUESTA_VC]
		,[HIAE_FECHA_RESPUESTA_DT]
		,[HIAE_CODIGO_RESPUESTA_VC]
		,[HIAE_ESTADO_BT]
		)
	VALUES (
		@HIAE_WEAP_NOMBRE_VC
		,@HIAE_HOST_VC
		,@HIAE_ID_CORRELACION_VC
		,@HIAE_APP_USUARIO_ID_VC
		,@HIAE_SOLICITUD_VC
		,@HIAE_FECHA_SOLICITUD_DT
		,@HIAE_RESPUESTA_VC
		,@HIAE_FECHA_RESPUESTA_DT
		,@HIAE_CODIGO_RESPUESTA_VC
		,1
		)

	SELECT @@IDENTITY AS [@@IDENTITY]

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[CLIENTE_UpdateByVerifyEmmail]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_UpdateByVerifyEmmail] @CLIE_TOKEN_VERIFICACION_EMAIL_VC VARCHAR(max)
				,@CLIE_USUARIO_MODIFICACION_VC VARCHAR(20)
AS
/**********************************************************************************
*Descripcion: Store procedure actualizar el token de verificacion de email		  *
*Fecha Creacion: 30/10/2020												          *
*Fecha Modificacion: 30/10/2020											          *
*Autor: Castillo Tarqui Javier Ramiro 											  *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					  *
***********************************************************************************/
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (
			SELECT [CLIENTE].[CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_TOKEN_VERIFICACION_EMAIL_VC] = @CLIE_TOKEN_VERIFICACION_EMAIL_VC
			)
	BEGIN
		UPDATE [weco].[CLIENTE]
		SET [CLIE_TOKEN_VERIFICACION_EMAIL_VC] = ''
			,[CLIE_FECHA_VERIFICACION_DT] = GETDATE()
			,[CLIE_ESTADO_VERIFICACION_BT] = 1
			,[CLIE_FECHA_MODIFICACION_DT] = GETDATE()
			,[CLIE_USUARIO_MODIFICACION_VC] = @CLIE_USUARIO_MODIFICACION_VC
		WHERE [CLIE_TOKEN_VERIFICACION_EMAIL_VC] = @CLIE_TOKEN_VERIFICACION_EMAIL_VC
	END

	SELECT @@ROWCOUNT AS [@@ROWCOUNT]

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[CLIENTE_UpdateRegistrationComplete]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_UpdateRegistrationComplete] 
				  @CLIE_CORREO_ELECTRONICO_VC varchar(max)
				 ,@CLIE_NOMBRE_COMPLETO_VC varchar(max)
				 ,@CLIE_GENERO_VC varchar(80)
				 ,@CLIE_FECHA_NACIMIENTO_DT datetime
				 ,@CLIE_EDAD_IN int
				 ,@CLIE_DEPARTAMENTO_VC varchar(20)
				 ,@CLIE_CIUDAD_VC varchar(max)
				 ,@CLIE_DIRECCION_VC varchar(max)
				 ,@CLIE_NUMERO_CELULAR_VC varchar(20)
				 ,@CLIE_NUMERO_FIJO_VC varchar(20)
				 ,@CLIE_NIVEL_EDUCACION_VC varchar(100)
				 ,@CLIE_DISCAPACIDAD_BT bit
				 ,@CLIE_TIPO_DISCAPACIDAD_VC varchar(max)
				 ,@CLIE_NOMBRE_REFERENCIA_VC varchar(max)
				 ,@CLIE_CELULAR_REFERENCIA_VC varchar(20)
				 ,@CLIE_USUARIO_MODIFICACION_VC varchar(20)
AS
/**********************************************************************************
*Descripcion: Store procedure actualizar datos una ves echo el preregistro		  *
*Fecha Creacion: 30/10/2020												          *
*Fecha Modificacion: 30/10/2020											          *
*Autor: Castillo Tarqui Javier Ramiro 											  *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					  *
***********************************************************************************/
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (
			SELECT [CLIENTE].[CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1 AND [CLIE_ESTADO_VERIFICACION_BT] = 1
			)
	BEGIN
		UPDATE [weco].[CLIENTE]
		SET  [CLIE_NOMBRE_COMPLETO_VC] = @CLIE_NOMBRE_COMPLETO_VC
			,[CLIE_GENERO_VC] = @CLIE_GENERO_VC
			,[CLIE_FECHA_NACIMIENTO_DT] = @CLIE_FECHA_NACIMIENTO_DT
			,[CLIE_EDAD_IN] = @CLIE_EDAD_IN
			,[CLIE_DEPARTAMENTO_VC] = @CLIE_DEPARTAMENTO_VC
			,[CLIE_CIUDAD_VC] = @CLIE_CIUDAD_VC
			,[CLIE_DIRECCION_VC] = @CLIE_DIRECCION_VC
			,[CLIE_NUMERO_CELULAR_VC] = @CLIE_NUMERO_CELULAR_VC
			,[CLIE_NUMERO_FIJO_VC] = @CLIE_NUMERO_FIJO_VC
			,[CLIE_NIVEL_EDUCACION_VC] = @CLIE_NIVEL_EDUCACION_VC
			,[CLIE_DISCAPACIDAD_BT] = @CLIE_DISCAPACIDAD_BT
			,[CLIE_TIPO_DISCAPACIDAD_VC]= @CLIE_TIPO_DISCAPACIDAD_VC
			,[CLIE_NOMBRE_REFERENCIA_VC] = @CLIE_NOMBRE_REFERENCIA_VC
			,[CLIE_CELULAR_REFERENCIA_VC] = @CLIE_NUMERO_CELULAR_VC
			,[CLIE_USUARIO_MODIFICACION_VC] =  @CLIE_USUARIO_MODIFICACION_VC
			,[CLIE_REGISTRO_COMPLETO_BT] = 1
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1 AND [CLIE_ESTADO_VERIFICACION_BT] = 1
	END

	SELECT @@ROWCOUNT AS [@@ROWCOUNT]

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[CLIENTE_GetClientValitated]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_GetClientValitated] @CLIE_CORREO_ELECTRONICO_VC VARCHAR(max)
	,@CLIE_CLAVE_VC VARCHAR(max)
AS
/**********************************************************************************
*Descripcion: Store procedure para validar el inicio de session del cliente       *
*Fecha Creacion: 30/10/2020												          *
*Fecha Modificacion: 30/10/2020											          *
*Autor: Castillo Tarqui Javier Ramiro 											  *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					  *
***********************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @CLIE_CLIENTE_ID_BI BIGINT;
	DECLARE @MODULO_ACTUAL INT;
	DECLARE @CUENTA_VALIDADA BIT;

	IF EXISTS (
			SELECT [CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
				AND [CLIE_ESTADO_BT] = 1
			)
	BEGIN
		SELECT @CLIE_CLIENTE_ID_BI = [CLIE_CLIENTE_ID_BI]
			,@CUENTA_VALIDADA = [CLIE_ESTADO_VERIFICACION_BT]
		FROM [weco].[CLIENTE]
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
			AND [CLIE_ESTADO_BT] = 1

		IF (@CUENTA_VALIDADA = 1)
		BEGIN
			IF EXISTS (
					SELECT [CLMO_CLIENTE_MODULO_ID_BI]
					FROM [weco].[CLIENTE_MODULO]
					WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
					)
			BEGIN
				SELECT TOP 1 @MODULO_ACTUAL = ([MODU_NUMERO_MODULO_IN] + 1)
				FROM [weco].[CLIENTE_MODULO]
				INNER JOIN [weco].[MODULO] ON [CLMO_MODULO_ID_BI] = [MODU_MODULO_ID_BI]
				WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
				ORDER BY [MODU_NUMERO_MODULO_IN] DESC
			END
			ELSE
			BEGIN
				SET @MODULO_ACTUAL = 1
			END

			SELECT '00' AS [RESULTADO]
				,[CLIE_NOMBRE_COMPLETO_VC]
				,[CLIE_CORREO_ELECTRONICO_VC]
				,[CLIE_ROL_IN]
				,[CLIE_ESTADO_VERIFICACION_BT]
				,[CLIE_REGISTRO_COMPLETO_BT]
				,[CLIE_CLAVE_VC]
				,@MODULO_ACTUAL [MODULO_ACTUAL]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
				AND [CLIE_ESTADO_BT] = 1
		END
		ELSE
		BEGIN
			SELECT '02' AS [RESULTADO]
		END
	END
	ELSE
	BEGIN
		SELECT '01' AS [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO



/****** Object:  StoredProcedure [weco].[TOKEN_ACTUALIZACION_Insert]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[TOKEN_ACTUALIZACION_Insert] @TOAC_TOKEN_VC VARCHAR(max)
				,@TOAC_FECHA_EXPIRACION_TOKEN datetime
				,@TOAC_IP_CREACION_TOKEN_VC VARCHAR(20)
				,@TOAC_USUARIO_CREACION_VC VARCHAR(20)
				,@CLIE_CORREO_ELECTRONICO_VC VARCHAR(max)
AS
/*************************************************************************************************
*Descripcion: Store procedure para insertar un nuevo token de actualizacion para el cliente      *
*Fecha Creacion: 30/10/2020												                         *
*Fecha Modificacion: 30/10/2020											                         *
*Autor: Castillo Tarqui Javier Ramiro 											                 *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                 *
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @CLIE_CLIENTE_ID_BI BIGINT
	DECLARE @TOAC_TOKEN_ACTUALIZACION_ID_BI BIGINT

	SET @CLIE_CLIENTE_ID_BI = (	SELECT [CLIE_CLIENTE_ID_BI]
								FROM [weco].[CLIENTE]
								WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1 ) 

	IF EXISTS (
				SELECT [CLIE_CLIENTE_ID_BI]
				FROM [weco].[CLIENTE]
				WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1
			)
	BEGIN
		INSERT INTO weco.TOKEN_ACTUALIZACION (
			[TOAC_CLIENTE_ID_BI]
			,[TOAC_TOKEN_VC]
			,[TOAC_FECHA_EXPIRACION_TOKEN_DT]
			,[TOAC_ESTADO_EXPIRACION_BT]
			,[TOAC_IP_CREACION_TOKEN_VC]
			,[TOAC_FECHA_REVOCACION_TOKEN_DT]
			,[TOAC_IP_REVOCACION_TOKEN_VC]
			,[TOAC_TOKEN_REEMPLAZADO_TOKEN_VC]
			,[TOAC_ACTIVE_TOKEN_BT]
			,[TOAC_USUARIO_CREACION_VC]
			,[TOAC_FECHA_CREACION_DT]
			,[TOAC_USUARIO_MODIFICACION_VC]
			,[TOAC_FECHA_MODIFICACION_DT]
			,[TOAC_ESTADO_BT]
	  )
		VALUES (
			@CLIE_CLIENTE_ID_BI
			,@TOAC_TOKEN_VC
			,@TOAC_FECHA_EXPIRACION_TOKEN
			,0
			,@TOAC_IP_CREACION_TOKEN_VC
			,null
			,null
			,''
			,1
			,@TOAC_USUARIO_CREACION_VC
			,GETDATE()
			,@TOAC_USUARIO_CREACION_VC
			,GETDATE()
			,1
			)
		SELECT @TOAC_TOKEN_ACTUALIZACION_ID_BI = @@IDENTITY

		SELECT  '00' AS [RESULTADO]
				,[TOAC_TOKEN_VC]
				,[TOAC_FECHA_EXPIRACION_TOKEN_DT]
			FROM [weco].[TOKEN_ACTUALIZACION]
			WHERE [TOAC_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI AND [TOAC_TOKEN_ACTUALIZACION_ID_BI] = @TOAC_TOKEN_ACTUALIZACION_ID_BI
	END
	ELSE
	BEGIN
			SELECT  '01' AS [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[TOKEN_ACTUALIZACION_Delete]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[TOKEN_ACTUALIZACION_Delete] @CLIE_CORREO_ELECTRONICO_VC VARCHAR(max)
					,@DIAS_REVOCAR_TOKEN INT
AS
/*************************************************************************************************
*Descripcion: Store procedure para eliminar token de actualizacion caducados y no activos        *
*Fecha Creacion: 30/10/2020												                         *
*Fecha Modificacion: 30/10/2020											                         *
*Autor: Castillo Tarqui Javier Ramiro 											                 *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                 *
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @CLIE_CLIENTE_ID_BI BIGINT

	SET @CLIE_CLIENTE_ID_BI = (	SELECT [CLIE_CLIENTE_ID_BI]
								FROM [weco].[CLIENTE]
								WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1 ) 

	UPDATE [TOKEN_ACTUALIZACION]
	SET [TOAC_ESTADO_EXPIRACION_BT] = 1
	WHERE GETDATE() >= [TOAC_FECHA_EXPIRACION_TOKEN_DT] AND [TOAC_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI

	UPDATE [TOKEN_ACTUALIZACION]
	SET [TOAC_ACTIVE_TOKEN_BT] = 0
	WHERE [TOAC_FECHA_REVOCACION_TOKEN_DT] IS NOT NULL  AND [TOAC_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI

	UPDATE [TOKEN_ACTUALIZACION]
	SET [TOAC_ESTADO_BT] = 0
	WHERE ([TOAC_ACTIVE_TOKEN_BT] = 0 OR [TOAC_ESTADO_EXPIRACION_BT] = 1 ) AND  DATEADD(DAY,@DIAS_REVOCAR_TOKEN,[TOAC_FECHA_CREACION_DT]) <= GETDATE() AND [TOAC_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI

	SELECT @@ROWCOUNT AS [@@ROWCOUNT]

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[CLIENTE_UpdateClientForgotPassword]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_UpdateClientForgotPassword] @CLIE_CORREO_ELECTRONICO_VC VARCHAR(max)
					,@CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC VARCHAR(MAX)
					,@CLIE_FECHA_EXPIRACION_TOKEN_RESTABLECER_DT DATETIME
AS
/*************************************************************************************************
*Descripcion: Store procedure para eliminar token de actualizacion caducados y no activos        *
*Fecha Creacion: 30/10/2020												                         *
*Fecha Modificacion: 30/10/2020											                         *
*Autor: Castillo Tarqui Javier Ramiro 											                 *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                 *
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(	
				SELECT [CLIE_CLIENTE_ID_BI]
				FROM [weco].[CLIENTE]
				WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1
			 )
	BEGIN
		UPDATE [weco].[CLIENTE]
		SET [CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC] = @CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC
			,[CLIE_FECHA_EXPIRACION_TOKEN_RESTABLECER_DT] = @CLIE_FECHA_EXPIRACION_TOKEN_RESTABLECER_DT
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1

		SELECT '00' [RESULTADO]
				,[CLIE_CORREO_ELECTRONICO_VC]
				,[CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC]
		FROM [weco].[CLIENTE]
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1
	END
	ELSE
	BEGIN
		SELECT '01' [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[CLIENTE_UpdateByEmailForChangePassword]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_UpdateByEmailForChangePassword] @CLIE_CORREO_ELECTRONICO_VC VARCHAR(max)
					,@CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC VARCHAR(MAX)
					,@CLIE_CLAVE_VC VARCHAR(MAX)
AS
/*************************************************************************************************
*Descripcion: Store procedure para eliminar token de actualizacion caducados y no activos        *
*Fecha Creacion: 30/10/2020												                         *
*Fecha Modificacion: 30/10/2020											                         *
*Autor: Castillo Tarqui Javier Ramiro 											                 *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                 *
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(	
				SELECT [CLIE_CLIENTE_ID_BI]
				FROM [weco].[CLIENTE]
				WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1 AND [CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC] = @CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC AND [CLIE_FECHA_EXPIRACION_TOKEN_RESTABLECER_DT] > GETDATE()
			 )
	BEGIN
		UPDATE [weco].[CLIENTE]
		SET [CLIE_CLAVE_VC] = @CLIE_CLAVE_VC
			,[CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC] = ''
			,[CLIE_FECHA_EXPIRACION_TOKEN_RESTABLECER_DT] = NULL
			,[CLIE_FECHA_CAMBIO_CONTRASENA_VC] = GETDATE()
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1 AND [CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC] = @CLIE_RESTABLECER_TOKEN_VERIFICACION_EMAIL_VC AND [CLIE_FECHA_EXPIRACION_TOKEN_RESTABLECER_DT] > GETDATE()

		SELECT '00' [RESULTADO]
				,[CLIE_CORREO_ELECTRONICO_VC]
		FROM [weco].[CLIENTE]
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC AND [CLIE_ESTADO_BT] = 1
	END
	ELSE
	BEGIN
		SELECT '01' [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[MODULO_GetAnswerAndQuestions]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[MODULO_GetAnswerAndQuestions] @MODU_NUMERO_MODULO_IN INT
AS
/***************************************************************************************************
*Descripcion: Store procedure que permite obtenerpreguntas y respuestaas de un determinado modulo  *
*Fecha Creacion: 30/10/2020												                           *
*Fecha Modificacion: 30/10/2020											                           *
*Autor: Castillo Tarqui Javier Ramiro 											                   *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                   *
****************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @ID_PREGUNTA BIGINT
	DECLARE @RESPUESTAS_PREGUNTAS VARCHAR(MAX);
	DECLARE @PREG_MODULO_ID_BI BIGINT

	SET @PREG_MODULO_ID_BI = (
			SELECT [MODU_MODULO_ID_BI]
			FROM [weco].[MODULO]
			WHERE [MODU_NUMERO_MODULO_IN] = @MODU_NUMERO_MODULO_IN
			)

	IF EXISTS (
			SELECT [MODU_MODULO_ID_BI]
			FROM [weco].[MODULO]
			WHERE [MODU_NUMERO_MODULO_IN] = @MODU_NUMERO_MODULO_IN
			)
	BEGIN
		SELECT [PREG_PREGUNTA_ID_BI]
		INTO #Temp
		FROM [weco].[PREGUNTA]
		WHERE [PREG_MODULO_ID_BI] = @PREG_MODULO_ID_BI

		CREATE TABLE #TempRespuestas (
			ID BIGINT
			,RESPUESTAS VARCHAR(MAX)
			);

		WHILE EXISTS (
				SELECT [PREG_PREGUNTA_ID_BI]
				FROM #Temp
				)
		BEGIN
			SELECT TOP 1 @ID_PREGUNTA = [PREG_PREGUNTA_ID_BI]
			FROM #Temp

			SELECT @RESPUESTAS_PREGUNTAS = COALESCE(@RESPUESTAS_PREGUNTAS + '@', '') + (CAST(([RESP_RESPUESTA_ID_BI]) AS VARCHAR(max)) + ':' + [RESP_DETALLE_RESPUESTA_VC] + ':' + CAST(([RESP_ESTADO_RESPUESTA_CORRECTA_BT]) AS VARCHAR(max)))
			FROM [weco].[RESPUESTA]
			WHERE [RESP_PREGUNTA_ID_BI] = @ID_PREGUNTA

			INSERT INTO #TempRespuestas (
				ID
				,RESPUESTAS
				)
			VALUES (
				@ID_PREGUNTA
				,@RESPUESTAS_PREGUNTAS
				)

			SET @RESPUESTAS_PREGUNTAS = NULL

			DELETE
			FROM #Temp
			WHERE [PREG_PREGUNTA_ID_BI] = @ID_PREGUNTA
		END

		SELECT '00' [RESULTADO]
			,[PREG_PREGUNTA_ID_BI]
			,[PREG_TIPO_CAMPO_VC]
			,[PREG_PREGUNTA_VC]
			,[PREG_PREGUNTA_DESCRIPCION_VC]
			,#TempRespuestas.RESPUESTAS [RESPUESTAS]
		FROM [weco].[PREGUNTA]
			,#TempRespuestas
		WHERE [PREG_PREGUNTA_ID_BI] = #TempRespuestas.ID

		DROP TABLE #Temp

		TRUNCATE TABLE #TempRespuestas

		DROP TABLE #TempRespuestas
	END
	ELSE
	BEGIN
		SELECT '01' [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[CLIENTE_RESPUESTA_InsertClientAnswerValidate]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_RESPUESTA_InsertClientAnswerValidate] @CLIE_CORREO_ELECTRONICO_VC varchar(max)
,@REUS_RESPUESTA_ID_BI BIGINT
,@RESP_PREGUNTA_ID_BI BIGINT
,@RESP_ESTADO_RESPUESTA_CORRECTA_BT BIT
,@REUS_PUNTAJE_OBTENIDO_DC DECIMAL(16,2)
,@REUS_USUARIO_CREACION_VC VARCHAR(20)
AS
/***************************************************************************************************
*Descripcion: Store procedure que permite REGISTRAR LAS RESPUESTAS DE LOS CLIENTES					 *
*Fecha Creacion: 30/10/2020												                           *
*Fecha Modificacion: 30/10/2020											                           *
*Autor: Castillo Tarqui Javier Ramiro 											                   *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                   *
****************************************************************************************************/
BEGIN
	SET NOCOUNT ON;
	DECLARE @PUNTAJE DECIMAL(16,2)
	DECLARE @REUS_CLIENTE_ID_BI BIGINT
	DECLARE @RESPUESTA_ID BIGINT

	set @REUS_CLIENTE_ID_BI = (SELECT [CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC )
	set @RESPUESTA_ID = ( SELECT [RESP_RESPUESTA_ID_BI]
							FROM [weco].[RESPUESTA]
							WHERE [RESP_RESPUESTA_ID_BI] = @REUS_RESPUESTA_ID_BI AND [RESP_PREGUNTA_ID_BI] = @RESP_PREGUNTA_ID_BI
						)

	IF @REUS_CLIENTE_ID_BI IS NOT NULL AND @RESPUESTA_ID IS NOT NULL
	BEGIN
		IF EXISTS 
		(
			SELECT [RESP_RESPUESTA_ID_BI]
			FROM [weco].[RESPUESTA]
			WHERE [RESP_RESPUESTA_ID_BI] = @REUS_RESPUESTA_ID_BI AND [RESP_PREGUNTA_ID_BI] = @RESP_PREGUNTA_ID_BI AND [RESP_ESTADO_RESPUESTA_CORRECTA_BT] = @RESP_ESTADO_RESPUESTA_CORRECTA_BT
		)
		BEGIN
			SET @PUNTAJE = @REUS_PUNTAJE_OBTENIDO_DC
		END
		ELSE
		BEGIN
			SET @PUNTAJE = 0
		END

		INSERT INTO [weco].[RESPUESTA_CLIENTE] (
				[REUS_RESPUESTA_ID_BI]
				,[REUS_CLIENTE_ID_BI]
				,[REUS_PUNTAJE_OBTENIDO_DC]
				,[REUS_USUARIO_CREACION_VC]
				,[REUS_FECHA_CREACION_DT]
				,[REUS_USUARIO_MODIFICACION_VC]
				,[REUS_FECHA_MODIFICACION_DT]
				,[REUS_ESTADO_BT]
		) 
		VALUES 
		(
			@REUS_RESPUESTA_ID_BI
			,@REUS_CLIENTE_ID_BI
			,@PUNTAJE
			,@REUS_USUARIO_CREACION_VC
			,GETDATE()
			,@REUS_USUARIO_CREACION_VC
			,GETDATE()
			,1
		)
	SELECT @@IDENTITY AS [@@IDENTITY]

	END
	ELSE
	BEGIN
		SELECT '01' [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[CLIENTE_RESPUESTA_GetWinners]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_RESPUESTA_GetWinners] @CANTIDAD_GANADORES INT
	,@SCORE DECIMAL(16, 2)
AS
/***************************************************************************************************
*Descripcion: Store procedure que permite REGISTRAR LAS RESPUESTAS DE LOS CLIENTES					 *
*Fecha Creacion: 30/10/2020												                           *
*Fecha Modificacion: 30/10/2020											                           *
*Autor: Castillo Tarqui Javier Ramiro 											                   *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                   *
****************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @ID_CLIENTE BIGINT;
	DECLARE @ULTIMA_FECHA DATETIME;
	DECLARE @CONTADOR_CLIENTE INT;
	DECLARE @REGISTRO_COMPLETO BIT;
	DECLARE @PUNTAJE_EXTRA DECIMAL(16, 2);

	SELECT @CONTADOR_CLIENTE = COUNT(*)
	FROM [weco].[RESPUESTA_CLIENTE]

	IF (@CONTADOR_CLIENTE > 0)
	BEGIN
		CREATE TABLE #TempClienteUltimoFecha (
			ID BIGINT
			,ULTIMA_FECHA DATETIME
			,REGISTRO_COMPLETO BIT
			,PUNTAJE_EXTRA DECIMAL(16, 2)
			);

		SELECT [REUS_CLIENTE_ID_BI]
			,SUM([REUS_PUNTAJE_OBTENIDO_DC]) [PUNTAJE]
		INTO #Temp
		FROM [weco].[RESPUESTA_CLIENTE]
		GROUP BY [REUS_CLIENTE_ID_BI]
		ORDER BY PUNTAJE DESC

		WHILE EXISTS (
				SELECT [REUS_CLIENTE_ID_BI]
				FROM #Temp
				)
		BEGIN
			SELECT TOP 1 @ID_CLIENTE = [REUS_CLIENTE_ID_BI]
			FROM #Temp

			SELECT TOP 1 @ULTIMA_FECHA = [REUS_FECHA_CREACION_DT]
				,@REGISTRO_COMPLETO = [CLIE_REGISTRO_COMPLETO_BT]
			FROM [weco].[RESPUESTA_CLIENTE]
			INNER JOIN [weco].[CLIENTE] ON [CLIE_CLIENTE_ID_BI] = [REUS_CLIENTE_ID_BI]
			WHERE [REUS_CLIENTE_ID_BI] = @ID_CLIENTE
			ORDER BY [REUS_FECHA_CREACION_DT] DESC

			IF (@REGISTRO_COMPLETO = 1)
			BEGIN
				SET @PUNTAJE_EXTRA = @SCORE
			END
			ELSE
			BEGIN
				SET @PUNTAJE_EXTRA = 0
			END

			INSERT INTO #TempClienteUltimoFecha (
				ID
				,ULTIMA_FECHA
				,REGISTRO_COMPLETO
				,PUNTAJE_EXTRA
				)
			VALUES (
				@ID_CLIENTE
				,@ULTIMA_FECHA
				,@REGISTRO_COMPLETO
				,@PUNTAJE_EXTRA
				)

			SET @ULTIMA_FECHA = NULL
			SET @REGISTRO_COMPLETO = NULL
			SET @PUNTAJE_EXTRA = NULL

			DELETE
			FROM #Temp
			WHERE [REUS_CLIENTE_ID_BI] = @ID_CLIENTE
		END

		SELECT TOP (@CANTIDAD_GANADORES) ROW_NUMBER() OVER(ORDER BY (GANADORES.PUNTAJE + #TempClienteUltimoFecha.PUNTAJE_EXTRA) DESC,#TempClienteUltimoFecha.ULTIMA_FECHA) [POSITION]
			,[CLIE_CORREO_ELECTRONICO_VC]
			,[CLIE_REGISTRO_COMPLETO_BT]
			,GANADORES.PUNTAJE [PUNTAJE_OBTENIDO_QUIZ]
			,#TempClienteUltimoFecha.PUNTAJE_EXTRA [PUNTAJE_EXTRA]
			,GANADORES.PUNTAJE + #TempClienteUltimoFecha.PUNTAJE_EXTRA [TOTAL_PUNTAJE]
			,#TempClienteUltimoFecha.ULTIMA_FECHA [FECHA_FINALIZACION_PRUEBA]
		FROM (
			SELECT [REUS_CLIENTE_ID_BI]
				,SUM([REUS_PUNTAJE_OBTENIDO_DC]) [PUNTAJE]
			FROM [weco].[RESPUESTA_CLIENTE]
			GROUP BY [REUS_CLIENTE_ID_BI]
			) GANADORES
			,[CLIENTE]
			,#TempClienteUltimoFecha
		WHERE [CLIE_CLIENTE_ID_BI] = GANADORES.REUS_CLIENTE_ID_BI
			AND #TempClienteUltimoFecha.ID = [CLIE_CLIENTE_ID_BI]

		DROP TABLE #Temp

		TRUNCATE TABLE #TempClienteUltimoFecha

		DROP TABLE #TempClienteUltimoFecha
	END
	ELSE
	BEGIN
		SELECT '01' [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO


/****** Object:  StoredProcedure [weco].[TOKEN_ACTUALIZACION_RefreshTokenUpdate]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[TOKEN_ACTUALIZACION_RefreshTokenUpdate] @CLIE_CORREO_ELECTRONICO_VC VARCHAR(max)
	,@TOAC_IP_REVOCACION_TOKEN_VC VARCHAR(20)
	,@TOAC_TOKEN_VC VARCHAR(MAX)
	,@TOAC_TOKEN_REEMPLAZADO_TOKEN_VC VARCHAR(MAX)
AS
/*************************************************************************************************
*Descripcion: Store procedure actualizar el token de actualizacion						         *
*Fecha Creacion: 30/10/2020												                         *
*Fecha Modificacion: 30/10/2020											                         *
*Autor: Castillo Tarqui Javier Ramiro 											                 *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                 *
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @CLIE_CLIENTE_ID_BI BIGINT

	SET @CLIE_CLIENTE_ID_BI = (
			SELECT [CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
				AND [CLIE_ESTADO_BT] = 1
			)

	IF EXISTS (
			SELECT [TOAC_TOKEN_ACTUALIZACION_ID_BI]
			FROM [weco].[TOKEN_ACTUALIZACION]
			WHERE [TOAC_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
				AND [TOAC_ESTADO_BT] = 1
				AND [TOAC_TOKEN_VC] = @TOAC_TOKEN_VC
				AND [TOAC_ACTIVE_TOKEN_BT] = 1
			)
	BEGIN
		UPDATE [weco].[TOKEN_ACTUALIZACION]
		SET [TOAC_FECHA_REVOCACION_TOKEN_DT] = GETDATE()
			,[TOAC_IP_REVOCACION_TOKEN_VC] = @TOAC_IP_REVOCACION_TOKEN_VC
			,[TOAC_TOKEN_REEMPLAZADO_TOKEN_VC] = @TOAC_TOKEN_REEMPLAZADO_TOKEN_VC
		WHERE [TOAC_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
			AND [TOAC_ESTADO_BT] = 1
			AND [TOAC_TOKEN_VC] = @TOAC_TOKEN_VC
			AND [TOAC_ACTIVE_TOKEN_BT] = 1

		SELECT '00' [RESULTADO]
			,[CLIE_NOMBRE_COMPLETO_VC]
			,[CLIE_CORREO_ELECTRONICO_VC]
			,[CLIENTE].[CLIE_ROL_IN]
			,[CLIENTE].[CLIE_ESTADO_VERIFICACION_BT]
			,[CLIENTE].[CLIE_REGISTRO_COMPLETO_BT]
		FROM [weco].[CLIENTE]
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
			AND [CLIE_ESTADO_BT] = 1
	END
	ELSE
	BEGIN
		SELECT '01' [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[TOKEN_ACTUALIZACION_RevokeToken]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[TOKEN_ACTUALIZACION_RevokeToken]
	@TOAC_TOKEN_VC VARCHAR(MAX)
	,@TOAC_IP_REVOCACION_TOKEN_VC VARCHAR(20)
AS
/*************************************************************************************************
*Descripcion: Store procedure actualizar el token de actualizacion						         *
*Fecha Creacion: 30/10/2020												                         *
*Fecha Modificacion: 30/10/2020											                         *
*Autor: Castillo Tarqui Javier Ramiro 											                 *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                 *
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (
			SELECT [TOAC_TOKEN_ACTUALIZACION_ID_BI]
			FROM [weco].[TOKEN_ACTUALIZACION]
			WHERE 
				[TOAC_ESTADO_BT] = 1
				AND [TOAC_TOKEN_VC] = @TOAC_TOKEN_VC
				AND [TOAC_ACTIVE_TOKEN_BT] = 1
			)
	BEGIN
		UPDATE [weco].[TOKEN_ACTUALIZACION]
		SET [TOAC_FECHA_REVOCACION_TOKEN_DT] = GETDATE()
			,[TOAC_IP_REVOCACION_TOKEN_VC] = @TOAC_IP_REVOCACION_TOKEN_VC
			,[TOAC_ACTIVE_TOKEN_BT] = 0
		WHERE 
			[TOAC_ESTADO_BT] = 1
			AND [TOAC_TOKEN_VC] = @TOAC_TOKEN_VC
	END

	SELECT @@ROWCOUNT [@@ROWCOUNT]

	SET NOCOUNT OFF
END
GO

/****** Object:  StoredProcedure [weco].[CLIENTE_MODULO_InsertClientModuleAnswers]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_MODULO_InsertClientModuleAnswers] @CLIE_CORREO_ELECTRONICO_VC VARCHAR(MAX)
	,@MODU_NUMERO_MODULO_IN INT
	,@CLIE_USUARIO_CREACION_VC VARCHAR(20)
AS
/*************************************************************************************************
*Descripcion: Store procedure para registrar las respuestas del modulo de un cliente             *
*Fecha Creacion: 30/10/2020												                         *
*Fecha Modificacion: 30/10/2020											                         *
*Autor: Castillo Tarqui Javier Ramiro 											                 *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                 *
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @CLIE_CLIENTE_ID_BI BIGINT
	DECLARE @MODU_MODULO_ID_BI BIGINT

	SET @CLIE_CLIENTE_ID_BI = (
			SELECT [CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
				AND [CLIE_ESTADO_BT] = 1
			)
	SET @MODU_MODULO_ID_BI = (
			SELECT [MODU_MODULO_ID_BI]
			FROM [weco].[MODULO]
			WHERE [MODU_NUMERO_MODULO_IN] = @MODU_NUMERO_MODULO_IN
			)

	IF EXISTS (
			SELECT [MODU_MODULO_ID_BI]
			FROM [weco].[MODULO]
			WHERE [MODU_NUMERO_MODULO_IN] = @MODU_NUMERO_MODULO_IN
			)
	BEGIN
		DECLARE @BIGINTDATA BIGINT = cast(cast(reverse(NEWID()) AS VARBINARY(max)) AS BIGINT)
		DECLARE @CHARSET VARCHAR(70) = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		DECLARE @CBASE INT = LEN(@CHARSET)
		DECLARE @SUID VARCHAR(22) = ''
		DECLARE @X INT

		WHILE (@BIGINTDATA <> 0)
		BEGIN
			SET @X = CAST(@BIGINTDATA % @CBASE AS INT) + 1
			SET @BIGINTDATA = @BIGINTDATA / @CBASE
			SET @SUID = SUBSTRING(@CHARSET, @X, 1) + @SUID;
		END

		IF NOT EXISTS (
				SELECT [CLMO_CLIENTE_MODULO_ID_BI]
				FROM [weco].[CLIENTE_MODULO]
				WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
					AND [CLMO_MODULO_ID_BI] = @MODU_MODULO_ID_BI
				)
		BEGIN
			IF NOT EXISTS (
					SELECT [CLMO_CLIENTE_MODULO_ID_BI]
					FROM [CLIENTE_MODULO]
					WHERE [CLMO_CUPON_VC] = @SUID
					)
			BEGIN
				INSERT INTO [weco].[CLIENTE_MODULO] (
					[CLMO_MODULO_ID_BI]
					,[CLMO_CLIENTE_ID_BI]
					,[CLMO_CUPON_VC]
					,[CLMO_USUARIO_CREACION_VC]
					,[CLMO_FECHA_CREACION_DT]
					,[CLMO_USUARIO_MODIFICACION_VC]
					,[CLMO_FECHA_MODIFICACION_DT]
					,[CLMO_ESTADO_BT]
					)
				VALUES (
					@MODU_MODULO_ID_BI
					,@CLIE_CLIENTE_ID_BI
					,UPPER(@SUID)
					,@CLIE_USUARIO_CREACION_VC
					,GETDATE()
					,@CLIE_USUARIO_CREACION_VC
					,GETDATE()
					,1
					)
				SELECT '00' [RESULTADO]
					,[CLMO_CUPON_VC]
					,[MODU_NUMERO_MODULO_IN]
				FROM [weco].[CLIENTE_MODULO]
				JOIN [weco].[MODULO] ON [CLMO_MODULO_ID_BI] = [MODU_MODULO_ID_BI]
				WHERE [CLMO_CLIENTE_MODULO_ID_BI] = @@IDENTITY
			END
			ELSE
			BEGIN
				SELECT '01' [RESULTADO]
			END
		END
		ELSE
		BEGIN
			SELECT '02' [RESULTADO]
		END
	END
	ELSE
	BEGIN
		SELECT '03' AS [RESULTADO]
	END


	SET NOCOUNT OFF
END
GO





/****** Object:  StoredProcedure [weco].[CLIENTE_GetInformationClient]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_GetInformationClient] @CLIE_CORREO_ELECTRONICO_VC VARCHAR(MAX)
AS
/*************************************************************************************************
*Descripcion: Store procedure para registrar las respuestas del modulo de un cliente             *
*Fecha Creacion: 30/10/2020												                         *
*Fecha Modificacion: 30/10/2020											                         *
*Autor: Castillo Tarqui Javier Ramiro 											                 *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                 *
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @CLIE_CLIENTE_ID_BI BIGINT
	DECLARE @MODULO_ACTUAL INT
	DECLARE @MODULOS_TERMINADOS VARCHAR(MAX)

	SET @CLIE_CLIENTE_ID_BI = (
			SELECT [CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
				AND [CLIE_ESTADO_BT] = 1
			)

	IF EXISTS (
			SELECT [CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
				AND [CLIE_ESTADO_BT] = 1
			)
	BEGIN
		IF EXISTS (
				SELECT [CLMO_CLIENTE_MODULO_ID_BI]
				FROM [weco].[CLIENTE_MODULO]
				WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
				)
		BEGIN
			SELECT TOP 1 @MODULO_ACTUAL = ([MODU_NUMERO_MODULO_IN] + 1)
			FROM [weco].[CLIENTE_MODULO]
			INNER JOIN [weco].[MODULO] ON [CLMO_MODULO_ID_BI] = [MODU_MODULO_ID_BI]
			WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
			ORDER BY [MODU_NUMERO_MODULO_IN] DESC

			SELECT @MODULOS_TERMINADOS = COALESCE(@MODULOS_TERMINADOS + '@', '') + CAST(([MODU_NUMERO_MODULO_IN]) AS VARCHAR(max)) + ':' + CAST(([CLMO_CUPON_VC]) AS VARCHAR(max))
			FROM [weco].[CLIENTE_MODULO]
			INNER JOIN [weco].[MODULO] ON [CLMO_MODULO_ID_BI] = [MODU_MODULO_ID_BI]
			WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
		END
		ELSE
		BEGIN
			SET @MODULO_ACTUAL = 1
			SET @MODULOS_TERMINADOS = ''
		END

		SELECT '00' [RESULTADO]
			,[CLIE_CORREO_ELECTRONICO_VC]
			,[CLIE_CI_VC]
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
			,[CLIE_ROL_IN]
			,[CLIE_REGISTRO_COMPLETO_BT]
			,@MODULO_ACTUAL [MODULO_ACTUAL]
			,@MODULOS_TERMINADOS [MODULOS_TERMINADOS]
		FROM [weco].[CLIENTE]
		WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
			AND [CLIE_ESTADO_BT] = 1
	END
	ELSE
	BEGIN
		SELECT '01' [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO


/****** Object:  StoredProcedure [weco].[CLIENTE_GetWinnerbyModule]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_GetWinnerbyModule]
AS
/*************************************************************************************************
*Descripcion: Store procedure para obtener los datos de todos los clientes registrados           *
*Fecha Creacion: 30/10/2020												                         *
*Fecha Modificacion: 30/10/2020											                         *
*Autor: Castillo Tarqui Javier Ramiro 											                 *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro 					                 *
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @NUMERO_CLIENTES INT
	DECLARE @CLIE_CLIENTE_ID_BI BIGINT
	DECLARE @MODULO_ACTUAL INT
	DECLARE @MODULOS_TERMINADOS VARCHAR(MAX)
	DECLARE @NUMERO_MODULOS_TERMINADOS INT

	SELECT @NUMERO_CLIENTES = COUNT(*)
	FROM [weco].[CLIENTE]
	WHERE [CLIE_ESTADO_BT] = 1

	IF (@NUMERO_CLIENTES > 0)
	BEGIN
		CREATE TABLE #TempClienteModulo (
			ID_CLIENTE BIGINT
			,MODULO_ACTUAL INT
			,MODULOS_TERMINADOS VARCHAR(MAX)
			,NUMERO_MODULOS_TERMINADOS INT
			);

		SELECT [CLIE_CLIENTE_ID_BI]
		INTO #TempClientes
		FROM [weco].[CLIENTE]
		WHERE [CLIE_ESTADO_BT] = 1

		WHILE EXISTS (
				SELECT [CLIE_CLIENTE_ID_BI]
				FROM #TempClientes
				)
		BEGIN
			SELECT TOP 1 @CLIE_CLIENTE_ID_BI = [CLIE_CLIENTE_ID_BI]
			FROM #TempClientes

			IF EXISTS (
					SELECT [CLMO_CLIENTE_MODULO_ID_BI]
					FROM [weco].[CLIENTE_MODULO]
					WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
					)
			BEGIN
				SELECT TOP 1 @MODULO_ACTUAL = ([MODU_NUMERO_MODULO_IN] + 1)
				FROM [weco].[CLIENTE_MODULO]
				INNER JOIN [weco].[MODULO] ON [CLMO_MODULO_ID_BI] = [MODU_MODULO_ID_BI]
				WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
				ORDER BY [MODU_NUMERO_MODULO_IN] DESC

				SELECT @MODULOS_TERMINADOS = COALESCE(@MODULOS_TERMINADOS + '@', '') + CAST(([MODU_NUMERO_MODULO_IN]) AS VARCHAR(max)) + ':' + CAST(([CLMO_CUPON_VC]) AS VARCHAR(max))
				FROM [weco].[CLIENTE_MODULO]
				INNER JOIN [weco].[MODULO] ON [CLMO_MODULO_ID_BI] = [MODU_MODULO_ID_BI]
				WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI

				SELECT @NUMERO_MODULOS_TERMINADOS = COUNT(*)
				FROM [weco].[CLIENTE_MODULO]
				WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
				GROUP BY [CLMO_CLIENTE_ID_BI]
			END
			ELSE
			BEGIN
				SET @MODULO_ACTUAL = 1
				SET @MODULOS_TERMINADOS = ''
				SET @NUMERO_MODULOS_TERMINADOS = 0
			END

			INSERT INTO #TempClienteModulo (
				ID_CLIENTE
				,MODULO_ACTUAL
				,MODULOS_TERMINADOS
				,NUMERO_MODULOS_TERMINADOS
				)
			VALUES (
				@CLIE_CLIENTE_ID_BI
				,@MODULO_ACTUAL
				,@MODULOS_TERMINADOS
				,@NUMERO_MODULOS_TERMINADOS
				)

			SET @MODULO_ACTUAL = NULL
			SET @MODULOS_TERMINADOS = NULL
			SET @NUMERO_MODULOS_TERMINADOS = NULL

			DELETE
			FROM #TempClientes
			WHERE [CLIE_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
		END

		SELECT '00' [RESULTADO]
			,ROW_NUMBER() OVER (
				ORDER BY (#TempClienteModulo.NUMERO_MODULOS_TERMINADOS) DESC
				) [POSITION]
			,[CLIE_CORREO_ELECTRONICO_VC]
			,[CLIE_CI_VC]
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
			,[CLIE_ROL_IN]
			,[CLIE_REGISTRO_COMPLETO_BT]
			,#TempClienteModulo.MODULO_ACTUAL [MODULO_ACTUAL]
			,#TempClienteModulo.NUMERO_MODULOS_TERMINADOS [NUMERO_MODULOS_TERMINADOS]
			,#TempClienteModulo.MODULOS_TERMINADOS [MODULOS_TERMINADOS]
		FROM [weco].[CLIENTE]
			,#TempClienteModulo
		WHERE [CLIE_ESTADO_BT] = 1
			AND [CLIE_CLIENTE_ID_BI] = #TempClienteModulo.ID_CLIENTE

		DROP TABLE #TempClientes

		TRUNCATE TABLE #TempClienteModulo

		DROP TABLE #TempClienteModulo
	END
	ELSE
	BEGIN
		SELECT '01' [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO



/****** Object:  StoredProcedure [weco].[CLIENTE_MODULO_GetModuleEndDate]    Script Date: 30/10/2020 14:07:46 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [weco].[CLIENTE_MODULO_GetModuleEndDate] @CLIE_CORREO_ELECTRONICO_VC VARCHAR(max)
AS
/**************************************************************************************************************
*Descripcion: Store procedure para obtener la fecha de finalizacion de todos los modulos para un participante *														
*Fecha Creacion: 25/12/2020												                                      *
*Fecha Modificacion: 25/12/2020											                                      *
*Autor: Castillo Tarqui Javier Ramiro									                                      *
*Versión: Alfa|Beta Modificado Castillo Tarqui Javier Ramiro			                                      *
**************************************************************************************************************/
BEGIN
	SET NOCOUNT ON;

	DECLARE @CLIE_CLIENTE_ID_BI BIGINT;
	DECLARE @LANGUAGE VARCHAR(max);

	IF EXISTS (
			SELECT [CLIE_CLIENTE_ID_BI]
			FROM [weco].[CLIENTE]
			WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
			)
	BEGIN
		SET @CLIE_CLIENTE_ID_BI = (
				SELECT [CLIE_CLIENTE_ID_BI]
				FROM [weco].[CLIENTE]
				WHERE [CLIE_CORREO_ELECTRONICO_VC] = @CLIE_CORREO_ELECTRONICO_VC
				)
		SET @LANGUAGE = (
				SELECT @@LANGUAGE
				);

		IF @LANGUAGE = 'Español'
			OR @LANGUAGE = 'Spanish'
		BEGIN
			SELECT DATEPART(DAY, [CLMO_FECHA_CREACION_DT]) [DIA]
				,DATENAME(MM, [CLMO_FECHA_CREACION_DT]) [MES]
			FROM [weco].[CLIENTE_MODULO]
			JOIN [weco].[MODULO] ON [CLMO_MODULO_ID_BI] = [MODU_MODULO_ID_BI]
			WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
				AND MODU_NUMERO_MODULO_IN = 5
		END
		ELSE
		BEGIN
			SET LANGUAGE Spanish

			SELECT '00' [RESULTADO]
				,DATEPART(DAY, [CLMO_FECHA_CREACION_DT]) [DIA]
				,DATENAME(MM, [CLMO_FECHA_CREACION_DT]) [MES]
			FROM [weco].[CLIENTE_MODULO]
			JOIN [weco].[MODULO] ON [CLMO_MODULO_ID_BI] = [MODU_MODULO_ID_BI]
			WHERE [CLMO_CLIENTE_ID_BI] = @CLIE_CLIENTE_ID_BI
				AND MODU_NUMERO_MODULO_IN = 5

			SET LANGUAGE us_english
		END
	END
	ELSE
	BEGIN
		SELECT '01' [RESULTADO]
	END

	SET NOCOUNT OFF
END
GO

