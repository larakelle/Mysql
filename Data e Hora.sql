-- CURDATE()
SELECT CURDATE() AS 'Data Atual';

-- CURTIME()
SELECT CURTIME() AS 'Hora Atual';

-- CURRENT_TIME()
SELECT CURRENT_TIME() AS 'Hora Atual';

-- DATE_ADD(data, interval)
SELECT DATE_ADD(CURDATE(), INTERVAL 3 DAY) AS 'Data de Vencimento';


-- DATE_SUB(data, interval)
SELECT DATE_SUB(CURDATE(), INTERVAL 10 DAY) AS 'Data de matricula';

-- DATEDIFF(expre1, expre2)
SELECT DATEDIFF(CURDATE(), DATE_SUB(CURDATE(), INTERVAL 10 DAY)) AS 'Dias em Atraso';

-- DATE_FORMAT
SELECT DATE_FORMAT(CURDATE(), '%d\%m\%Y') AS 'Data Atual';

-- DAYNAME
SELECT DAYNAME(CURDATE()) AS 'Dia da Semana';

-- DAYOFMONTH
SELECT DAYOFMONTH(CURDATE()) AS 'Dia do Mes';

-- DAYOFWEEK
SELECT DAYOFWEEK(CURDATE()) AS 'Dia da Semana';

-- DAYOFYEAR
SELECT DAYOFYEAR(CURDATE()) AS 'Dia do Ano';

-- FROM_DAYS
SELECT FROM_DAYS(780500) AS 'Data Real';

-- NOW()
SELECT NOW() AS 'Data/Hora Atual';

SELECT DATE_FORMAT(NOW(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';

SELECT DATE_FORMAT(CURRENT_TIMESTAMP(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';

-- Time
SELECT TIME(CURRENT_TIMESTAMP()) AS 'Hora';

-- TIME_TO_SEC
SELECT SEC_TO_TIME(2000) AS 'Tempo Total';

-- TIME_TO_SEC
SELECT TIME_TO_SEC(TIME(CURRENT_TIMESTAMP())) AS 'Em segundos';

SELECT HOUR(TIME(CURRENT_TIMESTAMP())) AS Hora, 
	MINUTE(TIME(CURRENT_TIMESTAMP())) AS Minutos, 
    SECOND(TIME(CURRENT_TIMESTAMP())) AS Segundos;

SELECT period_diff(201912, 201905) AS 'Meses Restantes';

SELECT TIMEDIFF('12:35:34', '12:30:46') AS Diferença;

SELECT QUARTER('2019-03-17') AS 'Trimestre do ano';

SELECT WEEK('2019-03-17') AS 'Semana do Ano';

SELECT WEEKDAY('2019-03-17') AS 'Dia da Semana';

SELECT YEAR('2019-03-17') AS 'Ano';

SELECT MONTH(NOW()) AS 'Mês';

SELECT DAY('2019-03-17') AS 'Dia';