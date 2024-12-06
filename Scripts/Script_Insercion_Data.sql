use BD_Mathmatic_01
go
--DisponibilidadCurso
INSERT INTO DisponibilidadCurso (Disponibilidad)
VALUES (1),(0); -- 1 indica que los cursos est�n disponibles (true)
-- Insertar datos en la tabla Profesores
INSERT INTO Profesores (Nombres, ApellidoPaterno, ApellidoMaterno, TelefonoProfesor)
VALUES
('Juan', 'Perez', 'Lopez', '951234567'),
('Maria', 'Gonzalez', 'Diaz', '952345678'),
('Carlos', 'Ramirez', 'Torres', '953456789'),
('Ana', 'Martinez', 'Hernandez', '954567890'),
('Luis', 'Garcia', 'Castro', '955678901'),
('Sofia', 'Lopez', 'Morales', '956789012'),
('Miguel', 'Hernandez', 'Vargas', '957890123'),
('Laura', 'Torres', 'Cruz', '958901234'),
('Daniel', 'Sanchez', 'Gutierrez', '959012345'),
('Lucia', 'Cruz', 'Rojas', '951123456'),
('Fernando', 'Castillo', 'Martinez', '952234567'),
('Gabriela', 'Vargas', 'Soto', '953345678'),
('Jose', 'Flores', 'Perez', '954456789'),
('Paola', 'Mendoza', 'Ramirez', '955567890'),
('Antonio', 'Ortega', 'Ruiz', '956678901'),
('Veronica', 'Silva', 'Jimenez', '957789012'),
('Jorge', 'Morales', 'Fernandez', '958890123'),
('Patricia', 'Gutierrez', 'Vega', '959901234'),
('Diego', 'Rojas', 'Campos', '951234567'),
('Carolina', 'Reyes', 'Villanueva', '952345678');


-- Insertar datos en la tabla Cursos
INSERT INTO Cursos (NombreCurso, Precio, IdDisponibilidadCurso, IdProfesor)
VALUES
('Matematica Basica', 20.00, 1, 1),
('Biologia', 25.00, 1, 2),
('Quimica', 30.00, 1, 3),
('Fisica', 35.00, 1, 4),
('Calculo', 20.00, 1, 5),
('Termodinamica', 25.00, 1, 6),
('Estatica', 30.00, 1, 7),
('Algebra', 35.00, 1, 8),
('Razonamiento Matematico', 20.00, 1, 9),
('Analisis de Logaritmos', 25.00, 1, 10),
('Python', 30.00, 1, 11),
('C++', 35.00, 1, 12),
('JavaScript', 20.00, 1, 13),
('Trigonometria', 25.00, 1, 14),
('Programacion Orientada a Objetos', 30.00, 1, 15),
('Bases de Datos', 35.00, 1, 16),
('Redes de Computadoras', 20.00, 1, 17),
('Ingenieria de Software', 25.00, 1, 18),
('Geometria Analitica', 30.00, 1, 19),
('Estadistica y Probabilidades', 35.00, 1, 20);
GO

