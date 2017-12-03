select * from subway_station
where id in
(
	select distinct st.id
	from subway_station as st, road_link2 as road
	where road.lanes >= 8
	  and ST_DWithin(st.geom, road.geom, 500)
)
