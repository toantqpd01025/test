-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-22 00:51:54.783




-- tables
-- Table: TB_Nhanvien
CREATE TABLE TB_Nhanvien (
    Ma_NV int  NOT NULL,
    Ten_NV varchar(50)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh varchar(50)  NOT NULL,
    Email varchar(50)  NOT NULL,
    Mucluong varchar(50)  NOT NULL,
    Ma_Phong varchar(50)  NOT NULL,
    CONSTRAINT TB_Nhanvien_pk PRIMARY KEY  (Ma_NV)
)
;





-- Table: TB_Phongban
CREATE TABLE TB_Phongban (
    Ma_Phong int  NOT NULL,
    Ten_Phong varchar(50)  NOT NULL,
    TB_Nhanvien_Ma_NV int  NOT NULL,
    CONSTRAINT TB_Phongban_pk PRIMARY KEY  (Ma_Phong)
)
;









-- foreign keys
-- Reference:  TB_Phongban_TB_Nhanvien (table: TB_Phongban)


ALTER TABLE TB_Phongban ADD CONSTRAINT TB_Phongban_TB_Nhanvien 
    FOREIGN KEY (TB_Nhanvien_Ma_NV)
    REFERENCES TB_Nhanvien (Ma_NV)
;





-- End of file.

