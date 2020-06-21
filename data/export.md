psql -U postgres
\connect banknotes;
\copy gra_grade to 'gra_grade.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy tty_territory_type to 'tty_territory_type.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy con_continent to 'con_continent.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy ter_territory to 'ter_territory.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy cur_currency to 'cur_currency.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy cus_currency_unit to 'cus_currency_unit.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy tec_territory_currency to 'tec_territory_currency.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy ser_series to 'ser_series.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy ban_banknote to 'ban_banknote.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy bta_banknote_tag to 'bta_banknote_tag.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy bva_variant to 'bva_variant.csv'  DELIMITER ';' CSV ENCODING 'UTF8';

/* Optional */
\copy usr_user to 'usr_user.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy bit_item to 'bit_item.csv'  DELIMITER ';' CSV ENCODING 'UTF8';

\q