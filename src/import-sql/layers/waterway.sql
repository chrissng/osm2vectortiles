CREATE OR REPLACE VIEW waterway_z8toz12 AS
    SELECT *
    FROM osm_water_linestring
    WHERE type IN ('river', 'canal');

CREATE OR REPLACE VIEW waterway_z13 AS
    SELECT *
    FROM osm_water_linestring
    WHERE type IN ('river', 'canal', 'stream', 'stream_intermittent');

CREATE OR REPLACE VIEW waterway_z14 AS
    SELECT *
    FROM osm_water_linestring
    WHERE type IN ('river', 'canal', 'stream', 'stream_intermittent', 'ditch', 'drain');

CREATE OR REPLACE VIEW waterway_layer AS (
    SELECT osm_id, timestamp, geometry FROM waterway_z8toz12
    UNION
    SELECT osm_id, timestamp, geometry FROM waterway_z13
    UNION
    SELECT osm_id, timestamp, geometry FROM waterway_z14
);