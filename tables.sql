+----------+----------------+-----------+---------+-------------+--------+
| ClientNo | Name           | city      | Pincode | State       | BalDue |
+----------+----------------+-----------+---------+-------------+--------+
| C00001   | Ivan Bayross   | Mumbai    |  400054 | Maharashtra |  15000 |
| C00002   | Mamta Muzumdar | Madras    |  780001 | Tamil Nadu  |      0 |
| C00003   | Chhaya Bankar  | Mumbai    |  400057 | Maharashtra |   5000 |
| C00004   | Ashwini Joshi  | Bangalore |  560001 | Karnataka   |      0 |
| C00005   | Hansel Colaco  | Mumbai    |  400060 | Maharashtra |   2000 |
| C00006   | Deepak Sharma  | Mangalore |  560050 | Karnataka   |      0 |
+----------+----------------+-----------+---------+-------------+--------+


+-----------+--------------+---------------+--------------+-----------+-----------+-----------+-----------+
| ProductNo | Description  | ProfitPercent | UniteMeasure | QtyOnHand | RecordLvl | SellPrice | CostPrice |
+-----------+--------------+---------------+--------------+-----------+-----------+-----------+-----------+
| P00001    | T-Shirts     |             5 | Piece        |       200 |        50 |       350 |       250 |
| P0345     | Shirts       |             6 | Piece        |       150 |        50 |       500 |       350 |
| P06734    | Cotton       |             5 | Piece        |       100 |        20 |       600 |       450 |
| P07856    | Jeans        |             5 | Piece        |       100 |        20 |       750 |       500 |
| P07868    | Trousers     |             2 | Piece        |       150 |        50 |       850 |       550 |
| P07885    | Pull Overs   |             3 | Piece        |        80 |        30 |       700 |       540 |
| P07965    | Denim Shirts |             4 | Piece        |       100 |        40 |       350 |       250 |
| P07975    | Lycra Tops   |             5 | Piece        |        70 |        30 |       300 |       175 |
| P08865    | Skirts       |             5 | Piece        |        75 |        30 |       450 |       300 |
+-----------+--------------+---------------+--------------+-----------+-----------+-----------+-----------+


+------------+--------+----------+----------+--------+---------+-------------+---------+----------+----------+---------+
| SalesmanNo | Name   | Address1 | Address2 | City   | Pincode | State       | SaleAmt | TgtToget | YtdSales | Remarks |
+------------+--------+----------+----------+--------+---------+-------------+---------+----------+----------+---------+
| S00001     | Aman   | A/14     | Worli    | Mumbai |  400002 | Maharashtra |    3000 |      100 |       50 | Good    |
| S00002     | Omkar  | 65       | Nariman  | Mumbai |  400001 | Maharashtra |    3000 |      200 |      100 | Good    |
| S00003     | Raj    | P-7      | Bandra   | Mumbai |  400032 | Maharashtra |    3000 |      200 |      100 | Good    |
| S00004     | Ashish | A/5      | Juhu     | Mumbai |  400044 | Maharashtra |    3500 |      200 |      150 | Good    |
+------------+--------+----------+----------+--------+---------+-------------+---------+----------+----------+---------+


+---------+----------+------------+------------+----------+--------+------------+-------------+
| OrderNo | ClientNo | OrderDate  | SalesmanNo | DelyType | BillYN | DelayDate  | OrderStatus |
+---------+----------+------------+------------+----------+--------+------------+-------------+
| O19001  | C00001   | 12-June-04 | S00001     | F        | N      | 20-July-02 | In Process  |
| O19002  | C00002   | 25-June-04 | S00002     | P        | N      | 27-June-02 | Cancelled   |
| O19003  | C00001   | 03-Apr-04  | S00001     | F        | Y      | 07-Apr-02  | Fullfilled  |
| O19008  | C00005   | 24-May-04  | S00002     | F        | N      | 26-July-02 | In Process  |
| O46865  | C00003   | 18-Feb-04  | S00003     | F        | Y      | 20-Feb-02  | Fullfilled  |
| O46866  | C00004   | 20-May-04  | S00004     | P        | N      | 22-May-02  | Cancelled   |
+---------+----------+------------+------------+----------+--------+------------+-------------+


+---------+-----------+------------+---------+-------------+
| orderno | ProductNo | QtyOrdered | QtyDisp | ProductRate |
+---------+-----------+------------+---------+-------------+
| O19001  | P00001    |          4 |       4 |         525 |
| O19001  | P07965    |          2 |       1 |        8400 |
| O19001  | P07885    |          2 |       1 |        5250 |
| O19002  | P00001    |         10 |       0 |         525 |
| O46865  | P07868    |          3 |       3 |        3150 |
| O46865  | P07885    |          3 |       1 |        5250 |
| O46865  | P00001    |         10 |      10 |         525 |
| O46865  | P0345     |          4 |       4 |        1050 |
| O19003  | P0345     |          2 |       2 |        1050 |
| O19003  | P06734    |          1 |       1 |       12000 |
| O46866  | P07965    |          1 |       0 |        8400 |
| O46866  | P07975    |          1 |       0 |        1050 |
| O19008  | P00001    |         10 |       5 |         525 |
| O19008  | P07975    |          5 |       3 |        1050 |
+---------+-----------+------------+---------+-------------+

