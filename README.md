# BanknotesCatalogDB
 DB creation scripts and initial load

Folders:

- structure
	- banknotes.sql contains all the scripts for the banknotes catalogue DB
	- credentials.sql contains all the scripts for the credentials DB
	- AppAPI.sql creates the user required by the application to access the 2 DB's. It must be created in the server(s) where the DB's are created

- data
	* One file for each table with all the initial catalogue data 
	
The data must be inserted in the right order:

1. con_continent
2. tty_territory_type
3. ter_territory
4. cur_currency
5. tec_territory_currency
6. ser_series
7. cus_currency_unit
8. ban_banknote
9. bta_banknote_tag
10. bva_variant
11. gra_grade

NOTE: No initial load for the tables with "customer" related data