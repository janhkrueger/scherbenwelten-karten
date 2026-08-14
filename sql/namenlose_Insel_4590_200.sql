-- namenlose Insel 4590/-200: 15 field(s), land_type=ebene
DO $$
DECLARE
    v_karte_id integer := nextval('world.seq_karte_name');
BEGIN
    -- Announce the island itself before its fields (world.map has no name/metadata of its own)
    INSERT INTO world.map_name (karte_id, map_name) VALUES (v_karte_id, 'namenlose Insel 4590/-200');

    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4588, -221, 0, 411, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4589, -221, 0, 423, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4590, -221, 0, 421, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4591, -221, 0, 421, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4592, -221, 0, 430, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4588, -220, 0, 443, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4589, -220, 0, 0, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4590, -220, 0, 1, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4591, -220, 0, 1, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4592, -220, 0, 701, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4588, -219, 0, 470, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4589, -219, 0, 481, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4590, -219, 0, 480, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4591, -219, 0, 408, 1000000000);
    INSERT INTO world.map (karte_id, map_x, map_y, map_w, karte_gelaende, karte_land) VALUES (v_karte_id, 4592, -219, 0, 490, 1000000000);
END $$;
