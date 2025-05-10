CREATE DATABASE ANALYTICS;

CREATE TABLE creditos_clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(50),
    edad INT,
    genero VARCHAR(10),
    nivel_ingresos DECIMAL(10,2),
    monto_credito DECIMAL(10,2),
    cuotas_pagadas INT,
    cuotas_totales INT,
    dias_mora INT,
    estado_credito VARCHAR(20)
);

INSERT INTO creditos_clientes (id_cliente, nombre, edad, genero, nivel_ingresos, monto_credito, cuotas_pagadas, cuotas_totales, dias_mora, estado_credito) VALUES
(1, 'Ana Rodríguez', 34, 'Femenino', 2500000, 5000000, 8, 12, 0, 'al_dia'),
(2, 'Carlos Gómez', 42, 'Masculino', 1800000, 7000000, 10, 12, 45, 'en_mora'),
(3, 'Laura Díaz', 29, 'Femenino', 3200000, 6000000, 12, 12, 0, 'al_dia'),
(4, 'Juan Torres', 38, 'Masculino', 1000000, 3000000, 5, 12, 120, 'castigado'),
(5, 'María Herrera', 50, 'Femenino', 2700000, 8000000, 9, 12, 30, 'en_mora'),
(6, 'Luis Ramírez', 45, 'Masculino', 2100000, 5000000, 11, 12, 0, 'al_dia'),
(7, 'Carmen Salinas', 31, 'Femenino', 1900000, 4000000, 7, 12, 15, 'en_mora'),
(8, 'Pedro Gutiérrez', 36, 'Masculino', 2300000, 3500000, 4, 12, 90, 'castigado'),
(9, 'Diana López', 28, 'Femenino', 1500000, 2000000, 6, 12, 0, 'al_dia'),
(10, 'Andrés Pérez', 40, 'Masculino', 4000000, 6000000, 12, 12, 0, 'al_dia'),
(11, 'Natalia Romero', 26, 'Femenino', 1300000, 1500000, 3, 12, 60, 'en_mora'),
(12, 'Sergio Jiménez', 44, 'Masculino', 3500000, 7500000, 10, 12, 10, 'en_mora'),
(13, 'Paola Castro', 35, 'Femenino', 2800000, 4000000, 12, 12, 0, 'al_dia'),
(14, 'Felipe Vargas', 39, 'Masculino', 3200000, 5500000, 8, 12, 30, 'en_mora'),
(15, 'Andrea Ruiz', 33, 'Femenino', 2100000, 3800000, 6, 12, 90, 'castigado'),
(16, 'Jorge Mendoza', 47, 'Masculino', 2900000, 5000000, 12, 12, 0, 'al_dia'),
(17, 'Liliana Mejía', 30, 'Femenino', 1800000, 3000000, 7, 12, 20, 'en_mora'),
(18, 'David Cárdenas', 29, 'Masculino', 1600000, 3500000, 5, 12, 60, 'en_mora'),
(19, 'Valentina Ortiz', 24, 'Femenino', 1400000, 2500000, 2, 12, 110, 'castigado'),
(20, 'Camilo Silva', 41, 'Masculino', 3100000, 6000000, 11, 12, 0, 'al_dia'),
(21, 'Juliana Ríos', 32, 'Femenino', 1700000, 4000000, 9, 12, 10, 'en_mora'),
(22, 'Esteban León', 50, 'Masculino', 2000000, 5500000, 3, 12, 130, 'castigado'),
(23, 'Sofía Pardo', 36, 'Femenino', 3000000, 7000000, 12, 12, 0, 'al_dia'),
(24, 'Miguel Quintero', 38, 'Masculino', 2200000, 4500000, 10, 12, 0, 'al_dia'),
(25, 'Isabela Cruz', 27, 'Femenino', 2400000, 5000000, 7, 12, 30, 'en_mora'),
(26, 'Óscar Beltrán', 35, 'Masculino', 1900000, 3000000, 6, 12, 90, 'castigado'),
(27, 'Tatiana Guerrero', 31, 'Femenino', 2600000, 4800000, 8, 12, 10, 'en_mora'),
(28, 'Cristian Arias', 43, 'Masculino', 1500000, 3500000, 4, 12, 100, 'castigado'),
(29, 'Claudia Medina', 37, 'Femenino', 2800000, 6000000, 12, 12, 0, 'al_dia'),
(30, 'Ricardo Peña', 39, 'Masculino', 1700000, 5000000, 9, 12, 20, 'en_mora'),
(31, 'Gabriela Zúñiga', 33, 'Femenino', 3300000, 5500000, 10, 12, 0, 'al_dia'),
(32, 'Daniel Rivas', 48, 'Masculino', 2500000, 4000000, 7, 12, 40, 'en_mora'),
(33, 'Melissa Sánchez', 28, 'Femenino', 3000000, 6500000, 12, 12, 0, 'al_dia'),
(34, 'Henry Barrera', 46, 'Masculino', 1800000, 3900000, 5, 12, 95, 'castigado'),
(35, 'Catalina Naranjo', 34, 'Femenino', 2000000, 5000000, 6, 12, 60, 'en_mora'),
(36, 'Iván Acosta', 40, 'Masculino', 2200000, 5800000, 12, 12, 0, 'al_dia'),
(37, 'Lorena Espinosa', 31, 'Femenino', 1600000, 4200000, 7, 12, 30, 'en_mora'),
(38, 'Sebastián Fuentes', 30, 'Masculino', 2700000, 6100000, 11, 12, 0, 'al_dia'),
(39, 'Angela Franco', 29, 'Femenino', 1900000, 3700000, 4, 12, 90, 'castigado'),
(40, 'Mauricio Andrade', 44, 'Masculino', 2500000, 5000000, 10, 12, 5, 'en_mora'),
(41, 'Verónica Caro', 36, 'Femenino', 2100000, 4300000, 8, 12, 15, 'en_mora'),
(42, 'Tomás Gallo', 47, 'Masculino', 2400000, 4700000, 12, 12, 0, 'al_dia'),
(43, 'Lucía Navarro', 32, 'Femenino', 2600000, 5500000, 6, 12, 70, 'en_mora'),
(44, 'Matías Londoño', 39, 'Masculino', 2300000, 4900000, 7, 12, 60, 'en_mora'),
(45, 'Jimena Serrano', 41, 'Femenino', 2700000, 6200000, 12, 12, 0, 'al_dia'),
(46, 'Elías Restrepo', 46, 'Masculino', 2100000, 5300000, 9, 12, 30, 'en_mora'),
(47, 'Marina Castaño', 35, 'Femenino', 1800000, 4000000, 5, 12, 95, 'castigado'),
(48, 'Julián Bonilla', 38, 'Masculino', 2000000, 4700000, 10, 12, 0, 'al_dia'),
(49, 'Sandra Piñeros', 33, 'Femenino', 2200000, 5100000, 8, 12, 20, 'en_mora'),
(50, 'Rodrigo Mena', 40, 'Masculino', 1900000, 4900000, 6, 12, 100, 'castigado');

