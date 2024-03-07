
create table client_master(
    ClientNo varchar(20) primary key,
    Name varchar(20),
    city varchar(15),
    Pincode int,
    State varchar(15),
    BalDue int
);

create table product_master (
        ProductNo varchar(20) primary key,
        Description varchar(20),
        ProfitPercent int,
        UniteMeasure varchar(15),
        QtyOnHand int,
        RecordLvl int,
        SellPrice int,
        CostPrice int
);

create table salesman_master(SalesmanNo varchar(10) primary key,
        Name varchar(10),
        Address1 varchar(10),
        Address2 varchar(10),
        City varchar(10),
        Pincode int,
        State varchar(15),
        SaleAmt int,
        TgtToget int,
        YtdSales int,
        Remarks varchar(10)
);

create table sales_order (OrderNo varchar(20) primary key,
        ClientNo varchar(20),
        constraint clino_fk foreign key(ClientNo) references client_master(ClientNo),
        OrderDate varchar(20),
        SalesmanNo varchar(10),
        constraint sales_key foreign key (SalesmanNo)  references salesman_master(SalesmanNo),
        DelyType varchar(20),
        BillYN varchar(20),
        DelayDate varchar(20),
        OrderStatus varchar(20)
);

create table sales_order_details(
        orderno varchar(20),
        constraint orderno_fk foreign key (orderno) references sales_order(OrderNo),
        ProductNo varchar(20),
        constraint ProductNo_fk foreign key(ProductNo) references product_master(ProductNo),
        QtyOrdered int,
        QtyDisp int,
        ProductRate int
);




insert into client_master values ('C00001','Ivan Bayross','Mumbai',400054,'Maharashtra',15000);
insert into client_master values ('C00002','Mamta Muzumdar','Madras',780001,'Tamil Nadu',0);
insert into client_master values ('C00003','Chhaya Bankar','Mumbai',400057,'Maharashtra',5000);
insert into client_master values ('C00004','Ashwini Joshi','Bangalore',560001,'Karnataka',0);
insert into client_master values ('C00005','Hansel Colaco','Mumbai',400060,'Maharashtra',2000);
insert into client_master values ('C00006','Deepak Sharma','Mangalore',560050,'Karnataka',0);

insert into product_master values('P00001','T-Shirts',5,'Piece',200,50,350,250);
insert into product_master values('P0345','Shirts',6,'Piece',150,50,500,350);
insert into product_master values('P06734','Cotton',5,'Piece',100,20,600,450);
insert into product_master values('P07856','Jeans',5,'Piece',100,20,750,500);
insert into product_master values('P07868','Trousers',2,'Piece',150,50,850,550);
insert into product_master values('P07885','Pull Overs',2.5,'Piece',80,30,700,540);
insert into product_master values('P07965','Denim Shirts',4,'Piece',100,40,350,250);
insert into product_master values('P07975','Lycra Tops',5,'Piece',70,30,300,175);
insert into product_master values('P08865','Skirts',5,'Piece',75,30,450,300);

insert into salesman_master values('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good');
insert into salesman_master values('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good');
insert into salesman_master values('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good');
insert into salesman_master values('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good');

insert into sales_order values('O19001','C00001','12-June-04','S00001','F','N','20-July-02','In Process');
insert into sales_order values('O19002','C00002','25-June-04','S00002','P','N','27-June-02','Cancelled');
insert into sales_order values('O46865','C00003','18-Feb-04','S00003','F','Y','20-Feb-02','Fullfilled');
insert into sales_order values('O19003','C00001','03-Apr-04','S00001','F','Y','07-Apr-02','Fullfilled');
insert into sales_order values('O46866','C00004','20-May-04','S00004','P','N','22-May-02','Cancelled');
insert into sales_order values('O19008','C00005','24-May-04','S00002','F','N','26-July-02','In Process');

insert into sales_order_details values('O19001','P00001',4,4,525);
insert into sales_order_details values('O19001','P07965',2,1,8400);
insert into sales_order_details values('O19001','P07885',2,1,5250);
insert into sales_order_details values('O19002','P00001',10,0,525);
insert into sales_order_details values('O46865','P07868',3,3,3150);
insert into sales_order_details values('O46865','P07885',3,1,5250);
insert into sales_order_details values('O46865','P00001',10,10,525);
insert into sales_order_details values('O46865','P0345',4,4,1050);
insert into sales_order_details values('O19003','P0345',2,2,1050);
insert into sales_order_details values('O19003','P06734',1,1,12000);
insert into sales_order_details values('O46866','P07965',1,0,8400);
insert into sales_order_details values('O46866','P07975',1,0,1050);
insert into sales_order_details values('O19008','P00001',10,5,525);
insert into sales_order_details values('O19008','P07975',5,3,1050);

create table student(
        rollno int primary key,
        name varchar(20),
        contactNo int,
        Address varchar(20)
);

create table course(
        courseId int primary key,
        Description varchar(20),
        fees int
);

create table student_course(
        st_id int,
        c_id int,
        constraint stid_fk foreign key (st_id) references student(rollno),
        constraint sid_fk foreign key (c_id) references course(courseId)
);

insert into student values(1,'A',95868,'Surat');
insert into student values(2,'B',95815,'Rajkot');
insert into student values(3,'C',89458,'Bangaluru');
insert into student values(4,'D',84658,'Madurai');
insert into student values(5,'E',95865,'Mirzapur');

insert into course values(001,'Python',30000);
insert into course values(002,'Java',35000);
insert into course values(003,'Perl',45000);
insert into course values(004,'Ruby',30600);
insert into course values(005,'Rust',40000);

insert into student_course values(1,001);
insert into student_course values(2,002);
insert into student_course values(3,003);
insert into student_course values(4,004);
insert into student_course values(5,005);

create table course_detail(
        course_det_id int primary key,
        course_id int,
        course_description varchar(20),
        constraint cid_fk foreign key (course_id) references course(courseId)
);

insert into course_detail values (1,001,'intro');
insert into course_detail values (2,001,'syntax');
insert into course_detail values (3,001,'comments');
insert into course_detail values (4,001,'varibles');
insert into course_detail values (5,001,'data types');

insert into course_detail values (6,002,'intro');
insert into course_detail values (7,002,'syntax');
insert into course_detail values (8,002,'Output');
insert into course_detail values (9,002,'varibles');
insert into course_detail values (10,002,'data types');

insert into course_detail values (11,003,'Basic');
insert into course_detail values (12,003,'syntax');
insert into course_detail values (13,003,'Arguments');
insert into course_detail values (14,003,'varibles');
insert into course_detail values (15,003,'reqirements');

insert into course_detail values (16,004,'installing');
insert into course_detail values (17,004,'generating project');
insert into course_detail values (18,004,'dependencies');
insert into course_detail values (19,004,'varibles');
insert into course_detail values (20,004,'cargo types');

insert into course_detail values (21,005,'Koans');
insert into course_detail values (22,005,'Essentails');
insert into course_detail values (23,005,'Library');
insert into course_detail values (24,005,'Api');
insert into course_detail values (25,005,'RubyApi');