INSERT INTO DisponibilidadSalon (Disponibilidad)
VALUES (1),(0); -- 1 indica que los cursos est�n disponibles (true)
INSERT INTO DisponibilidadHorario (Disponibilidad)
VALUES (1),(0); -- 1 indica que los cursos est�n disponibles (true)
INSERT INTO Dia (NombreDia)
VALUES
('Lunes'),('Martes'),('Miercoles'),('Jueves'),('Viernes'),('Sabado'),('Domingo'); -- 1 indica que los cursos est�n disponibles (true)--Insertar Horario
INSERT INTO Horario (Descripcion, HoraInicio, HoraFin, IdDia, IdDisponibilidad)
VALUES
('Primera hora: de 8 a 9', '08:00:00', '09:00:00', 2, 1),
('Segunda hora: de 9 a 10', '09:00:00', '10:00:00', 2, 1),
('Tercera hora: de 10 a 11', '10:00:00', '11:00:00', 2, 1),
('Cuarta hora: de 11 a 12', '11:00:00', '12:00:00', 2, 1),
('Quinta hora: de 12 a 13', '12:00:00', '13:00:00', 2, 1),
('Sexta hora: de 13 a 14', '13:00:00', '14:00:00', 2, 1),
('S�ptima hora: de 14 a 15', '14:00:00', '15:00:00', 2, 1),
('Octava hora: de 15 a 16', '15:00:00', '16:00:00', 2, 1),
('Novena hora: de 16 a 17', '16:00:00', '17:00:00', 2, 1),
('D�cima hora: de 17 a 18', '17:00:00', '18:00:00', 2, 1),
('Und�cima hora: de 18 a 19', '18:00:00', '19:00:00', 2, 1),
('Duod�cima hora: de 19 a 20', '19:00:00', '20:00:00', 2, 1),
('Primera hora: de 8 a 9', '08:00:00', '09:00:00', 3, 1),
('Segunda hora: de 9 a 10', '09:00:00', '10:00:00', 3, 1),
('Tercera hora: de 10 a 11', '10:00:00', '11:00:00', 3, 1),
('Cuarta hora: de 11 a 12', '11:00:00', '12:00:00', 3, 1),
('Quinta hora: de 12 a 13', '12:00:00', '13:00:00', 3, 1),
('Sexta hora: de 13 a 14', '13:00:00', '14:00:00', 3, 1),
('S�ptima hora: de 14 a 15', '14:00:00', '15:00:00', 3, 1),
('Octava hora: de 15 a 16', '15:00:00', '16:00:00', 3, 1),
('Novena hora: de 16 a 17', '16:00:00', '17:00:00', 3, 1),
('D�cima hora: de 17 a 18', '17:00:00', '18:00:00', 3, 1),
('Und�cima hora: de 18 a 19', '18:00:00', '19:00:00', 3, 1),
('Duod�cima hora: de 19 a 20', '19:00:00', '20:00:00', 3, 1),
('Primera hora: de 8 a 9', '08:00:00', '09:00:00', 4, 1),
('Segunda hora: de 9 a 10', '09:00:00', '10:00:00', 4, 1),
('Tercera hora: de 10 a 11', '10:00:00', '11:00:00', 4, 1),
('Cuarta hora: de 11 a 12', '11:00:00', '12:00:00', 4, 1),
('Quinta hora: de 12 a 13', '12:00:00', '13:00:00', 4, 1),
('Sexta hora: de 13 a 14', '13:00:00', '14:00:00', 4, 1),
('S�ptima hora: de 14 a 15', '14:00:00', '15:00:00', 4, 1),
('Octava hora: de 15 a 16', '15:00:00', '16:00:00', 4, 1),
('Novena hora: de 16 a 17', '16:00:00', '17:00:00', 4, 1),
('D�cima hora: de 17 a 18', '17:00:00', '18:00:00', 4, 1),
('Und�cima hora: de 18 a 19', '18:00:00', '19:00:00', 4, 1),
('Duod�cima hora: de 19 a 20', '19:00:00', '20:00:00', 4, 1),
('Primera hora: de 8 a 9', '08:00:00', '09:00:00', 5, 1),
('Segunda hora: de 9 a 10', '09:00:00', '10:00:00', 5, 1),
('Tercera hora: de 10 a 11', '10:00:00', '11:00:00', 5, 1),
('Cuarta hora: de 11 a 12', '11:00:00', '12:00:00', 5, 1),
('Quinta hora: de 12 a 13', '12:00:00', '13:00:00', 5, 1),
('Sexta hora: de 13 a 14', '13:00:00', '14:00:00', 5, 1),
('S�ptima hora: de 14 a 15', '14:00:00', '15:00:00', 5, 1),
('Octava hora: de 15 a 16', '15:00:00', '16:00:00', 5, 1),
('Novena hora: de 16 a 17', '16:00:00', '17:00:00', 5, 1),
('D�cima hora: de 17 a 18', '17:00:00', '18:00:00', 5, 1),
('Und�cima hora: de 18 a 19', '18:00:00', '19:00:00', 5, 1),
('Duod�cima hora: de 19 a 20', '19:00:00', '20:00:00', 5, 1),
('Primera hora: de 8 a 9', '08:00:00', '09:00:00', 6, 1),
('Segunda hora: de 9 a 10', '09:00:00', '10:00:00', 6, 1),
('Tercera hora: de 10 a 11', '10:00:00', '11:00:00', 6, 1),
('Cuarta hora: de 11 a 12', '11:00:00', '12:00:00', 6, 1),
('Quinta hora: de 12 a 13', '12:00:00', '13:00:00', 6, 1),
('Sexta hora: de 13 a 14', '13:00:00', '14:00:00', 6, 1),
('S�ptima hora: de 14 a 15', '14:00:00', '15:00:00', 6, 1),
('Octava hora: de 15 a 16', '15:00:00', '16:00:00', 6, 1),
('Novena hora: de 16 a 17', '16:00:00', '17:00:00', 6, 1),
('D�cima hora: de 17 a 18', '17:00:00', '18:00:00', 6, 1),
('Und�cima hora: de 18 a 19', '18:00:00', '19:00:00', 6, 1),
('Duod�cima hora: de 19 a 20', '19:00:00', '20:00:00', 6, 1),
('Primera hora: de 8 a 9', '08:00:00', '09:00:00', 7, 1),
('Segunda hora: de 9 a 10', '09:00:00', '10:00:00', 7, 1),
('Tercera hora: de 10 a 11', '10:00:00', '11:00:00', 7, 1),
('Cuarta hora: de 11 a 12', '11:00:00', '12:00:00', 7, 1),
('Quinta hora: de 12 a 13', '12:00:00', '13:00:00', 7, 1),
('Sexta hora: de 13 a 14', '13:00:00', '14:00:00', 7, 1),
('S�ptima hora: de 14 a 15', '14:00:00', '15:00:00', 7, 1),
('Octava hora: de 15 a 16', '15:00:00', '16:00:00', 7, 1),
('Novena hora: de 16 a 17', '16:00:00', '17:00:00', 7, 1),
('D�cima hora: de 17 a 18', '17:00:00', '18:00:00', 7, 1),
('Und�cima hora: de 18 a 19', '18:00:00', '19:00:00', 7, 1),
('Duod�cima hora: de 19 a 20', '19:00:00', '20:00:00', 7, 1);INSERT INTO Salones (CodigoSalon, AforoSalon, IdDisponibilidad)
VALUES
('A101', 5, 1),
('A102', 5, 1),
('A103', 5, 1),
('A104', 5, 1),
('A105', 5, 2),
('A106', 5, 2),
('A107', 5, 2),
('A108', 5, 1),
('A109', 5, 1),
('A110', 10, 1),
('A111', 10, 1),
('A112', 10, 1),
('A113', 10, 1),
('A114', 10, 1),
('A115', 10, 1),
('A116', 15, 2),
('A117', 15, 2),
('A118', 15, 2),
('A119', 15, 2),
('A120', 15, 2);