SELECT * FROM creditos_clientes;


--CONSULTA PARA BUSCAR VALORES DUPLICADOS.
SELECT nombre, monto_credito, COUNT(*) AS repeticiones
FROM creditos_clientes
GROUP BY nombre, monto_credito
HAVING COUNT(*) > 1;


--CONSULTA PARA BUSCAR VALORES NULOS.
SELECT *
FROM creditos_clientes
WHERE nombre IS NULL
   OR edad IS NULL
   OR genero IS NULL
   OR nivel_ingresos IS NULL
   OR monto_credito IS NULL
   OR cuotas_pagadas IS NULL
   OR cuotas_totales IS NULL
   OR dias_mora IS NULL
   OR estado_credito IS NULL;



--STORE PARA ELIMINAR VALORES DUPLICADOS Y NULOS.
CREATE PROCEDURE limpiar_creditos_clientes
AS
BEGIN
    SET NOCOUNT ON;

    -- Eliminar registros con valores nulos
    DELETE FROM creditos_clientes
    WHERE nombre IS NULL
       OR edad IS NULL
       OR genero IS NULL
       OR nivel_ingresos IS NULL
       OR monto_credito IS NULL
       OR cuotas_pagadas IS NULL
       OR cuotas_totales IS NULL
       OR dias_mora IS NULL
       OR estado_credito IS NULL;

    -- Eliminar duplicados por nombre y monto_credito, dejando el de menor ID
    DELETE cc1
    FROM creditos_clientes cc1
    INNER JOIN creditos_clientes cc2
        ON cc1.nombre = cc2.nombre
        AND cc1.monto_credito = cc2.monto_credito
        AND cc1.id_cliente > cc2.id_cliente;

END;
