--explicitly open cursor
DECLARE
	CURSOR occupancy_cur IS SELECT pet_id, room_number FROM occupancy WHERE occupied_dt = TRUNC(SYSDATE);
	occupancy_rec occupancy_cur%ROWTYPE;
BEGIN
	OPEN occupancy_cur INTO occupancy_rec;
	LOOP
		FETCH occupancy_cur INTO occupancy_rec;
		EXIT WHEN occupancy_cur%NOTFOUND;
		update_bill(occupancy_rec.pet_id, occupancy_rec.room_number);
	END LOOP;
	CLOSE occupancy_cur;
END;
--
DECLARE
	CURSOR occupancy_cur IS SELECT pet_id, room_number FROM occupancy WHERE occupied_dt = TRUNC(SYSDATE);
BEGIN
	FOR occupancy_rec IN occupancy_cur
	LOOP
		update_bill(occupancy_rec.pet_id, occupancy_rec.room_number);
	END LOOP;
END;