INSERT INTO Estudiantes (Nombres, ApellidoPaterno, ApellidoMaterno,
TelefonoEstudiante, FechaNacimiento, Email, Direccion)
VALUES
('Luis', 'G�mez', 'Rojas', '959876543', '2001-05-14', 'luis.gomez@gmail.com', 'Calle Santa Catalina 123, Arequipa'),
('Mar�a', 'P�rez', 'Quispe', '951234567', '2002-03-22', 'maria.perez@gmail.com', 'Calle San L�zaro 45, Arequipa'),
('Jos�', 'Fern�ndez', 'Ch�vez', '952345678', '2003-11-10', 'jose.fernandez@gmail.com', 'Av. Independencia 567, Arequipa'),
('Ana', 'Lopez', 'Mamani', '953456789', '2004-01-08', 'ana.lopez@gmail.com', 'Calle Mercaderes 789, Arequipa'),
('Carlos', 'Vega', 'Huaman�', '954567890', '2005-06-17', 'carlos.vega@gmail.com', 'Av. Ej�rcito 321, Arequipa'),
('Sof�a', 'Salas', 'Vargas', '955678901', '2001-09-23', 'sofia.salas@gmail.com', 'Calle Puente Grau 654, Arequipa'),
('Jorge', '�lvarez', 'Huarachi', '956789012', '2002-04-15', 'jorge.alvarez@gmail.com', 'Av. Mariscal Castilla 456, Arequipa'),
('Valeria', 'Medina', 'Paredes', '957890123', '2003-08-30', 'valeria.medina@gmail.com', 'Calle Bol�var 789, Arequipa'),
('Ricardo', 'Z��iga', 'Ramos', '958901234', '2000-12-01', 'ricardo.zuniga@gmail.com', 'Av. Dolores 234, Arequipa'),


