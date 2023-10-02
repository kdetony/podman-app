DROP DATABASE pydb;
CREATE DATABASE pydb;

DROP user python@localhost;
flush privileges;

CREATE USER 'python'@'localhost' IDENTIFIED BY 'password';
GRANT ALL  privileges on *.* to 'python'@'localhost' with grant option;
#CREATE USER 'python'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON pydb.* TO 'python'@'localhost';
#GRANT ALL PRIVILEGES ON pydb.* TO 'python'@'%';

USE pydb;

CREATE TABLE py_queue (
    i_id_car int,
    s_model_code varchar(25),
    s_color_code varchar(25),
    s_extras varchar(100),
    i_right_side int,
    s_city_to_ship varchar(25)
);

INSERT INTO py_queue (i_id_car, s_model_code, s_color_code, s_extras, i_right_side, s_city_to_ship) VALUES (1, "GOLF2021", "BLUE7", "COND_AIR, GPS, MULTIMEDIA_V3", 0, "Barcelona");
INSERT INTO py_queue (i_id_car, s_model_code, s_color_code, s_extras, i_right_side, s_city_to_ship) VALUES (2, "GOLF2021_PLUGIN_HYBRID", "BLUEMETAL_5", "COND_AIR, GPS, MULTIMEDIA_V3, SECURITY_V5", 1, "Cork");
