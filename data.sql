
insert into product values(1,"bajaj",2000,"car");
insert into product values(2,"bajaj",4000,"car");
insert into product values(3,"bajaj",5000,"car");

insert into product values(4,"bajaj",2000,"bike");
insert into product values(5,"bajaj",4000,"bike");
insert into product values(6,"bajaj",5000,"bike");

insert into coverage(company_name,coverage_amount,coverage_type,product_id) values("bajaj",75,"car",1);
insert into coverage(company_name,coverage_amount,coverage_type,product_id) values("bajaj",80,"car",2);
insert into coverage(company_name,coverage_amount,coverage_type,product_id) values("bajaj",100,"car",3);

insert into coverage(company_name,coverage_amount,coverage_type,product_id) values("bajaj",75,"bike",4);
insert into coverage(company_name,coverage_amount,coverage_type,product_id) values("bajaj",80,"bike",5);
insert into coverage(company_name,coverage_amount,coverage_type,product_id) values("bajaj",100,"bike",6);
