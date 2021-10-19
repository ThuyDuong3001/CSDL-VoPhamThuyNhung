CREATE DATABASE QLBH
USE QLBH
/*Tao bang KHACHHANG*/
CREATE TABLE KHACHHANG
(
	MAKH CHAR(4) NOT NULL,
	HOTEN VARCHAR(40),
	DCHI VARCHAR(50),
	SODT VARCHAR(20),
	NGSINH SMALLDATETIME,
	DOANHSO MONEY,
	NGDK SMALLDATETIME,
	CONSTRAINT PK_KH PRIMARY KEY(MAKH) 
)
/*Tao bang SANPHAM*/
CREATE TABLE SANPHAM
(
	MASP CHAR(4) NOT NULL,
	TENSP VARCHAR(40),
	DVT VARCHAR(20),
	NUOCSX VARCHAR(40),
	GIA MONEY,
	CONSTRAINT PK_SP PRIMARY KEY(MASP)
)
/*2.Tao bang NHANVIEN*/
CREATE TABLE NHANVIEN
(
	MANV CHAR(4),
	HOTEN VARCHAR(40),
	SODT VARCHAR(20),
	NGVL SMALLDATETIME,
	CONSTRAINT PK_NV PRIMARY KEY(MANV)
)
/*Tao bang HOADON*/
CREATE TABLE HOADON
(
	SOHD INT NOT NULL,
	NGHD SMALLDATETIME,
	MAKH CHAR(4),
	MANV CHAR(4),
	TRIGIA MONEY,
	CONSTRAINT PK_HOADON PRIMARY KEY(SOHD)
)
/*Tao bang CTHD*/
CREATE TABLE CTHD
(
	SOHD INT,
	MASP CHAR(4) ,
	SL INT,
	CONSTRAINT PK_CTHD PRIMARY KEY(SOHD,MASP)
)

SET DATEFORMAT dmy
/*Nhap du lieu cho bang NHANVIEN*/
INSERT INTO NHANVIEN VALUES ('NV01','Nguyen Nhu Nhut','0927345678','13/4/2006')
INSERT INTO NHANVIEN VALUES ('NV02','Le Thi Phi Yen','0987567390','21/4/2006')
INSERT INTO NHANVIEN VALUES ('NV03','Nguyen Van B','0997047382','27/4/2006')
INSERT INTO NHANVIEN VALUES ('NV04','Ngo Thanh Tuan','0913758498','24/6/2006')
INSERT INTO NHANVIEN VALUES ('NV05','Nguyen Thi Truc Thanh','0918590387','20/7/2006')
SELECT*FROM NHANVIEN

/*Nhap du lieu cho bang KHACHHANG*/
INSERT INTO KHACHHANG VALUES('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCH','08823451','22/10/1960',13060000,'22/7/2006')
INSERT INTO KHACHHANG VALUES('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','0908256478','3/4/1974',280000,'30/7/2006')
INSERT INTO KHACHHANG VALUES('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','0938776266','12/6/1980',3860000,'5/8/2006')
INSERT INTO KHACHHANG VALUES('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','0917325476','9/3/1965',250000,'2/10/2006')
INSERT INTO KHACHHANG VALUES('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','08246108','10/3/1950',21000,'28/10/2006')
INSERT INTO KHACHHANG VALUES('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','08631738','31/12/1981',915000,'24/11/2006')
INSERT INTO KHACHHANG VALUES('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','0916783565','6/4/1971',12500,'1/12/2006')
INSERT INTO KHACHHANG VALUES('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','0938435756','10/1/1971',365000,'13/12/2006')
INSERT INTO KHACHHANG VALUES('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','08654763','3/9/1979',70000,'14/1/2007')
INSERT INTO KHACHHANG VALUES('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','08768904','2/5/1983',67500,'16/1/2007')
SELECT*FROM KHACHHANG

