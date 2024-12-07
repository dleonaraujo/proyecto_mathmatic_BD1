USE BD_Mathmatic_01
GO

CREATE VIEW vista_cursos_estudiantes AS
SELECT 
    E.Nombres + ' ' + E.ApellidoPaterno + ' ' + E.ApellidoMaterno AS estudiante,
    C.NombreCurso AS curso,
    COUNT(S.IdCurso) AS solicitudes,
    P.Nombres + ' ' + P.ApellidoPaterno + ' ' + P.ApellidoMaterno AS profesor
FROM 
    Solicita S
INNER JOIN 
    Estudiantes E ON S.IdEstudiante = E.IdEstudiante
INNER JOIN 
    Cursos C ON S.IdCurso = C.IdCurso
INNER JOIN 
    Profesores P ON C.IdProfesor = P.IdProfesor
WHERE 
    C.Precio > 20
GROUP BY 
    E.Nombres, E.ApellidoPaterno, E.ApellidoMaterno, C.NombreCurso, P.Nombres, P.ApellidoPaterno, P.ApellidoMaterno
HAVING 
    COUNT(S.IdCurso) >= 1
GO

CREATE VIEW vw_estudiantes AS
SELECT
	IdEstudiante AS id,
	Nombres + ' ' + ApellidoPaterno + ' ' + ApellidoMaterno AS nombre,
	TelefonoEstudiante AS telefono,
	FechaNacimiento AS fecha,
	Email AS email,
	Direccion AS direccion
FROM Estudiantes
GO

CREATE PROCEDURE RegistrarEstudiante
    @Nombres NVARCHAR(100),
    @ApellidoPaterno NVARCHAR(100),
    @ApellidoMaterno NVARCHAR(100),
    @Telefono NVARCHAR(15),
    @FechaNacimiento DATE,
    @Email NVARCHAR(100),
    @Direccion NVARCHAR(200)
AS
BEGIN
    INSERT INTO Estudiantes (Nombres, ApellidoPaterno, ApellidoMaterno, TelefonoEstudiante, FechaNacimiento, Email, Direccion)
    VALUES (@Nombres, @ApellidoPaterno, @ApellidoMaterno, @Telefono, @FechaNacimiento, @Email, @Direccion);
END;
GO

CREATE FUNCTION ObtenerEdad (@FechaNacimiento DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(YEAR, @FechaNacimiento, GETDATE()) - 
           CASE WHEN MONTH(@FechaNacimiento) > MONTH(GETDATE()) OR 
                     (MONTH(@FechaNacimiento) = MONTH(GETDATE()) AND DAY(@FechaNacimiento) > DAY(GETDATE()))
                THEN 1 
                ELSE 0 
           END;
END;