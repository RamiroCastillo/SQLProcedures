USE [master]
GO
/*
Modificar el Password el cual debe ser proporcionado por CCAL
*/
CREATE LOGIN [UsrBD_API_ECOFUTURO] WITH PASSWORD='U77iM0V8Fb2x8IgBNeR8iHwH14xK+1XVuIuU1Gcf6dw=', DEFAULT_DATABASE=[BD_API_ECOFUTURO], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [UsrBD_API_ECOFUTURO] DISABLE
GO

USE [BD_API_ECOFUTURO]
GO

CREATE USER [UsrBD_API_ECOFUTURO] FOR LOGIN [UsrBD_API_ECOFUTURO] WITH DEFAULT_SCHEMA=[weco]
GO


ALTER LOGIN [UsrBD_API_ECOFUTURO] ENABLE
GO
