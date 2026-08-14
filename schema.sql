-- Minimal `world` schema needed to import the files in sql/.
--
-- Reconstructed from insulae's production schema (world.map,
-- world.map_name, world.seq_karte_name only) -- not the full production
-- schema, just enough for these per-island dumps to apply cleanly to a
-- fresh database without reformatting them.
--
-- Each sql/<island>.sql is one `DO $$ ... END $$;` block: it pulls one
-- v_karte_id from world.seq_karte_name, INSERTs one world.map_name row
-- naming the island, then one world.map row per field (map_x, map_y,
-- karte_gelaende, karte_land). Apply this file first, then every
-- sql/*.sql file, in any order -- each is self-contained and allocates
-- its own karte_id, so none of them collide.
--
-- Copied as-is into the public repo by generate_readme.py.

CREATE SCHEMA IF NOT EXISTS world;

-- ----------------------------
-- Sequence: world.seq_karte_name
-- Backs world.map_name.karte_id's default and is what every sql/*.sql
-- file calls explicitly to give one island's fields a shared karte_id.
-- ----------------------------
CREATE SEQUENCE IF NOT EXISTS world.seq_karte_name
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

-- ----------------------------
-- Table: world.map
-- One row per field. map_w is always 0 here -- these are map TEMPLATE
-- rows ("From here the maps for complete new phases can be copied.").
-- karte_gelaende is the field's terrain sprite id; karte_land is its
-- biome code (1000000000 = ebene, +1 per other land_type -- see
-- scherbenkarte-archiv's scripts/generate_map_sql.py for the full list).
-- ----------------------------
CREATE TABLE IF NOT EXISTS world.map (
    karte_id        integer NOT NULL DEFAULT 0,
    map_x           integer NOT NULL DEFAULT 0,
    map_y           integer NOT NULL DEFAULT 0,
    map_w           integer NOT NULL DEFAULT 0,
    karte_gelaende  integer NOT NULL DEFAULT 0,
    karte_land      integer NOT NULL DEFAULT 0
) WITH (fillfactor = 95);
COMMENT ON TABLE world.map IS 'Map template. From here the maps for complete new phases can be copied.';

ALTER TABLE world.map
    ADD CONSTRAINT karte_pkey PRIMARY KEY (map_x, map_y, map_w);

-- ----------------------------
-- Table: world.map_name
-- One row per island, naming a karte_id from world.map as a real,
-- nameable map. Trimmed to just what every sql/*.sql file actually sets
-- (karte_id, map_name) -- insulae's live table has several more columns
-- (karte_entdeckt, karte_beschreibung, karte_stadt, karte_untergrund,
-- karte_bebaubar, karte_anzeigen, map_season, map_origin, karte_ersteller,
-- map_wetter), not needed for this repo's purpose.
-- ----------------------------
CREATE TABLE IF NOT EXISTS world.map_name (
    karte_id  integer NOT NULL DEFAULT nextval('world.seq_karte_name'),
    map_name  varchar(50) NOT NULL DEFAULT ''
);

ALTER TABLE world.map_name
    ADD CONSTRAINT insulae_welt_karte_name_pkey PRIMARY KEY (karte_id);
