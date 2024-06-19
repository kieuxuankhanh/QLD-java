-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3308
-- Thời gian đã tạo: Th6 19, 2024 lúc 10:46 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlydiem`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banglop`
--

CREATE TABLE `banglop` (
  `MaLop` varchar(10) NOT NULL,
  `TenLop` varchar(30) NOT NULL,
  `NamHoc` varchar(30) NOT NULL,
  `Khoi` int(11) NOT NULL,
  `SiSo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banglop`
--

INSERT INTO `banglop` (`MaLop`, `TenLop`, `NamHoc`, `Khoi`, `SiSo`) VALUES
('aa', '1b', '2023-2024', 1, 23),
('aaaa', '10A9', '2024-2025', 10, 34),
('asx', '11A2', '20203', 11, 23),
('dd', '1q', 'aa', 4, 2),
('dgfd', 'gfdgfd', 'gfdgfd', 557, 55),
('ml1', '11A9', '2021-2023', 11, 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem`
--

CREATE TABLE `diem` (
  `MaHocSinh` varchar(10) NOT NULL,
  `MaLop` varchar(10) NOT NULL,
  `MaMon` varchar(10) NOT NULL,
  `DiemMieng` float NOT NULL,
  `Diem1Tiet` float NOT NULL,
  `DiemHetKy` float NOT NULL,
  `DiemTB` float NOT NULL,
  `MaHocKy` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diem`
--

INSERT INTO `diem` (`MaHocSinh`, `MaLop`, `MaMon`, `DiemMieng`, `Diem1Tiet`, `DiemHetKy`, `DiemTB`, `MaHocKy`) VALUES
('h1', 'aa', 'hh', 9, 10, 8, 8.83333, 'aasas'),
('h1', 'aaaa', 'hh', 7, 5, 9, 7.33333, 'aasas'),
('h1', 'aaaa', 'mh1', 5, 3, 6, 4.83333, 'hk1'),
('h2', 'aa', 'hh', 6, 8, 8, 7.66667, 'aasas'),
('h2', 'asx', 'mh1', 6, 7, 9, 7.83333, 'hk1'),
('h3', 'aaaa', 'hh', 9, 8, 7, 7.66667, 'hk2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocky`
--

CREATE TABLE `hocky` (
  `MaHocKy` varchar(6) NOT NULL,
  `TenHocKy` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hocky`
--

INSERT INTO `hocky` (`MaHocKy`, `TenHocKy`) VALUES
('aasas', 'asada'),
('hk1', 'Hoc Ky 1'),
('hk12', 'hoc ki 12'),
('hk2', 'Hoc Ky 2'),
('hk3', 'Học Kỳ Phụ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocsinh`
--

CREATE TABLE `hocsinh` (
  `MaHocSinh` varchar(10) NOT NULL,
  `TenHocSinh` varchar(30) NOT NULL,
  `NgaySinh` varchar(30) NOT NULL,
  `DanToc` varchar(10) NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hocsinh`
--

INSERT INTO `hocsinh` (`MaHocSinh`, `TenHocSinh`, `NgaySinh`, `DanToc`, `GioiTinh`) VALUES
('h1', 'Nguyen Tien Thanh', '11/04/2003', 'Kinh', 1),
('h2', 'Nguyen Diep Anh', '22/02/2003', 'Kinh', 0),
('h3', 'Phan Bich Ngoc', '26/11/2003', 'Kinh', 0),
('hh', 'sasd', 'asa', 's', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMon` varchar(10) NOT NULL,
  `TenMon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`MaMon`, `TenMon`) VALUES
('hh', 'The Duc'),
('mh1', 'Toan'),
('mh2', 'Van'),
('mh3', 'Ve');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banglop`
--
ALTER TABLE `banglop`
  ADD PRIMARY KEY (`MaLop`);

--
-- Chỉ mục cho bảng `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`MaHocSinh`,`MaLop`,`MaMon`,`MaHocKy`),
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaMon` (`MaMon`),
  ADD KEY `MaHocKy` (`MaHocKy`);

--
-- Chỉ mục cho bảng `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`MaHocKy`);

--
-- Chỉ mục cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`MaHocSinh`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMon`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`MaHocSinh`) REFERENCES `hocsinh` (`MaHocSinh`),
  ADD CONSTRAINT `diem_ibfk_2` FOREIGN KEY (`MaLop`) REFERENCES `banglop` (`MaLop`),
  ADD CONSTRAINT `diem_ibfk_3` FOREIGN KEY (`MaMon`) REFERENCES `monhoc` (`MaMon`),
  ADD CONSTRAINT `diem_ibfk_4` FOREIGN KEY (`MaHocKy`) REFERENCES `hocky` (`MaHocKy`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
