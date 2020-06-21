psql -h ec2-54-247-169-129.eu-west-1.compute.amazonaws.com -p 5432 -U raaevdeqnedwzg -d de2tng02ds58o2

/* Optional */
DELETE * FROM bit_item;
DELETE * FROM usr_user;
/* -------- */

DELETE * FROM bva_variant;
DELETE * FROM bta_banknote_tag;
DELETE * FROM ban_banknote;
DELETE * FROM ser_series;
DELETE * FROM tec_territory_currency;
DELETE * FROM cus_currency_unit;
DELETE * FROM cur_currency;
DELETE * FROM ter_teritory;
DELETE * FROM con_continent;
DELETE * FROM tty_territory_type;
DELETE * FROM gra_grade;
\copy gra_grade from 'gra_grade.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy tty_territory_type from 'tty_territory_type.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy con_continent from 'con_continent.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy ter_teritory from 'ter_terrtory.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy cur_currency from 'cur_currency.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy cus_currency_unit from 'cus_currency_unit.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy tec_territory_currency from 'tec_territory_currency.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy ser_series from 'ser_series.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy ban_banknote from 'ban_banknote.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy bta_banknote_tag from 'bta_banknote_tag.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy bva_variant from 'bva_variant.csv'  DELIMITER ';' CSV ENCODING 'UTF8';

/* Optional */
\copy usr_user from 'usr_user.csv'  DELIMITER ';' CSV ENCODING 'UTF8';
\copy bit_item from 'bit_item.csv'  DELIMITER ';' CSV ENCODING 'UTF8';

\q