('Luc�a', 'Castro', 'Flores', '959012345', '2001-02-14', 'lucia.castro@gmail.com', 'Calle Ej�rcito 876, Arequipa'),
('Pedro', 'S�nchez', 'Torres', '951345678', '2003-05-12', 'pedro.sanchez@gmail.com', 'Calle Col�n 987, Arequipa'),
('Rosa', 'Ramos', 'Apaza', '952456789', '2004-07-20', 'rosa.ramos@gmail.com', 'Calle Villalba 345, Arequipa'),
('David', 'Quispe', 'Quispe', '953567890', '2002-11-11', 'david.quispe@gmail.com', 'Av. Parra 123, Arequipa'),
('Marta', 'Huaman', 'Cruz', '954678901', '2001-03-09', 'marta.huaman@gmail.com', 'Calle Misti 543, Arequipa'),
('Fernando', 'Garc�a', 'Lopez', '955789012', '2005-10-05', 'fernando.garcia@gmail.com', 'Av. Kennedy 987, Arequipa'),
('Isabel', 'Vargas', 'Montoya', '956890123', '2004-12-22', 'isabel.vargas@gmail.com', 'Calle Jerusal�n 234, Arequipa'),
('Gabriel', 'Mamani', 'C�rdenas', '957901234', '2000-08-14', 'gabriel.mamani@gmail.com', 'Av. Socabaya 456, Arequipa'),
('Sandra', 'Apaza', 'Huayhua', '958012345', '2003-02-18', 'sandra.apaza@gmail.com', 'Calle Siglo XX 678, Arequipa'),
('Felipe', 'Ch�vez', 'Arias', '959123456', '2001-06-21', 'felipe.chavez@gmail.com', 'Calle Paucarpata 789, Arequipa'),
('Laura', 'Zeballos', 'Ortega', '951234578', '2002-09-10', 'laura.zeballos@gmail.com', 'Av. Grau 654, Arequipa'),
('Roberto', 'Delgado', 'Quispe', '952345789', '2003-11-30', 'roberto.delgado@gmail.com', 'Calle �lvarez Thomas 321, Arequipa'),
('Karla', 'Nina', 'Fern�ndez', '953456780', '2005-01-01', 'karla.nina@gmail.com', 'Calle Melgar 345, Arequipa'),
('Manuel', 'Choque', 'Salas', '954567891', '2004-07-07', 'manuel.choque@gmail.com', 'Av. Salaverry 567, Arequipa'),
('Paola', 'Quispe', 'Vega', '955678912', '2001-02-24', 'paola.quispe@gmail.com', 'Calle Arancota 987, Arequipa'),
('Diana', 'C�ceres', 'Mendoza', '956789023', '2002-12-17', 'diana.caceres@gmail.com', 'Av. Bustamante 876, Arequipa'),
('Alfredo', 'Huayhua', 'Chambi', '957890134', '2003-03-03', 'alfredo.huayhua@gmail.com', 'Calle San Agust�n 543, Arequipa'),
('Carmen', 'Flores', 'Arce', '958901245', '2000-06-11', 'carmen.flores@gmail.com', 'Av. Hunter 321, Arequipa'),
('Francisco', 'Rojas', 'Tito', '959012356', '2001-09-19', 'francisco.rojas@gmail.com', 'Calle Bol�var 234, Arequipa'),
('Adriana', 'Cruz', 'Vilca', '951345679', '2002-10-28', 'adriana.cruz@gmail.com', 'Av. Umacollo 789, Arequipa'),
('Esteban', 'Mendoza', 'Acu�a', '952456790', '2004-04-15', 'esteban.mendoza@gmail.com', 'Calle Loreto 456, Arequipa');
INSERT INTO Orden (FechaOrden, IdEstudiante, IdCurso, IdSalon, IdHorario, Estado)
VALUES
('2024-11-01', 1, 10, 1, 1, 1),
('2024-11-02', 2, 12, 2, 2, 1),
('2024-11-03', 3, 3, 3, 3, 0),
('2024-11-04', 4, 4, 4, 13, 1),
('2024-11-05', 5, 5, 5, 10, 1),
('2024-11-06', 6, 6, 6, 6, 0),
('2024-11-07', 7, 7, 7, 20, 1),
('2024-11-08', 8, 8, 8, 8, 1),
('2024-11-09', 9, 9, 9, 9, 0),
('2024-11-10', 10, 10, 10, 10, 1);


INSERT INTO Solicita (IdEstudiante, IdCurso)
VALUES
(1, 10),
(2, 12),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
INSERT INTO Imparte (IdProfesor, IdCurso)
VALUES
(1, 10),
(2, 12),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);