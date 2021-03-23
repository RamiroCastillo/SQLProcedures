USE [BD_API_ECOFUTURO]
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
		   'Indica si el siguiente enunciado en correcto o incorrecto:'
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
		   'Señala si la siguiente afirmación es verdadera o falsa:'
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
		   'Verdadero'
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
		   'Falso'
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
		   'Billetera Móvil'
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
