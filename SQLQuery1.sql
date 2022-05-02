create database QLVEMB
USE QLVEMB

create table DIEMDAU
(MaDau nvarchar(50) primary key not null,
TenD nvarchar (100) not null )

create table DIEMCUOI
(MaCuoi nvarchar (50) primary key not null,
TenC NVARCHAR (100) NOT NULL)

create table MAYBAY
(MaMayBay INT IDENTITY(1,1) PRIMARY KEY,
TenMayBay nvarchar (50) not null,
HangSanXuat nvarchar (50) null,
SoGheLTG int not null,
SoGheLT int Not null)

create table CHUYENBAY
(MaChuyenBay INT IDENTITY(1,1) PRIMARY KEY,
MaMayBay int foreign key references MAYBAY(MaMayBay) on delete cascade on update cascade  not null,
MaDau nvarchar (50)foreign key references DIEMDAU(MaDau) on delete cascade on update cascade not null,
MaCuoi nvarchar(50)foreign key references DIEMCUOI(MaCuoi) on delete cascade on update cascade not null,
NgayDi nvarchar(50) not null,
NgayDen nvarchar(50) not null,
GioBay nvarchar(50) not null,
GioDen nvarchar(50)not null,
GhiChu Nvarchar (50) null)



create table NHANVIEN
(MaNhanVien INT IDENTITY(1,1) PRIMARY KEY,
TenNhanVien nvarchar (50) not null,
NgaySinh nvarchar(50) not null,
GioiTinh bit not null,
DiaChi nvarchar (50) not null,
SoDienThoai nvarchar (50) not null,
ChucVu nvarchar (50) null,
TenDangNhap nvarchar (50) not null,
MatKhau nvarchar (50) not null,
AnhNV nvarchar (50) null )

create table KHACHHANG
(CMND varchar(10)primary key not null,
TenKhachHang Nvarchar (50) not null,
GioiTinh bit not null,
Ngaysinh nvarchar(50) not null,
SoDienThoai nvarchar (50) not null,
DiaChi nvarchar (50) not null)

create table LOAIVE 
(MaLoai varchar (10) primary key not null,
TenLoai nvarchar(50) not null,
Gia nvarchar (50) not null)

create table VEBAN
(id INT IDENTITY(1,1) PRIMARY KEY,
MaLoai varchar (10) foreign key references LOAIVE(MaLoai) on delete cascade on update cascade  not null,
SLVeBan int not null,
MaNhanVien int foreign key references NHANVIEN(MaNhanVien) on delete cascade on update cascade not null,
CMND varchar (10)  foreign key references KHACHHANG(CMND) on delete cascade on update cascade not null,
MaChuyenBay int foreign key references CHUYENBAY(MaChuyenBay) on delete cascade on update cascade  not null,
TongGia int not null)


create table THONGBAO
(MaThongBao INT IDENTITY(1,1) PRIMARY KEY,
TieuDe nvarchar (50) not null,
NoiDung nvarchar(1000)
)




insert into MAYBAY
values (N'IT01 Airlines',N'Airbus',20,30)
insert into MAYBAY
values (N'IT02 Airlines',N'Airbus',30,40)
insert into MAYBAY
values (N'IT03 Airlines',N'Airbus',45,30)
insert into MAYBAY
values (N'IT04 Airlines',N'Boeing',30,60)


insert into DIEMDAU
 values ('DD01',N'Hà Nội')
 insert into DIEMDAU
 values ('DD02',N'Hồ Chí Minh')
 insert into DIEMDAU
 values ('DD03',N'Huế')
 insert into DIEMDAU
 values ('DD04',N'Quy Nhơn')
 insert into DIEMDAU
 values ('DD05',N'Đà Nẵng')
  insert into DIEMDAU
 values ('DD06',N'Nha Trang')
   insert into DIEMDAU
 values ('DD07',N'Côn Đảo')
   insert into DIEMDAU
 values ('DD08',N'Phú Quốc')
   insert into DIEMDAU
 values ('DD09',N'Buôn Ma Thuật')
   insert into DIEMDAU
 values ('DD10',N'Cà Mau')
   insert into DIEMDAU
 values ('DD11',N'Cần Thơ')
   insert into DIEMDAU
 values ('DD12',N'Chu Lai')
   insert into DIEMDAU
 values ('DD13',N'Đà Lạt')
   insert into DIEMDAU
 values ('DD14',N'Điện Biên Phủ')
   insert into DIEMDAU
 values ('DD15',N'Đồng Hới')
   insert into DIEMDAU
 values ('DD16',N'Hải Phòng')
   insert into DIEMDAU
 values ('DD17',N'Pleiku')
   insert into DIEMDAU
 values ('DD18',N'Rạch Giá')
   insert into DIEMDAU
 values ('DD19',N'Thanh Hóa')
   insert into DIEMDAU
 values ('DD20',N'Tuy Hòa')
   insert into DIEMDAU
 values ('DD21',N'Vân Đồn')
   insert into DIEMDAU
 values ('DD22',N'Vinh')

