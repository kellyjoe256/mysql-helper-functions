DROP PROCEDURE IF EXISTS `get_first`;
DROP PROCEDURE IF EXISTS `calculate_age`;
DROP PROCEDURE IF EXISTS `get_num_of_days`;
DROP PROCEDURE IF EXISTS `get_num_of_months`;
DROP PROCEDURE IF EXISTS `get_num_of_years`;

DELIMITER $$

CREATE FUNCTION `get_first`( str TEXT, length INT ) 
RETURNS TEXT
COMMENT 'Returns the first `len` characters in a given string'

BEGIN
    RETURN SUBSTR( str, 1, length );
END $$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION `calculate_age`( date_of_birth DATE ) 
RETURNS TINYINT
COMMENT 'Returns how old a something or someone is in terms of years'

BEGIN
    RETURN ABS( TIMESTAMPDIFF(YEAR, date_of_birth, CURRENT_DATE) );
END $$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION `get_num_of_days`( start_date DATE, end_date DATE ) 
RETURNS INT
COMMENT 'Returns the difference in number of days from a given date to another given date'

BEGIN
    RETURN ABS( TIMESTAMPDIFF(DAY, start_date, end_date) ) + 1;
END $$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION `get_num_of_months`( start_date DATE, end_date DATE ) 
RETURNS INT
COMMENT 'Returns the difference in number of months from a given date to another given date'

BEGIN
    RETURN ABS( TIMESTAMPDIFF(MONTH, start_date, end_date) ) + 1;
END $$

DELIMITER ;

CREATE FUNCTION `get_num_of_years`( start_date DATE, end_date DATE ) 
RETURNS INT
COMMENT 'Returns the difference in number of years from a given date to another given date'

BEGIN
    RETURN ABS( TIMESTAMPDIFF(YEAR, start_date, end_date) ) + 1;
END $$

DELIMITER ;
