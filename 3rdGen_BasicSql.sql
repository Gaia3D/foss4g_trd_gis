select st.*
from subway_station as st,
(select st_buffer(st_union(geom), 500) as geom from road_link2 where lanes >=8) as road
where st_within(st.geom, road.geom)
