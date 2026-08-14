-- Eiland: 6 field(s), land_type=ebene
DO $$
DECLARE
    v_karte_id integer := nextval('world.seq_karte_name');
BEGIN
    -- Announce the island itself before its fields (world.map has no name/metadata of its own)
    INSERT INTO world.map_name (karte_id, map_name) VALUES (v_karte_id, 'Eiland');

    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4249, 1050, 0, 411, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4250, 1050, 0, 700, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4251, 1050, 0, 430, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4249, 1051, 0, 470, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4250, 1051, 0, 483, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4251, 1051, 0, 490, 1000000000);
END $$;
