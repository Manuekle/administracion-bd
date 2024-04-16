-- produto cartesiano o cross join
select *
  from regions
 cross join numeros;

select region_name,
       numero as codigos
  from numeros
 cross join regions
 order by region_id;

-- combinacion natural o natural join
select potato_name,
       region_name
  from potatos
natural join regions;

select region_name
  from regionsother
natural join regions;

-- combinaciones con using
select region_name,
       region_id
  from potatos
  join regions
using ( region_name );

-- combinaciones de la clausula on - join on
select potato_name,
       region_name
  from potatos
  join regions
on ( potato_id = region_id );

select numero,
       region_name
  from numeros
  join regions
on ( num_id = region_id );

-- full outer join
select *
  from regions
  full outer join potatos
on region_id = potato_id;

select *
  from regions
  full outer join regionsother
on region_id = regionother_id;

-- left outer join  
select *
  from regions
  left outer join potatos
on region_id = potato_id;

select *
  from regions
  left outer join regionsother
on region_id = regionother_id;

-- right outer join
select *
  from regions
 right outer join potatos
on region_id = potato_id;

select *
  from regions
 right outer join regionsother
on region_id = regionother_id;

-- union 
select region_name
  from regions
union
select potato_name
  from potatos;

-- union all
select region_name
  from regions
union all
select potato_name
  from potatos;

-- intersect
select region_name
  from regions
intersect
select potato_name
  from potatos;

-- minus
select region_name
  from regions
minus
select potato_name
  from potatos;