insert into DIEMCUOI
 values ('DD01',N'Hà Nội')
 insert into DIEMCUOI
 values ('DD02',N'Hồ Chí Minh')
 insert into  DIEMCUOI
 values ('DD03',N'Huế')
 insert into  DIEMCUOI
 values ('DD04',N'Quy Nhơn')
 insert into DIEMCUOI
 values ('DD05',N'Đà Nẵng')
  insert into  DIEMCUOI
 values ('DD06',N'Nha Trang')
   insert into  DIEMCUOI
 values ('DD07',N'Côn Đảo')
   insert into  DIEMCUOI
 values ('DD08',N'Phú Quốc')
   insert into DIEMCUOI
 values ('DD09',N'Buôn Ma Thuột')
   insert into  DIEMCUOI
 values ('DD10',N'Cà Mau')
   insert into  DIEMCUOI
 values ('DD11',N'Cần Thơ')
   insert into  DIEMCUOI
 values ('DD12',N'Chu Lai')
   insert into DIEMCUOI
 values ('DD13',N'Đà Lạt')
   insert into DIEMCUOI
 values ('DD14',N'Điện Biên Phủ')
   insert into  DIEMCUOI
 values ('DD15',N'Đồng Hới')
   insert into  DIEMCUOI
 values ('DD16',N'Hải Phòng')
   insert into  DIEMCUOI
 values ('DD17',N'Pleiku')
   insert into  DIEMCUOI
 values ('DD18',N'Rạch Giá')
   insert into  DIEMCUOI
 values ('DD19',N'Thanh Hóa')
   insert into  DIEMCUOI
 values ('DD20',N'Tuy Hòa')
   insert into  DIEMCUOI
 values ('DD21',N'Vân Đồn')
   insert into  DIEMCUOI
 values ('DD22',N'Vinh')
 
INSERT INTO CHUYENBAY 
VALUES (1,'DD01','DD02','2/12/2020','3/12/2020','16:00','16:50','')
INSERT INTO CHUYENBAY 
VALUES (4,'DD02','DD05','4/12/2020','5/12/2020','4:00','4:50','')

insert into NHANVIEN
values (N'Võ Hoàng Quân','22/09/1998',0,N'Tuy Phứoc','0326487961',N'Quản lý','quan','123','')


insert into KHACHHANG
values ('215475049',N'Lê Bảo Châu',1,'08/11/1985',0956354657,N'Quảng Nam')
insert into KHACHHANG
values ('215474545',N'Nguyễn Tiến Dũng',0,'05/23/1998',01238026561,N'Hà Nội')

insert into LOAIVE
values('LV01',N'Hạng Thường',1800000)
insert into LOAIVE
values('LV02',N'Hạng Thương Gia',3000000)

insert into VEBAN
values ('LV01','1',1,'215475049',1,'1800000')
insert into VEBAN
values ('LV02','1',1,'215474545',2,'3000000')
select *from VEBAN

INSERT INTO THONGBAO
VALUES(N'Delay',N'Delay chuyến bay')
INSERT INTO THONGBAO
VALUES(N'Thông Báo',N'NNHP Airlines hỗ trợ hành khách khi ngừng phát thanh tới nhà ga quốc nội sân bay Cam Ranh (Nha Trang)')
select *from THONGBAO
select *from CHUYENBAY
select *from MAYBAY
select *from NHANVIEN
select *from KHACHHANG
select *from VEBAN
select *from LOAIVE
select *from DIEMDAU
delete from CHUYENBAY
SELECT *FROM DIEMCUOI