CREATE OR REPLACE FUNCTION add_car(_vin_num INTEGER, _c_year VARCHAR, _make VARCHAR, _model VARCHAR, _used BOOLEAN, _sold BOOLEAN)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO car(vin_num, c_year, make, model, used, sold)
	VALUES(_vin_num, _c_year, _make, _model, _used, _sold);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_car(3,'2011','Nissan','Rogue',true, false);

select * from car;