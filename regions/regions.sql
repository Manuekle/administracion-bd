create table regions (
	region_id   number
		constraint region_id_nn not null,
	region_name varchar2(25)
);

create unique index reg_id_pk on
	regions (
		region_id
	);
insert into regions values (
	1,
	'Europe'
);

insert into regions values (
	2,
	'Americas'
);

insert into regions values (
	3,
	'Asia'
);

insert into regions values (
	4,
	'Middle East and Africa'
);