/*Nhap du lieu cho bang SANPHAM*/
insert into SANPHAM values('BC01','But chi','cay','Singapore',3000) 
insert into SANPHAM values('BC02','But chi','cay',' Singapore',5000) 
insert into SANPHAM values('BC03','But chi','cay',' Viet Nam',3500)
insert into SANPHAM values('BC04','But chi','hop','Viet Nam',30000) 
insert into SANPHAM values('BB01','But bi','cay','Viet Nam',5000) 
insert into SANPHAM values('BB02','But bi','cay','Trung Quoc',7000) 
insert into SANPHAM values('BB03','But bi','hop','Thai Lan',100000) 
insert into SANPHAM values('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500) 
insert into SANPHAM values('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500) 
insert into SANPHAM values('TV03','Tap 100 giay tot','quyen','Viet Nam',3000) 
insert into SANPHAM values('TV04','Tap 200 giay tot','quyen','Viet Nam',5500) 
insert into SANPHAM values('TV05','Tap 100 trang','chuc','Viet Nam',23000) 
insert into SANPHAM values('TV06','Tap 200 trang','chuc','Viet Nam',53000) 
insert into SANPHAM values('TV07','Tap 100 trang','chuc','Trung Quoc',34000) 
insert into SANPHAM values('ST01','So tay 500 trang','quyen','Trung Quoc',40000) 
insert into SANPHAM values('ST02','So tay loai 1','quyen','Viet Nam',55000) 
insert into SANPHAM values('ST03','So tay loai 2','quyen','Viet Nam',51000) 
insert into SANPHAM values('ST04','So tay','quyen','Thai Lan',55000) 
insert into SANPHAM values('ST05','So tay mong','quyen','Thai Lan',20000) 
insert into SANPHAM values('ST06','Phan viet bang','hop','Viet Nam',5000) 
insert into SANPHAM values('ST07','Phan khong bui','hop','Viet Nam',7000) 
insert into SANPHAM values('ST08','Bong bang','cai','Viet Nam',1000) 
insert into SANPHAM values('ST09','But long','cay','Viet Nam',5000) 
insert into SANPHAM values('ST10','But long','cay','Trung Quoc',7000) 
SELECT*FROM SANPHAM

/*nhap du lieu SO HOA DON */
INSERT INTO HOADON VALUES('1001','23/07/2006','KH01','NV01',320000)
INSERT INTO HOADON VALUES('1002','12/08/2006','KH01','NV02',840000)
INSERT INTO HOADON VALUES('1003','23/08/2006','KH02','NV01',100000)
INSERT INTO HOADON VALUES('1004','01/09/2006','KH02','NV01',180000)
INSERT INTO HOADON VALUES('1005','20/10/2006','KH01','NV02',3800000)
INSERT INTO HOADON VALUES('1006','16/10/2006','KH01','NV03',2430000)
INSERT INTO HOADON VALUES('1007','28/10/2006','KH03','NV03',510000)
INSERT INTO HOADON VALUES('1008','28/10/2006','KH01','NV03',440000)
INSERT INTO HOADON VALUES('1009','28/10/2006','KH03','NV04',200000)
INSERT INTO HOADON VALUES('1010','01/11/2006','KH01','NV01',5200000)
INSERT INTO HOADON VALUES('1011','04/11/2006','KH04','NV03',250000)
INSERT INTO HOADON VALUES('1012','30/11/2006','KH05','NV03',21000)
INSERT INTO HOADON VALUES('1013','12/12/2006','KH06','NV01',5000)
INSERT INTO HOADON VALUES('1014','31/12/2006','KH03','NV02',3150000)
INSERT INTO HOADON VALUES('1015','01/01/2007','KH06','NV01',910000)
INSERT INTO HOADON VALUES('1016','01/01/2007','KH07','NV02',12500)
INSERT INTO HOADON VALUES('1017','02/01/2007','KH08','NV03',35000)
INSERT INTO HOADON VALUES('1018','13/01/2007','KH08','NV03',330000)
INSERT INTO HOADON VALUES('1019','13/01/2007','KH01','NV03',30000)
INSERT INTO HOADON VALUES('1020','14/01/2007','KH09','NV04',70000)
INSERT INTO HOADON VALUES('1021','16/01/2007','KH10','NV03',67500)
INSERT INTO HOADON VALUES('1022','16/01/2007',Null,'NV03',7000)
INSERT INTO HOADON VALUES('1023','17/01/2007',Null,'NV01',330000)
select*from HOADON
DROP TABLE HOADON


/*nhap du lieu CHI TIET HOA DON */
insert into CTHD values(1001,'TV02',10) 
insert into CTHD values(1001,'ST01',5)
insert into CTHD values(1001,'BC01',5) 
insert into CTHD values(1001,'BC02',10) 
insert into CTHD values(1001,'ST08',10) 
insert into CTHD values(1002,'BC04',20) 
insert into CTHD values(1002,'BB01',20) 
insert into CTHD values(1002,'BB02',20) 
insert into CTHD values(1003,'BB03',10) 
insert into CTHD values(1004,'TV01',20) 
insert into CTHD values(1004,'TV02',10) 
insert into CTHD values(1004,'TV03',10) 
insert into CTHD values(1004,'TV04',10) 
insert into CTHD values(1005,'TV05',50) 
insert into CTHD values(1005,'TV06',50) 
insert into CTHD values(1006,'TV07',20)  
insert into CTHD values(1006,'ST01',30) 
insert into CTHD values(1006,'ST02',10) 
insert into CTHD values(1007,'ST03',10) 
insert into CTHD values(1008,'ST04',8) 
insert into CTHD values(1009,'ST05',10)
insert into CTHD values(1010,'ST07',50)
insert into CTHD values(1010,'ST08',100)
insert into CTHD values(1010,'TV03',100) 
insert into CTHD values(1011,'ST06',50) 
insert into CTHD values(1012,'ST07',3) 
insert into CTHD values(1013,'ST08',5) 
insert into CTHD values(1014,'BB02',100) 
insert into CTHD values(1014,'BC04',60) 
insert into CTHD values(1014,'BB01',50) 
insert into CTHD values(1015,'BB02',30) 
insert into CTHD values(1015,'BB03',7) 
insert into CTHD values(1016,'TV01',5)
insert into CTHD values(1017,'TV02',1) 
insert into CTHD values(1017,'TV03',1) 
insert into CTHD values(1017,'TV04',5) 
insert into CTHD values(1018,'ST04',6) 
insert into CTHD values(1019,'ST05',1) 
insert into CTHD values(1019,'ST06',2) 
insert into CTHD values(1020,'ST07',10) 
insert into CTHD values(1021,'ST08',5) 
insert into CTHD values(1021,'TV01',7) 
insert into CTHD values(1021,'TV02',10) 
insert into CTHD values(1022,'ST07',1) 
insert into CTHD values(1023,'ST04',6) 
select*from CTHD 
-- Khoa ngoai cho bang HOADON
ALTER TABLE HOADON ADD CONSTRAINT FK01_HD FOREIGN KEY(MAKH) REFERENCES KHACHHANG(MAKH)
ALTER TABLE HOADON ADD CONSTRAINT FK02_HD FOREIGN KEY(MANV) REFERENCES NHANVIEN(MANV)
-- Khoa ngoai cho bang CTHD
ALTER TABLE CTHD ADD CONSTRAINT FK01_CTHD FOREIGN KEY(SOHD) REFERENCES HOADON(SOHD)
ALTER TABLE CTHD ADD CONSTRAINT FK02_CTHD FOREIGN KEY(MASP) REFERENCES SANPHAM(MASP)
ALTER TABLE CTHD DROP CONSTRAINT FK01_CTHD

--1.In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.
SELECT MASP,TENSP
FROM SANPHAM
WHERE NUOCSX='Trung Quoc'
--2. In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.
SELECT MASP,TENSP
FROM SANPHAM
WHERE DVT IN('cay','quyen')
--3. In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”.
SELECT MASP,TENSP
FROM SANPHAM
WHERE MASP LIKE'B%01'
--4. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 30.000 đến
--40.000.
SELECT MASP,TENSP
FROM SANPHAM
WHERE NUOCSX='Trung Quoc' AND GIA BETWEEN 30000 AND 40000
--5. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất có giá từ
--30.000 đến 40.000.
SELECT MASP,TENSP
FROM SANPHAM
WHERE NUOCSX='Trung Quoc' AND GIA BETWEEN 30000 AND 40000
UNION
SELECT MASP,TENSP
FROM SANPHAM
WHERE NUOCSX='Thai Lan' AND GIA BETWEEN 30000 AND 40000
--6. In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
SELECT SOHD, TRIGIA
FROM HOADON
WHERE NGHD IN('1/1/2007','2/1/2007')
--7. In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của
--hóa đơn (giảm dần).
SELECT SOHD,TRIGIA
FROM HOADON
WHERE MONTH(NGHD)=1 AND YEAR(NGHD)=2007
ORDER BY NGHD ASC, TRIGIA DESC 
--8. In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
SELECT KH.MAKH,HOTEN
FROM KHACHHANG KH JOIN HOADON HD
	ON KH.MAKH=HD.MAKH
WHERE NGHD='1/1/2007'
--9. In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày
--28/10/2006.
SELECT SOHD,TRIGIA
FROM NHANVIEN NV JOIN HOADON HD
	ON NV.MANV=HD.MANV
WHERE NGHD='28/10/2006' AND HOTEN='Nguyen Van B'
--10. In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong
--tháng 10/2006.
SELECT SP.MASP,TENSP
FROM ((KHACHHANG KH JOIN HOADON HD ON KH.MAKH=HD.MAKH)
	JOIN CTHD ON HD.SOHD=CTHD.SOHD) JOIN SANPHAM SP ON SP.MASP=CTHD.MASP
WHERE HOTEN='Nguyen Van A' AND YEAR(NGHD)=2006 AND MONTH(NGHD)=10
--11. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.
SELECT SOHD
FROM SANPHAM SP JOIN CTHD ON SP.MASP=CTHD.MASP
WHERE SP.MASP IN('BB01','BB02')
--12. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT SOHD
FROM CTHD
WHERE CTHD.MASP='BB01' AND (SL BETWEEN 10 AND 20) 
UNION
SELECT SOHD FROM CTHD
WHERE CTHD.MASP='BB02' AND (SL BETWEEN 10 AND 20);
--13. Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT SOHD 
FROM CTHD 
WHERE MASP='BB01' AND SL BETWEEN 10 AND 20
INTERSECT
SELECT SOHD 
FROM CTHD 
WHERE MASP='BB02' AND SL BETWEEN 10 AND 20
--14. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được
--bán ra trong ngày 1/1/2007.
SELECT SP.MASP,TENSP
FROM (SANPHAM SP JOIN CTHD ON SP.MASP=CTHD.MASP) JOIN HOADON HD ON HD.SOHD=CTHD.SOHD
WHERE NUOCSX='Trung Quoc' OR NGHD='1/1/2007'
--15. In ra danh sách các sản phẩm (MASP,TENSP) không bán được.
SELECT MASP,TENSP
FROM SANPHAM
EXCEPT
SELECT SP.MASP,TENSP
FROM SANPHAM SP JOIN CTHD ON SP.MASP=CTHD.MASP

--16. In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.
SELECT MASP,TENSP
FROM SANPHAM
EXCEPT
SELECT SP.MASP,TENSP
FROM (SANPHAM SP JOIN CTHD ON SP.MASP=CTHD.MASP) 
	JOIN HOADON HD ON HD.SOHD=CTHD.SOHD
WHERE YEAR(NGHD)=2006
--17. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm
--2006.
SELECT MASP,TENSP
FROM SANPHAM
WHERE NUOCSX='Trung Quoc'
EXCEPT
SELECT SP.MASP,TENSP
FROM (SANPHAM SP JOIN CTHD ON SP.MASP=CTHD.MASP) 
	JOIN HOADON HD ON HD.SOHD=CTHD.SOHD
WHERE YEAR(NGHD)=2006 AND NUOCSX='Trung Quoc'
--18. Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.
SELECT SOHD
FROM HOADON
WHERE YEAR(NGHD)=2006 AND 
	NOT EXISTS (SELECT*FROM SANPHAM WHERE NUOCSX='Singapore' 
	AND MASP NOT IN(SELECT MASP
					FROM CTHD
					WHERE SOHD=HOADON.SOHD))
				
--19. Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?
SELECT COUNT(SOHD) AS NOTTV
FROM HOADON
WHERE MAKH IS NULL
--20. Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
SELECT COUNT(DISTINCT(MASP)) AS SOSPKHACNHAU
FROM  HOADON HD JOIN CTHD ON HD.SOHD=CTHD.SOHD
WHERE YEAR(NGHD)=2006
--21. Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu?
SELECT MAX(TRIGIA) AS TRIGIALN, MIN(TRIGIA) AS TRIGIANN
FROM HOADON

--22. Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
SELECT AVG(TRIGIA) AS TRIGIATB
FROM HOADON 
WHERE YEAR(NGHD)=2006
--23. Tính doanh thu bán hàng trong năm 2006.
SELECT SUM(TRIGIA) AS TONGDT
FROM HOADON
WHERE YEAR(NGHD)=2006
--24. Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
SELECT SOHD 
FROM HOADON
WHERE TRIGIA>=ALL(SELECT TRIGIA FROM HOADON WHERE YEAR(NGHD)=2006)
--25. Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.
SELECT HOTEN
FROM HOADON HD JOIN KHACHHANG KH ON HD.MAKH=KH.MAKH
WHERE TRIGIA>=ALL(SELECT TRIGIA FROM HOADON WHERE YEAR(NGHD)=2006)
--26. In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất.
SELECT TOP 3 MAKH,HOTEN
FROM KHACHHANG
ORDER BY DOANHSO DESC

--27. In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.
SELECT MASP, TENSP
FROM SANPHAM
WHERE GIA IN(SELECT TOP 3 GIA
							FROM SANPHAM ORDER BY GIA DESC)

--28. In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức
--giá cao nhất (của tất cả các sản phẩm).
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX='Thai Lan' and GIA IN(SELECT TOP 3 GIA
							FROM SANPHAM ORDER BY GIA DESC)
--29. In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức
--giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX='Trung Quoc' and GIA IN(SELECT TOP 3 GIA
							FROM SANPHAM ORDER BY GIA DESC)
--30. * In ra danh sách 3 khách hàng có doanh số cao nhất (sắp xếp theo kiểu xếp hạng).
SELECT TOP 3 MAKH, RANK() OVER(ORDER BY DOANHSO DESC) AS 'Xep Hang'
FROM KHACHHANG

--31. Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
SELECT COUNT(MASP) as SoSP
FROM SANPHAM
WHERE NUOCSX='Trung Quoc'
--32. Tính tổng số sản phẩm của từng nước sản xuất.
SELECT NUOCSX,COUNT(MASP) AS SOSP
FROM SANPHAM
GROUP BY NUOCSX

--33. Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.
SELECT MAX(GIA) AS GIAMAX, MIN(GIA) AS GIAMIN, AVG(GIA) TBGIA
FROM SANPHAM
GROUP BY NUOCSX
--34. Tính doanh thu bán hàng mỗi ngày.
SELECT SUM(TRIGIA) AS TONGDOANHTHU
FROM HOADON
GROUP BY NGHD
--35. Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.
SELECT MASP, SUM(SL) AS SOLUONG
FROM CTHD JOIN HOADON HD ON CTHD.SOHD=HD.SOHD
WHERE MONTH(NGHD)=10 AND YEAR(NGHD)=2006
GROUP BY MASP
--36. Tính doanh thu bán hàng của từng tháng trong năm 2006.
SELECT SUM(TRIGIA) AS DOANHTHU, MONTH(NGHD) AS THANG
FROM HOADON
WHERE YEAR(NGHD)=2006
GROUP BY MONTH(NGHD)

--37. Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
SELECT SOHD, COUNT(DISTINCT(MASP)) AS DEM
FROM CTHD
GROUP BY SOHD
HAVING COUNT(DISTINCT(MASP))>=4

--38. Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).
SELECT SOHD
FROM CTHD JOIN SANPHAM SP ON CTHD.MASP= SP.MASP
WHERE NUOCSX='Viet Nam'
GROUP BY SOHD
HAVING COUNT(DISTINCT(SP.MASP)) =3
--39. Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất.
SELECT MAKH, HOTEN
FROM KHACHHANG
WHERE MAKH IN (SELECT MAKH
FROM HOADON
GROUP BY MAKH
HAVING COUNT(SOHD)>=ALL(SELECT DISTINCT COUNT(SOHD)
FROM HOADON
GROUP BY MAKH))
--40. Tháng mấy trong năm 2006, doanh số bán hàng cao nhất ?
SELECT MONTH(NGHD) AS THANG, SUM(TRIGIA) AS DOANHTHU
FROM HOADON
WHERE YEAR(NGHD)=2006
GROUP BY MONTH(NGHD)
HAVING SUM(TRIGIA)>=ALL(SELECT SUM(TRIGIA)
FROM HOADON
WHERE YEAR(NGHD)=2006
GROUP BY MONTH(NGHD))
--41. Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.
SELECT CTHD.MASP, TENSP
FROM SANPHAM SP,CTHD, HOADON HD
WHERE SP.MASP=CTHD.MASP AND CTHD.SOHD=HD.SOHD AND YEAR(NGHD)=2006
GROUP BY CTHD.MASP,TENSP
HAVING SUM(SL)<=ALL(SELECT SUM(SL)
FROM CTHD, HOADON HD
WHERE CTHD.SOHD=HD.SOHD AND YEAR(NGHD)=2006
GROUP BY MASP)

--42. *Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.
SELECT MASP,TENSP,NUOCSX,GIA
FROM SANPHAM SP1
WHERE GIA IN(SELECT MAX(GIA)
FROM SANPHAM SP2
WHERE SP2.NUOCSX=SP1.NUOCSX)
GROUP BY NUOCSX,MASP,TENSP,GIA
--43. Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.
SELECT NUOCSX,COUNT(DISTINCT GIA) AS DEMSOGIA
FROM SANPHAM
GROUP BY NUOCSX
HAVING COUNT(DISTINCT GIA)>=3
--44. *Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
SELECT *
FROM KHACHHANG
WHERE MAKH IN (SELECT HD.MAKH
FROM HOADON HD, KHACHHANG KH
WHERE HD.MAKH=KH.MAKH AND DOANHSO IN (SELECT TOP 10 DOANHSO
FROM KHACHHANG
ORDER BY DOANHSO DESC)
GROUP BY HD.MAKH
HAVING COUNT(SOHD)>=ALL(SELECT COUNT(SOHD)
FROM HOADON HD, KHACHHANG KH
WHERE HD.MAKH=KH.MAKH AND
DOANHSO IN (SELECT TOP 10 DOANHSO
FROM KHACHHANG
ORDER BY DOANHSO DESC)
GROUP BY HD.MAKH))