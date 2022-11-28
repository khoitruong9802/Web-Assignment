-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 02:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` enum('admin','sale','manager') NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `address`, `role`, `create_date`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin PTN', 'smartshopPTN@gmail.com', '0387503640', 'Kí túc xá Khu A\r\n', 'admin', '2022-05-30 08:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `user` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `name`, `code`, `image`, `description`, `create_date`, `user`) VALUES
(1, 'Sam Sung ', '###   SamSung   ###    ', 'public/uploads/samsung.png', '<p><b>Tập đo&agrave;n Samsung</b>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Tri%E1%BB%81u_Ti%C3%AAn\" title=\"Tiếng Triều Tiên\">tiếng H&agrave;n</a>: 삼성,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Romaja_qu%E1%BB%91c_ng%E1%BB%AF\" title=\"Romaja quốc ngữ\">Romaja</a>: &quot;Samseong&quot;,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Phi%C3%AAn_%C3%A2m_qu%E1%BB%91c_t%E1%BA%BF\" title=\"Phiên âm quốc tế\">phi&ecirc;n &acirc;m chuẩn</a>: &quot;Xam-x&acirc;ng&quot;,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Hanja\" title=\"Hanja\">Hanja</a>: 三星;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Phi%C3%AAn_%C3%A2m_H%C3%A1n-Vi%E1%BB%87t\" title=\"Phiên âm Hán-Việt\">phi&ecirc;n &acirc;m H&aacute;n-Việt</a>: &quot;<a href=\"https://vi.wikipedia.org/wiki/Sao\" title=\"Sao\">Tam Tinh</a>&quot; &ndash; c&oacute; nghĩa l&agrave; &quot;<a href=\"https://vi.wikipedia.org/wiki/3_(s%E1%BB%91)\" title=\"3 (số)\">3</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Sao\" title=\"Sao\">ng&ocirc;i sao</a>&quot;) &ndash; l&agrave; một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/T%E1%BA%ADp_%C4%91o%C3%A0n_%C4%91a_qu%E1%BB%91c_gia\" title=\"Tập đoàn đa quốc gia\">tập đo&agrave;n đa quốc gia</a>&nbsp;khổng lồ của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%C3%A0n_Qu%E1%BB%91c\" title=\"Hàn Quốc\">H&agrave;n Quốc</a>&nbsp;c&oacute;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/V%C4%83n_ph%C3%B2ng\" title=\"Văn phòng\">tổng h&agrave;nh dinh</a>&nbsp;được đặt tại khu phức hợp&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Samsung_Town\" title=\"Samsung Town\">Samsung Town</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Qu%E1%BA%ADn\" title=\"Quận\">quận</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Seocho-gu\" title=\"Seocho-gu\">Seocho-gu</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%C3%A0nh_ph%E1%BB%91\" title=\"Thành phố\">th&agrave;nh phố</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Seoul\" title=\"Seoul\">Seoul</a>.&nbsp;<a href=\"https://vi.wikipedia.org/wiki/T%E1%BA%ADp_%C4%91o%C3%A0n\" title=\"Tập đoàn\">Tập đo&agrave;n</a>&nbsp;n&agrave;y hiện sở hữu rất nhiều&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%C3%B4ng_ty_l%C3%A9p_v%E1%BB%91n\" title=\"Công ty lép vốn\">c&ocirc;ng ty con</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%E1%BB%87_th%E1%BB%91ng\" title=\"Hệ thống\">chuỗi hệ thống</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/B%C3%A1n_h%C3%A0ng\" title=\"Bán hàng\">b&aacute;n h&agrave;ng</a>&nbsp;c&ugrave;ng c&aacute;c&nbsp;<a href=\"https://vi.wikipedia.org/wiki/V%C4%83n_ph%C3%B2ng\" title=\"Văn phòng\">văn ph&ograve;ng đại diện</a>&nbsp;tr&ecirc;n phạm vi&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tr%C3%A1i_%C4%90%E1%BA%A5t\" title=\"Trái Đất\">to&agrave;n cầu</a>, hầu hết đều đang hoạt động dưới&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nh%C3%A3n_hi%E1%BB%87u\" title=\"Nhãn hiệu\">t&ecirc;n</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%C6%B0%C6%A1ng_hi%E1%BB%87u\" title=\"Thương hiệu\">thương hiệu</a>&nbsp;Samsung, đ&acirc;y l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/T%E1%BA%ADp_%C4%91o%C3%A0n\" title=\"Tập đoàn\">tập đo&agrave;n</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Chaebol\" title=\"Chaebol\">T&agrave;i phiệt</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90a_ng%C3%A0nh\" title=\"Đa ngành\">đa ng&agrave;nh</a>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/Chaebol\" title=\"Chaebol\">Chaebol</a>) c&oacute; quy m&ocirc; v&agrave; tầm ảnh hưởng đến&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Kinh_t%E1%BA%BF_H%C3%A0n_Qu%E1%BB%91c\" title=\"Kinh tế Hàn Quốc\">nền kinh tế</a>&nbsp;lớn nhất tại&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%C3%A0n_Qu%E1%BB%91c\" title=\"Hàn Quốc\">H&agrave;n Quốc</a>&nbsp;n&oacute;i ri&ecirc;ng v&agrave; đồng thời cũng l&agrave; một trong những&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%C6%B0%C6%A1ng_hi%E1%BB%87u\" title=\"Thương hiệu\">thương hiệu</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%C3%B4ng_ngh%E1%BB%87\" title=\"Công nghệ\">c&ocirc;ng nghệ</a>&nbsp;đắt gi&aacute; bậc nhất tr&ecirc;n&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%E1%BA%BF_gi%E1%BB%9Bi\" title=\"Thế giới\">thế giới</a>&nbsp;hiện nay</p>\r\n', '28/11/2022', 'admin '),
(2, 'Apple', '###   Apple   ###', 'public/uploads/apple.png', '<p><b>Apple Inc.</b>&nbsp;l&agrave; một tập đo&agrave;n c&ocirc;ng nghệ của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Hoa_K%E1%BB%B3\" title=\"Hoa Kỳ\">Mỹ</a>&nbsp;c&oacute; trụ sở ch&iacute;nh đặt tại&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Cupertino,_California\" title=\"Cupertino, California\">Cupertino, California</a>. Apple được th&agrave;nh lập ng&agrave;y&nbsp;<a href=\"https://vi.wikipedia.org/wiki/1_th%C3%A1ng_4\" title=\"1 tháng 4\">1 th&aacute;ng 4</a>&nbsp;năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/1976\" title=\"1976\">1976</a>&nbsp;dưới t&ecirc;n&nbsp;<b>Apple Computer, Inc.</b>, v&agrave; đổi t&ecirc;n th&agrave;nh&nbsp;<b>Apple Inc.</b>&nbsp;v&agrave;o đầu năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/2007\" title=\"2007\">2007</a>. Với lượng sản phẩm b&aacute;n ra to&agrave;n cầu h&agrave;ng năm l&agrave; 13,9 tỷ&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%C3%B4_la_M%E1%BB%B9\" title=\"Đô la Mỹ\">đ&ocirc; la Mỹ</a>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/2005\" title=\"2005\">2005</a>), 74 triệu thiết bị iPhone được b&aacute;n ra&nbsp;<b>chỉ trong một qu&yacute; 4</b>&nbsp;năm 2014 v&agrave; c&oacute; hơn 98.000 nh&acirc;n vi&ecirc;n ở nhiều quốc gia, sản phẩm l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/M%C3%A1y_t%C3%ADnh_c%C3%A1_nh%C3%A2n\" title=\"Máy tính cá nhân\">m&aacute;y t&iacute;nh c&aacute; nh&acirc;n</a>, phần mềm, phần cứng, thiết bị nghe nhạc v&agrave; nhiều thiết bị đa phương tiện kh&aacute;c. Sản phẩm nổi tiếng nhất l&agrave; m&aacute;y t&iacute;nh&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Apple_Macintosh\" title=\"Apple Macintosh\">Apple Macintosh</a>, m&aacute;y nghe nhạc&nbsp;<a href=\"https://vi.wikipedia.org/wiki/IPod\" title=\"IPod\">iPod</a>&nbsp;(2001), chương tr&igrave;nh nghe nhạc&nbsp;<a href=\"https://vi.wikipedia.org/wiki/ITunes\" title=\"ITunes\">iTunes</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/IPhone\" title=\"IPhone\">điện thoại iPhone</a>&nbsp;(2007),&nbsp;<a href=\"https://vi.wikipedia.org/wiki/IPad\" title=\"IPad\">m&aacute;y t&iacute;nh bảng iPad</a>&nbsp;(2010) v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Apple_Watch\" title=\"Apple Watch\">đồng hồ th&ocirc;ng minh Apple Watch</a>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/2014\" title=\"2014\">2014</a>) hoạt động tr&ecirc;n nhiều&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Qu%E1%BB%91c_gia\" title=\"Quốc gia\">quốc gia</a>&nbsp;tr&ecirc;n&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%E1%BA%BF_gi%E1%BB%9Bi\" title=\"Thế giới\">thế giới</a>.</p>\r\n', '28/11/2022', 'admin'),
(3, 'Sony', '###   Sony   ###', 'public/uploads/sony.jpg', '<p>Sony l&agrave; một trong những thương hiệu to&agrave;n cầu nổi tiếng nhất về điện tử ti&ecirc;u d&ugrave;ng nhờ v&agrave;o những s&aacute;ng tạo đột ph&aacute; mang t&iacute;nh c&aacute;ch mạng v&agrave; chất lượng sản phẩm. Th&agrave;nh c&ocirc;ng của Sony tại thị trường Việt Nam l&agrave; bởi thương hiệu Sony lu&ocirc;n thể hiện được bản sắc ri&ecirc;ng một c&aacute;ch mạnh mẽ v&agrave; ấn tượng, kết hợp giữa chất lượng sản phẩm-c&ocirc;ng nghệ h&agrave;ng đầu-kiểu d&aacute;ng thiết kế độc đ&aacute;o v&agrave; c&aacute;ch x&acirc;y dựng thương hiệu s&aacute;ng tạo-t&ocirc;n trọng văn h&oacute;a bản địa tiếp tục n&acirc;ng cao tinh thần s&aacute;ng tạo của m&igrave;nh để lu&ocirc;n tạo ra sản phẩm chất lượng cho người d&ugrave;ng.</p>\r\n', '28/11/2022', 'admin'),
(4, 'Nokia', '###   Nokia   ###', 'public/uploads/nokia.png', '<p><b>Nokia Corporation</b>&nbsp;(pronunciation&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=Tr%E1%BB%A3_gi%C3%BAp:Pronunciation&amp;action=edit&amp;redlink=1\" title=\"Trợ giúp:Pronunciation (trang chưa được viết)\">/&#39;nɔkiɑ/</a>) (<a href=\"https://vi.wikipedia.org/w/index.php?title=Nasdaq_Nordic&amp;action=edit&amp;redlink=1\" title=\"Nasdaq Nordic (trang chưa được viết)\">Nasdaq Helsinki</a>:&nbsp;<a href=\"http://www.nasdaqomxnordic.com/aktier/microsite?languageId=1&amp;Instrument=HEX24311\" rel=\"nofollow\">NOK1V</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/S%E1%BB%9F_giao_d%E1%BB%8Bch_ch%E1%BB%A9ng_kho%C3%A1n_New_York\" title=\"Sở giao dịch chứng khoán New York\">NYSE</a>:&nbsp;<a href=\"https://www.nyse.com/quote/XNYS:NOK\" rel=\"nofollow\">NOK</a>,&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=S%C3%A0n_giao_d%E1%BB%8Bch_ch%E1%BB%A9ng_kho%C3%A1n_Frankfurt&amp;action=edit&amp;redlink=1\" title=\"Sàn giao dịch chứng khoán Frankfurt (trang chưa được viết)\">FWB</a>:&nbsp;<a href=\"http://deutsche-boerse.com/dbag/dispatch/en/isg/gdb_navigation/home/Content_Files/20_overview_pages/cp_sp_overview_xetra.htm?action=ISGFormProcessingAction&amp;eventSubmit_doSimplestocksearch=true&amp;wp=NOA3&amp;x=0&amp;y=0\" rel=\"nofollow\">NOA3</a>) l&agrave; một tập đo&agrave;n đa quốc gia c&oacute; trụ sở tại&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=Keilaniemi&amp;action=edit&amp;redlink=1\" title=\"Keilaniemi (trang chưa được viết)\">Keilaniemi</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Espoo\" title=\"Espoo\">Espoo</a>, một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%C3%A0nh_ph%E1%BB%91\" title=\"Thành phố\">th&agrave;nh phố</a>&nbsp;l&aacute;ng giềng của thủ đ&ocirc;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Helsinki\" title=\"Helsinki\">Helsinki</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ph%E1%BA%A7n_Lan\" title=\"Phần Lan\">Phần Lan</a>. Nokia tập trung v&agrave;o c&aacute;c sản phẩm viễn th&ocirc;ng kh&ocirc;ng d&acirc;y v&agrave; cố định, với 129.746 nh&acirc;n vi&ecirc;n l&agrave;m việc ở 120&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Qu%E1%BB%91c_gia\" title=\"Quốc gia\">quốc gia</a>, b&aacute;n sản phẩm ở hơn 150 quốc gia tr&ecirc;n to&agrave;n cầu v&agrave; đạt doanh số 41 tỷ&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Euro\" title=\"Euro\">euro</a>&nbsp;với lợi tức 1,2 tỷ năm 2009.<sup id=\"cite_ref-AR2009_3-0\"><a href=\"https://vi.wikipedia.org/wiki/Nokia#cite_note-AR2009-3\">[3]</a></sup><sup id=\"cite_ref-Nokia_in_brief_4-0\"><a href=\"https://vi.wikipedia.org/wiki/Nokia#cite_note-Nokia_in_brief-4\">[4]</a></sup>&nbsp;Đ&acirc;y l&agrave; nh&agrave; sản xuất&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90i%E1%BB%87n_tho%E1%BA%A1i_di_%C4%91%E1%BB%99ng\" title=\"Điện thoại di động\">điện thoại di động</a>&nbsp;lớn nhất thế giới với thị phần to&agrave;n cầu sản phẩm n&agrave;y chiếm khoảng 40% trong qu&yacute; 2 năm 2008, tăng so với mức 38% qu&yacute; 2 năm 2007 v&agrave; tăng từ tỷ lệ 39% li&ecirc;n tục.<sup id=\"cite_ref-Quarter_5-0\"><a href=\"https://vi.wikipedia.org/wiki/Nokia#cite_note-Quarter-5\">[5]</a></sup></p>\r\n\r\n<p>Ng&agrave;y&nbsp;<a href=\"https://vi.wikipedia.org/wiki/3_th%C3%A1ng_9\" title=\"3 tháng 9\">3 th&aacute;ng 9</a>&nbsp;năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/2013\" title=\"2013\">2013</a>, Nokia c&ocirc;ng bố sẽ b&aacute;n lại bộ phận Thiết bị v&agrave; Dịch vụ cho&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&nbsp;với gi&aacute; 5,4 tỷ Euro (7.17 tỷ USD).<sup id=\"cite_ref-6\"><a href=\"https://vi.wikipedia.org/wiki/Nokia#cite_note-6\">[6]</a></sup><sup id=\"cite_ref-verge-msnokia_7-0\"><a href=\"https://vi.wikipedia.org/wiki/Nokia#cite_note-verge-msnokia-7\">[7]</a></sup><sup id=\"cite_ref-mswsj-noki_8-0\"><a href=\"https://vi.wikipedia.org/wiki/Nokia#cite_note-mswsj-noki-8\">[8]</a></sup>&nbsp;Ng&agrave;y&nbsp;<a href=\"https://vi.wikipedia.org/wiki/4_th%C3%A1ng_12\" title=\"4 tháng 12\">4 th&aacute;ng 12</a>&nbsp;năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/2013\" title=\"2013\">2013</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Li%C3%AAn_minh_ch%C3%A2u_%C3%82u\" title=\"Liên minh châu Âu\">Li&ecirc;n minh ch&acirc;u &Acirc;u</a>&nbsp;đ&atilde; ch&iacute;nh thức k&yacute; v&agrave;o bản chấp thuận thương vụ mua lại n&agrave;y của Microsoft. Sau khi đồng &yacute; b&aacute;n Nokia về Microsoft,&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=CEO_Stephen_Elop&amp;action=edit&amp;redlink=1\" title=\"CEO Stephen Elop (trang chưa được viết)\">CEO Stephen Elop</a>&nbsp;của Nokia đ&atilde; nộp đơn từ chức v&agrave; quay trở lại l&agrave;m việc cho&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>&nbsp;với nhiệm vụ dẫn đắt bộ phận thiết bị di động<sup id=\"cite_ref-Dân_trí_9-0\"><a href=\"https://vi.wikipedia.org/wiki/Nokia#cite_note-D%C3%A2n_tr%C3%AD-9\">[9]</a></sup>. Ng&agrave;y&nbsp;<a href=\"https://vi.wikipedia.org/wiki/25_th%C3%A1ng_4\" title=\"25 tháng 4\">25 th&aacute;ng 4</a>&nbsp;năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/2014\" title=\"2014\">2014</a>, Nokia tuy&ecirc;n bố ch&iacute;nh thức ho&agrave;n tất thương vụ b&aacute;n bộ phận sản xuất thiết bị cầm tay cho&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>. Tuy nhi&ecirc;n 2 nh&agrave; m&aacute;y tại&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%E1%BA%A4n_%C4%90%E1%BB%99\" title=\"Ấn Độ\">Ấn Độ</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%C3%A0n_Qu%E1%BB%91c\" title=\"Hàn Quốc\">H&agrave;n Quốc</a>&nbsp;sẽ nằm ngo&agrave;i thỏa thuận n&agrave;y. Ngo&agrave;i ra do một &quot;kh&uacute;c mắc trong vấn đề thuế&quot; với ch&iacute;nh quyền&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%E1%BA%A4n_%C4%90%E1%BB%99\" title=\"Ấn Độ\">Ấn Độ</a>, Nokia sẽ vận h&agrave;nh nh&agrave; m&aacute;y sản xuất Chennai tại đ&acirc;y l&agrave; như một đơn vị sản xuất hợp đồng cho&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Microsoft\" title=\"Microsoft\">Microsoft</a>. B&ecirc;n cạnh đ&oacute; nh&agrave; sản xuất điện thoại Phần Lan sẽ đ&oacute;ng cửa một nh&agrave; m&aacute;y với 200 nh&acirc;n c&ocirc;ng ở Masan,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%C3%A0n_Qu%E1%BB%91c\" title=\"Hàn Quốc\">H&agrave;n Quốc</a><sup id=\"cite_ref-10\"><a href=\"https://vi.wikipedia.org/wiki/Nokia#cite_note-10\">[10]</a></sup>.</p>\r\n', '28/11/2022', 'admin'),
(5, 'Dell', '###   Dell   ###', 'public/uploads/dell.png', '<p><strong>Logo Dell</strong>&nbsp;trải qua hơn 30 năm h&agrave;nh th&agrave;nh, x&acirc;y dựng v&agrave; ph&aacute;t triển đến ng&agrave;y h&ocirc;m nay vẫn giữ biểu tượng logo quen thuộc c&ugrave;ng d&ograve;ng chữ Dell được thiết kế chữ &ldquo;E&rdquo; c&aacute;ch điệu, tạo th&agrave;nh một kiểu chữ xoay nghi&ecirc;ng kh&aacute;c biệt so với c&aacute;c chữ c&ograve;n lại. Giải th&iacute;ch cho&nbsp;<strong>&yacute; nghĩa logo Dell</strong>&nbsp;n&agrave;y, đội ngũ thiết kế cho biết h&atilde;ng muốn thể hiện sự đột ph&aacute;, thể hiện tham vọng muốn thay đổi ng&agrave;nh c&ocirc;ng nghệ m&aacute;y t&iacute;nh của to&agrave;n thế giới bằng ch&iacute;nh những sản phẩm do h&atilde;ng Dell nghi&ecirc;n cứu v&agrave; sản xuất. Kh&ocirc;ng những vậy, thiết kế chữ &ldquo;E&rdquo; độc đ&aacute;o n&agrave;y c&ograve;n, cha đẻ của h&atilde;ng Dell cho biết đ&oacute; l&agrave; ấn &yacute; &ocirc;ng muốn nhấn mạnh tới cụm từ &quot;Turning the world on its ear&rdquo; muốn biến cả thế giới v&agrave;o tay m&igrave;nh.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, nếu để &yacute; c&aacute;c phi&ecirc;n bản thi&ecirc;t kế logo của Dell tuy kh&ocirc;ng c&oacute; sự thay đổi nhiều so với tổng thế nhưng để &yacute; kỹ bạn c&oacute; thể nhận ra chữ &ldquo;E&rdquo; đ&atilde; được&nbsp;tạo&nbsp; độ nghi&ecirc;ng nhiều hơn. Bao quanh với chữ Dell được thiết kế độc đ&aacute;o l&agrave; biểu tượng v&ograve;ng tr&ograve;n m&agrave;u xanh biểu tượng cho quả địa cầu, sắc xanh đươc sử dụng cho biểu tượng v&ograve;ng tr&ograve;n b&ecirc;n ngo&agrave;i biểu trưng cho l&ograve;ng nhiệt huyết, sự trung th&agrave;nh, tin cậy, s&aacute;ng tạo v&agrave; đột ph&aacute;. T&iacute;nh đến thời điểm hiện tại, phi&ecirc;n bản&nbsp;<strong>logo Dell</strong>&nbsp;được sử dụng hiện h&agrave;nh l&agrave; phi&ecirc;n bản được thiết kế cuối c&ugrave;ng v&agrave;o năm 2010.</p>\r\n', '28/11/2022', 'admin'),
(6, 'Hp', '###   Hp   ###', 'public/uploads/hp.png', '<p><strong>Giới thiệu HP</strong>: theo Wikipedia,&nbsp;HP l&agrave; t&ecirc;n viết tắt của tập đo&agrave;n Hewlett-Packard. Đ&acirc;y l&agrave; một trong những tập đo&agrave;n thuộc top đầu thế giới về lĩnh vực c&ocirc;ng nghệ th&ocirc;ng tin. C&ocirc;ng ty được th&agrave;nh lập từ năm 1939 bởi Bill Hewlett v&agrave; Dave Packard. Hiện tại, tập đo&agrave;n c&oacute; trụ sở đặt tại Cupertino, California, Hoa Kỳ. Ch&iacute;nh sự th&agrave;nh lập n&agrave;y đ&atilde; khai sinh ra thương hiệu HP nổi tiếng to&agrave;n cầu như hiện nay.</p>\r\n\r\n<p>Tiền th&acirc;n của thương hiệu HP với số vốn ban đầu &iacute;t ỏi, được th&agrave;nh lập l&agrave; một nh&agrave; sản xuất c&aacute;c c&ocirc;ng cụ chuy&ecirc;n dụng cho hệ thống đo lường, kiểm định. Sau một thời gian, c&ocirc;ng ty dần mở rộng quy m&ocirc; với văn ph&ograve;ng lớn hơn v&agrave; bất đầu chuyển hướng kinh doanh, ph&aacute;t triển đa dạng c&aacute;c d&ograve;ng sản phẩm hơn.</p>\r\n\r\n<p>T&iacute;nh đến thời điểm hiện tại, thương hiệu HP đ&atilde; trải qua hơn 80 năm h&igrave;nh th&agrave;nh, x&acirc;y dựng v&agrave; ph&aacute;t triển, để c&oacute; được th&agrave;nh c&ocirc;ng v&agrave; được nhiều người biết đến như ng&agrave;y h&ocirc;m nay, thương hiệu cũng đ&atilde; trải qua nhiều kh&oacute; khăn, th&aacute;ch thức để c&oacute; đạt được th&agrave;nh c&ocirc;ng vang dội.</p>\r\n', '28/11/2022', 'admin'),
(8, 'Vertu', '###   Vertu   ###', 'public/uploads/vertu.png', '<p>No description</p>\r\n', '28/11/2022', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `total_num` int(11) NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `code`, `image`, `description`, `create_date`, `user`) VALUES
(12, 'Lap Top', '###   LapTop   ###', 'public/uploads/laptop.jpg', '<p>M&aacute;y t&iacute;nh laptop hay m&aacute;y laptop gi&aacute; rẻ vi t&iacute;nh x&aacute;ch tay (tiếng anh laptop computer hay notebook computer) l&agrave; một m&aacute;y t&iacute;nh c&aacute; nh&acirc;n gọn nhỏ c&oacute; thể mang x&aacute;ch được. N&oacute; thường c&oacute; trọng lương nhẹ, t&ugrave;y thuộc v&agrave;o h&atilde;ng sản xuất v&agrave; kiểu m&aacute;y d&agrave;nh cho c&aacute;c mục đ&iacute;ch sử dụng kh&aacute;c nhau.</p>\r\n', '28/11/2022', 'admin'),
(13, 'Điện Thoại', '###   SmartPhone   ###', 'public/uploads/dienthoai.jpg', '<h2 dir=\"ltr\"><strong><a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"smartphone\" type=\"smartphone\">Điện thoại th&ocirc;ng minh</a><strong>&nbsp;</strong>hay n&oacute;i c&aacute;ch kh&aacute;c l&agrave; điện thoại th&ocirc;ng minh, đang trở n&ecirc;n rất phổ biến trong những năm trở lại đ&acirc;y, nhất l&agrave; 2013 v&agrave; 2014. Tuổi teen cũng d&ugrave;ng smartphone, thanh thi&ecirc;n, trung ni&ecirc;n v&agrave; cho đến những người lớn tuổi hầu như ai cũng sử dụng sản phẩm ti&ecirc;n tiến n&agrave;y.</strong></h2>\r\n', '28/11/2022', 'admin'),
(14, 'Máy Tính Bảng', '###   TabLet   ###', 'public/uploads/tablet.jpg', '<p><b>M&aacute;y t&iacute;nh bảng</b>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Anh\" title=\"Tiếng Anh\">Tiếng Anh</a>: tablet computer hay tablet PC), th&ocirc;ng thường với hệ điều h&agrave;nh di động v&agrave; mạch xử l&yacute; m&agrave;n h&igrave;nh cảm ứng v&agrave; pin c&oacute; thể sạc lại trong một g&oacute;i phẳng, đơn lẻ. M&aacute;y t&iacute;nh bảng l&agrave; một m&aacute;y t&iacute;nh l&agrave;m những g&igrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/M%C3%A1y_t%C3%ADnh_c%C3%A1_nh%C3%A2n\" title=\"Máy tính cá nhân\">m&aacute;y t&iacute;nh c&aacute; nh&acirc;n</a>&nbsp;kh&aacute;c l&agrave;m, nhưng thiếu một số khả năng đầu v&agrave;o/đầu ra (I/O) m&agrave; c&aacute;c&nbsp;<a href=\"https://vi.wikipedia.org/wiki/M%C3%A1y_t%C3%ADnh\" title=\"Máy tính\">m&aacute;y t&iacute;nh</a>&nbsp;kh&aacute;c c&oacute;. M&aacute;y t&iacute;nh bảng hiện đại phần lớn giống với&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90i%E1%BB%87n_tho%E1%BA%A1i_th%C3%B4ng_minh\" title=\"Điện thoại thông minh\">điện thoại th&ocirc;ng minh</a>&nbsp;hiện đại, điểm kh&aacute;c biệt duy nhất l&agrave; m&aacute;y t&iacute;nh bảng tương đối lớn hơn&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90i%E1%BB%87n_tho%E1%BA%A1i_th%C3%B4ng_minh\" title=\"Điện thoại thông minh\">điện thoại th&ocirc;ng minh</a>, với m&agrave;n h&igrave;nh 7 inch (18cm) hoặc lớn hơn, được đo theo đường ch&eacute;o, v&agrave; c&oacute; thể kh&ocirc;ng hỗ trợ truy cập đến một mạng di động.</p>\r\n', '28/11/2022', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `create_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_cart`
--

CREATE TABLE `tbl_detail_cart` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `num_total` int(11) NOT NULL,
  `sub_total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `custom_id` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `total_num_product` int(11) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` enum('Thành công','Chờ xác nhận','Hủy','') NOT NULL,
  `id_cart` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_confirm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `promotional_price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` enum('còn hàng','hết hàng','hàng sắp về') NOT NULL,
  `description` text NOT NULL,
  `screen` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `operating_system` varchar(255) NOT NULL,
  `front_camera` varchar(255) NOT NULL,
  `rear_camera` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `level` enum('hot','normal','discount') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `id_category`, `id_brand`, `name`, `code`, `price`, `promotional_price`, `quantity`, `status`, `description`, `screen`, `ram`, `cpu`, `memory`, `operating_system`, `front_camera`, `rear_camera`, `user`, `create_date`, `image`, `level`) VALUES
(48, 13, 2, 'iPhone 14 Pro Max 1TB', '#phone01', 49990000, 48990000, 10, 'còn hàng', '<h3>Kiểu d&aacute;ng thiết kế sang trọng v&agrave; cao cấp</h3>\r\n\r\n<p>Cho đến nay th&igrave; kiểu d&aacute;ng thiết kế vu&ocirc;ng vức như thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-13-series\" target=\"_blank\" title=\"Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động\">iPhone 13 series</a>&nbsp;vẫn được người d&ugrave;ng rất ưa chuộng vậy n&ecirc;n Apple đ&atilde; giữ nguy&ecirc;n tạo h&igrave;nh n&agrave;y tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro-max\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">iPhone 14 Pro Max</a>, c&aacute;c cạnh v&agrave; hai mặt được gia c&ocirc;ng phẳng gi&uacute;p cho điện thoại to&aacute;t l&ecirc;n vẻ ngo&agrave;i sang trọng đầy t&iacute;nh thời thượng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051134.jpg\" onclick=\"return false;\"><img alt=\"Kiểu dáng sang trọng - iPhone 14 Pro Max 1TB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051134.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051134.jpg\" title=\"Kiểu dáng sang trọng - iPhone 14 Pro Max 1TB\" /></a></p>\r\n\r\n<p>Một trong những điểm nổi bật về thiết kế tr&ecirc;n phi&ecirc;n bản n&agrave;y ch&iacute;nh l&agrave; v&ugrave;ng cảm biến chứa camera ở phần mặt trước, thay v&igrave; cụm tai thỏ th&igrave; giờ đ&acirc;y h&atilde;ng đ&atilde; tinh chỉnh lại th&agrave;nh h&igrave;nh dạng kh&aacute; giống vi&ecirc;n thuốc gi&uacute;p mang lại trải nghiệm sử dụng mới lạ cũng như tăng kh&ocirc;ng gian hiển thị tr&ecirc;n m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051147.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế hình notch mới - iPhone 14 Pro Max 1TB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051147.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051147.jpg\" title=\"Thiết kế hình notch mới - iPhone 14 Pro Max 1TB\" /></a></p>\r\n\r\n<h3>Trải nghiệm th&iacute;ch hơn tr&ecirc;n m&agrave;n h&igrave;nh lớn</h3>\r\n\r\n<p>Được trang bị m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước l&ecirc;n tới 6.7 inch n&ecirc;n iPhone 14 Pro Max sẽ c&oacute; khả năng t&aacute;i hiện h&igrave;nh ảnh to r&otilde;, văn bản cũng sẽ được tr&igrave;nh chiếu nhiều hơn để phục vụ tốt cho c&aacute;c t&aacute;c vụ đọc b&aacute;o, lướt xem tin tức online.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051141.jpg\" onclick=\"return false;\"><img alt=\"Màn hình kích thước lớn - iPhone 14 Pro Max 1TB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051141.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051141.jpg\" title=\"Màn hình kích thước lớn - iPhone 14 Pro Max 1TB\" /></a></p>\r\n\r\n<p>Đi k&egrave;m với đ&oacute; sẽ l&agrave; c&ocirc;ng nghệ m&agrave;n h&igrave;nh OLED cao cấp c&ugrave;ng với sự tinh chỉnh v&agrave; đo đạc kỹ lưỡng đến từ nh&agrave; Apple, gi&uacute;p cho iPhone 14 Pro Max trở th&agrave;nh một sản phẩm c&oacute; khả năng t&aacute;i hiện m&agrave;u sắc c&oacute; độ ch&iacute;nh x&aacute;c cao bậc nhất thị trường&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động\">điện thoại</a>.</p>\r\n\r\n<p>Với tần số qu&eacute;t 120 Hz m&agrave; Apple hỗ trợ cho m&aacute;y n&ecirc;n tốc độ phản hồi của m&agrave;n h&igrave;nh được n&acirc;ng cao, vuốt chạm cơ bản hay chơi nhiều tựa game đều được diễn ra trơn tru v&agrave; mượt mắt.</p>\r\n\r\n<h3>Chụp ảnh chất lượng cao như một nhiếp ảnh gia thực thụ</h3>\r\n\r\n<p>Lần n&agrave;y Appe vẫn sẽ trang bị cho m&aacute;y 3 camera sau nhưng sẽ được tinh chỉnh với k&iacute;ch thước lớn hơn thế hệ trước, nhằm mang lại khả năng lấy s&aacute;ng tốt hơn hay thu được nhiều chi tiết hơn tr&ecirc;n bức ảnh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051143.jpg\" onclick=\"return false;\"><img alt=\"Camera chuẩn điện ảnh - iPhone 14 Pro Max 1TB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051143.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051143.jpg\" title=\"Camera chuẩn điện ảnh - iPhone 14 Pro Max 1TB\" /></a></p>\r\n\r\n<p>Với camera ch&iacute;nh n&acirc;ng cấp l&ecirc;n đến 48 MP được xem l&agrave; sự đột ph&aacute; rất lớn so với c&aacute;c d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Xem thêm iPhone chính hãng đang kinh doanh tại Thế Giới Di Động\">điện thoại iPhone</a>&nbsp;trước đ&acirc;y, kh&ocirc;ng chỉ gi&uacute;p bạn c&oacute; thể lưu lại nhiều bức ảnh sắc n&eacute;t hơn m&agrave; m&aacute;y c&ograve;n c&oacute; khả năng quay được những thước phim chuẩn điện ảnh 4K.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051145.jpg\" onclick=\"return false;\"><img alt=\"Chụp ảnh sắc nét - iPhone 14 Pro Max 1TB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051145.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289705/iphone-14-pro-max-1tb-090922-051145.jpg\" title=\"Chụp ảnh sắc nét - iPhone 14 Pro Max 1TB\" /></a></p>\r\n\r\n<h3>Hiệu năng cực khủng</h3>\r\n\r\n<p>Điện thoại sẽ được trang bị con chip mới do Apple sản xuất mang t&ecirc;n A16 Bionic 6 nh&acirc;n, kh&ocirc;ng chỉ đem đến cho thiết bị một hiệu năng h&agrave;ng đầu thế giới m&agrave; đ&acirc;y c&ograve;n l&agrave; vi xử l&yacute; c&oacute; thể tối ưu được thời lượng pin nhờ quy tr&igrave;nh sản xuất ti&ecirc;n tiến v&agrave; nhiều thuật to&aacute;n xử l&yacute; th&ocirc;ng minh đi k&egrave;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'OLED, 6.7', '6 GB', 'Apple A16 Bionic', '1 TB', 'iOS 16', '12 MP', 'Chính 48 MP & Phụ 12 MP, 12 MP', 'admin', '28/11/2022', 'public/uploads/phone01.jpg', 'hot'),
(49, 13, 2, 'iPhone 14 Pro 512GB', '#phone02', 40990000, 36990000, 10, 'còn hàng', '<h3>Thiết kế dẫn đầu xu thế</h3>\r\n\r\n<p>Phong c&aacute;ch thiết kế dẫn đầu xu thế thường thấy tr&ecirc;n c&aacute;c phi&ecirc;n bản như&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-13-series\" target=\"_blank\" title=\"Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động\">iPhone 13 series</a>&nbsp;vẫn được Apple &aacute;p dụng tr&ecirc;n d&ograve;ng sản phẩm mới của m&igrave;nh,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 14 Pro đang kinh doanh tại Thế Giới Di Động \">iPhone 14 Pro</a>&nbsp;sở hữu cạnh viền v&aacute;t phẳng đang l&agrave; trend ở thời điểm hiện tại c&ugrave;ng cụm camera mang những đặc trưng ri&ecirc;ng, tạo sự ho&agrave;n hảo trong từng đường n&eacute;t.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289694/iphone-14-pro-512gb-080922-094941.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế mới lạ - iPhone 14 Pro 512GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289694/iphone-14-pro-512gb-080922-094941.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289694/iphone-14-pro-512gb-080922-094941.jpg\" title=\"Thiết kế mới lạ - iPhone 14 Pro 512GB\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh đục lỗ theo h&igrave;nh vi&ecirc;n thuốc mang đến diện mạo mới, l&agrave;m tăng t&iacute;nh thẩm mỹ cũng như cung cấp kh&ocirc;ng gian hiển thị lớn, liền mạch hơn.</p>\r\n\r\n<h3>Giải tr&iacute; trọn vẹn với m&agrave;n h&igrave;nh si&ecirc;u sắc n&eacute;t</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh OLED k&iacute;ch thước 6.1 inch c&ugrave;ng độ ph&acirc;n giải 2556 x 1179 Pixels mang đến cho người d&ugrave;ng một kh&ocirc;ng gian hiển thị si&ecirc;u r&otilde; n&eacute;t đến từng chi tiết, m&agrave;u sắc được thể hiện ch&acirc;n thực với độ ch&iacute;nh x&aacute;c m&agrave;u cao, tạo trải nghiệm xem ho&agrave;n hảo.</p>\r\n\r\n<p>Tuy nhi&ecirc;n với nhu cầu sử dụng với m&agrave;n h&igrave;nh lớn hơn th&igrave; người d&ugrave;ng c&oacute; thể tham khảo th&ecirc;m phi&ecirc;n bản&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro-max\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 14 Pro Max đang kinh doanh tại Thế Giới Di Động\">iPhone 14 Pro Max</a>.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289694/iphone-14-pro-512gb-080922-094948.jpg\" onclick=\"return false;\"><img alt=\"Màn hình chất lượng - iPhone 14 Pro 512GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289694/iphone-14-pro-512gb-080922-094948.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289694/iphone-14-pro-512gb-080922-094948.jpg\" title=\"Màn hình chất lượng - iPhone 14 Pro 512GB\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh đục lỗ thiết kế theo h&igrave;nh vi&ecirc;n thuốc vừa tăng kh&ocirc;ng gian hiển thị vừa tạo cảm gi&aacute;c mới lạ cho người d&ugrave;ng, c&aacute;c chi tiết của một khung h&igrave;nh cũng được thể hiện r&otilde; r&agrave;ng hơn, bị che khuất &iacute;t hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289694/iphone-14-pro-512gb-080922-094953.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế hình notch mới - iPhone 14 Pro 512GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289694/iphone-14-pro-512gb-080922-094953.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289694/iphone-14-pro-512gb-080922-094953.jpg\" title=\"Thiết kế hình notch mới - iPhone 14 Pro 512GB\" /></a></p>\r\n\r\n<p>Mượt m&agrave; trong từng thao t&aacute;c cuộn lướt với m&agrave;n h&igrave;nh tần số qu&eacute;t 120 Hz, cho người d&ugrave;ng trải nghiệm giải tr&iacute; tuyệt vời đặc biệt l&agrave; khi chơi game hoặc xem video.</p>\r\n\r\n<h3>Camera n&acirc;ng cấp bắt trọn mọi khung h&igrave;nh</h3>\r\n\r\n<p>Sau nhiều năm giữ nguy&ecirc;n độ ph&acirc;n giải, th&igrave; giờ đ&acirc;y camera ch&iacute;nh của thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Xem thêm iPhone chính hãng đang kinh doanh tại Thế Giới Di Động\">điện thoại iPhone</a>&nbsp;mới nay đ&atilde; được n&acirc;ng cấp l&ecirc;n 48 MP để cho ra trải nghiệm chụp ảnh đỉnh cao, c&aacute;c chi tiết trong khung h&igrave;nh sẽ được thể hiện r&otilde; n&eacute;t hơn c&ugrave;ng khả năng quay video 4K si&ecirc;u sắc n&eacute;t.</p>\r\n', 'OLED, 6.1\"Super Retina XDR', '6 GB', 'Apple A16 Bionic', '512 GB', 'iOS16', '12 MP', 'Chính 48 MP & Phụ 12 MP, 12 MP', 'admin', '28/11/2022', 'public/uploads/phone02.jpg', 'hot'),
(50, 13, 2, 'iPhone 14 Pro 256GB', '#phone03', 34990000, 33390000, 15, 'còn hàng', '<h3>Ngoại h&igrave;nh tinh tế, hiện đại</h3>\r\n\r\n<p>Phong c&aacute;ch thiết kế hiện đại, tối giản vẫn được Apple &aacute;p dụng cho d&ograve;ng sản phẩm&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-14-series\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 14 series đang kinh doanh tại Thế Giới Di Động\">iPhone 14</a>&nbsp;năm nay, m&aacute;y c&oacute; cạnh viền v&aacute;t phẳng tạo sự trẻ trung v&agrave; hiện đại, đi c&ugrave;ng cụm ba camera bố tr&iacute; một c&aacute;ch ho&agrave;n hảo để tạo điểm nhấn mới.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-256gb-080922-092528.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế ấn tượng - iPhone 14 Pro 256GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-256gb-080922-092528.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-256gb-080922-092528.jpg\" title=\"Màn hình chất lượng - iPhone 14 Pro 256GB\" /></a></p>\r\n\r\n<p>Đặc biệt tai thỏ ở c&aacute;c thế hệ trước như&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-13-series\" target=\"_blank\" title=\"Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động\">iPhone 13 series</a>&nbsp;đ&atilde; được thay thế bằng h&igrave;nh vi&ecirc;n thuốc tr&ecirc;n m&agrave;n h&igrave;nh, kh&ocirc;ng những tăng sự tinh tế về mặt ngoại h&igrave;nh m&agrave; c&ograve;n gia tăng kh&ocirc;ng gian hiển thị, cung cấp cho người d&ugrave;ng c&aacute;i nh&igrave;n liền mạch hơn.</p>\r\n\r\n<h3>Sắc n&eacute;t đến từng chi tiết</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 14 Pro đang kinh doanh tại Thế Giới Di Động \">iPhone 14 Pro</a>&nbsp;sở hữu m&agrave;n h&igrave;nh OLED k&iacute;ch thước 6.1 inch với độ ph&acirc;n giải 2556 x 1179 Pixels cho khả năng hiển thị si&ecirc;u sắc n&eacute;t đến từng chi tiết, m&agrave;u sắc sống động, n&acirc;ng cao trải nghiệm thị gi&aacute;c của người d&ugrave;ng.</p>\r\n\r\n<p>Tuy nhi&ecirc;n với nhu cầu sử dụng m&agrave;n h&igrave;nh lớn hơn th&igrave; người d&ugrave;ng c&oacute; thể tham khảo th&ecirc;m phi&ecirc;n bản&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro-max\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 14 Pro Max đang kinh doanh tại Thế Giới Di Động\">iPhone 14 Pro Max</a>.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-256gb-080922-092535.jpg\" onclick=\"return false;\"><img alt=\"Màn hình chất lượng - iPhone 14 Pro 256GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-256gb-080922-092535.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-256gb-080922-092535.jpg\" title=\"Màn hình chất lượng - iPhone 14 Pro 256GB\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh đục lỗ được thiết kế theo h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, tạo một kh&ocirc;ng gian hiển thị mới, hạn chế che khuất khung h&igrave;nh để người d&ugrave;ng c&oacute; được trải nghiệm trọn vẹn nội dung tr&ecirc;n m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động\">điện thoại</a>.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-256gb-080922-092540.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế hình notch mới - iPhone 14 Pro 256GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-256gb-080922-092540.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289691/iphone-14-pro-256gb-080922-092540.jpg\" title=\"Thiết kế hình notch mới - iPhone 14 Pro 256GB\" /></a></p>\r\n\r\n<p>Tần số qu&eacute;t 120 Hz cho mọi thao t&aacute;c chuyển cảnh khi chạm, lướt tr&ecirc;n m&agrave;n h&igrave;nh trở n&ecirc;n si&ecirc;u mượt m&agrave;, đồng thời l&agrave;m tăng cảm nhận thị gi&aacute;c khi sử dụng, chơi game hoặc xem video si&ecirc;u đ&atilde;.</p>\r\n\r\n<h3>Camera quay video si&ecirc;u sắc n&eacute;t</h3>\r\n\r\n<p>Apple đ&atilde; n&acirc;ng cấp mạnh camera tr&ecirc;n iPhone 14 Pro, cảm biến ch&iacute;nh được cải tiến v&agrave; n&acirc;ng độ ph&acirc;n giải l&ecirc;n tới 48 MP để cung cấp khả năng chụp ảnh đỉnh cao, hỗ trợ người d&ugrave;ng quay video độ ph&acirc;n giải 4K si&ecirc;u sắc n&eacute;t.</p>\r\n', 'OLED, 6.1\"Super Retina XDR', '6 GB', 'Apple A16 Bionic', '256 GB', 'iOS 16', '12 MP', 'Chính 48 MP & Phụ 12 MP, 12 MP', 'admin', '28/11/2022', 'public/uploads/phone03.jpg', 'hot'),
(51, 13, 2, 'iPhone 14 256GB ', '#phone04', 27990000, 24990000, 20, 'còn hàng', '<h3>Đẳng cấp thiết kế dẫn đầu xu thế</h3>\r\n\r\n<p>Được ho&agrave;n thiện với những vật liệu cao cấp khi mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng bộ khung nh&ocirc;m chắc chắn, điều n&agrave;y l&agrave;m cho chiếc m&aacute;y của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035406.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế cao cấp - iPhone 14 256GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035406.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035406.jpg\" title=\"Thiết kế cao cấp - iPhone 14 256GB\" /></a></p>\r\n\r\n<p>Với kiểu d&aacute;ng thiết kế phẳng nhờ thừa hưởng vẻ đẹp đến từ c&aacute;c thế hệ trước, v&igrave; thế&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-14-series\" target=\"_blank\" title=\"Tham khảo iPhone 14 đang kinh doanh tại Thế Giới Di Động\">iPhone 14</a>&nbsp;vẫn giữ cho m&igrave;nh một n&eacute;t đẹp rất hợp xu hướng v&agrave; dẫn đầu xu thế.</p>\r\n\r\n<h3>Trang bị c&ocirc;ng nghệ m&agrave;n h&igrave;nh t&acirc;n tiến</h3>\r\n\r\n<p>iPhone 14 được sử dụng c&ocirc;ng nghệ m&agrave;n h&igrave;nh OLED cao cấp, mang đến cho thiết bị khả năng t&aacute;i hiện h&igrave;nh ảnh trung thực v&agrave; độ ch&iacute;nh x&aacute;c m&agrave;u cực cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035408.jpg\" onclick=\"return false;\"><img alt=\"Màn hình chất lượng - iPhone 14 256GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035408.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035408.jpg\" title=\"Màn hình chất lượng - iPhone 14 256GB\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh mang đến c&aacute;i nh&igrave;n trong trẻo v&agrave; m&agrave;u sắc bắt mắt gi&uacute;p mọi t&aacute;c vụ chơi game hay xem phim của bạn trở n&ecirc;n tuyệt vời hơn rất nhiều.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035410.jpg\" onclick=\"return false;\"><img alt=\"Trải nghiệm hình ảnh chất lượng - iPhone 14 256GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035410.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035410.jpg\" title=\"Trải nghiệm hình ảnh chất lượng - iPhone 14 256GB\" /></a></p>\r\n\r\n<h3>Hỗ trợ chụp ảnh quay phim chuẩn điện ảnh</h3>\r\n\r\n<p>Mặt sau của m&aacute;y sẽ l&agrave; cụm camera chất lượng với bộ đ&ocirc;i camera c&oacute; chung độ ph&acirc;n giải 12 MP. C&ugrave;ng với đ&oacute; sẽ l&agrave; thuật to&aacute;n th&ocirc;ng minh đến từ con chip trang bị gi&uacute;p bạn c&oacute; thể sở hữu được nhiều bức ảnh sắc n&eacute;t v&agrave; chất lượng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035413.jpg\" onclick=\"return false;\"><img alt=\"TÍch hợp camera đôi - iPhone 14 256GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035413.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/289663/iphone-14-256gb-080922-035413.jpg\" title=\"TÍch hợp camera đôi - iPhone 14 256GB\" /></a></p>\r\n\r\n<p>Để l&agrave;m phong ph&uacute; hơn cho bộ sưu tập của bạn th&igrave; Apple cũng đ&atilde; bổ sung cho m&aacute;y h&agrave;ng loạt c&aacute;c t&iacute;nh năng chụp ảnh nghệ thuật, từ đ&oacute; gi&uacute;p bạn c&oacute; thể l&agrave;m mới được nhiều kiểu ảnh hơn trong c&ugrave;ng một khung cảnh.</p>\r\n', 'OLED, 6.1\"Super Retina XDR', '6 GB', 'Apple A16 Bionic', '256 GB', 'iOS 16', '12 MP', '2 camera 12 MP', 'admin', '28/11/2022', 'public/uploads/phone04.jpg', 'normal'),
(52, 13, 2, 'iPhone 14 128GB', '#phone05', 24990000, 22790000, 20, 'còn hàng', '<h3>iPhone 14 sở hữu thiết kế cao cấp sang trọng</h3>\r\n\r\n<p>Chiếc điện thoại&nbsp;iPhone mới nhất 2022&nbsp;n&agrave;y được ho&agrave;n thiện với ngoại h&igrave;nh vu&ocirc;ng vức khi hai cạnh v&agrave; c&aacute;c mặt v&aacute;t phẳng, đ&acirc;y được xem l&agrave; kiểu thiết kế thời thượng v&agrave; được cộng đồng người d&ugrave;ng đ&oacute;n nhận rất t&iacute;ch cực kể từ thế hệ iPhone 12 cho đến nay.</p>\r\n\r\n<p>M&aacute;y sẽ c&oacute; kiểu thiết kế tương đồng thế hệ trước đ&oacute; với m&agrave;n h&igrave;nh dạng tai thỏ, c&aacute;c g&oacute;c bo tr&ograve;n mềm mại v&agrave; đi c&ugrave;ng cụm hai camera xếp ch&eacute;o v&ocirc; c&ugrave;ng độc đ&aacute;o.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/240259/iphone-14-080922-034242.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế sang trọng - iPhone 14 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/240259/iphone-14-080922-034242.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/240259/iphone-14-080922-034242.jpg\" title=\"Thiết kế sang trọng - iPhone 14 128GB\" /></a></p>\r\n\r\n<p>Ho&agrave;n thiện từ vật liệu cao cấp với mặt lưng k&iacute;nh c&ugrave;ng bộ khung nh&ocirc;m gi&uacute;p m&aacute;y to&aacute;t l&ecirc;n được vẻ ngo&agrave;i đẳng cấp, gi&uacute;p bạn c&oacute; thể trở n&ecirc;n nổi bật hơn khi cầm nắm sản phẩm tr&ecirc;n tay.</p>\r\n\r\n<h3>Đa dạng sự lựa chọn với nhiều phi&ecirc;n bản m&agrave;u sắc kh&aacute;c nhau</h3>\r\n\r\n<p>Apple mang đến cho người d&ugrave;ng c&aacute;c m&agrave;u sắc như: Đen, Trắng, Xanh Dương, Đỏ, T&iacute;m nhạt với những m&agrave;u n&agrave;y bạn sẽ dễ d&agrave;ng lựa chọn được mẫu điện thoại ưng &yacute; nhất với m&igrave;nh v&agrave; ph&ugrave; hợp với phong c&aacute;ch kh&aacute;c nhau.</p>\r\n\r\n<h4><strong>Phi&ecirc;n bản m&agrave;u Đen&nbsp;(Midnight)</strong></h4>\r\n\r\n<p>Đ&acirc;y c&oacute; lẽ l&agrave; sự lựa chọn rất ph&ugrave; hợp cho những ai y&ecirc;u th&iacute;ch những chiếc điện thoại c&oacute; tone m&agrave;u tối, gi&uacute;p mang lại một sự sang trọng, lịch l&atilde;m v&agrave; đầy vẻ huyền b&iacute; mỗi khi cầm nắm sử dụng tr&ecirc;n tay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/240259/iphone-14-081022-035138.jpg\" onclick=\"return false;\"><img alt=\"Phiên bản màu Đen (midnight) - iPhone 14\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/240259/iphone-14-081022-035138.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/240259/iphone-14-081022-035138.jpg\" title=\"Phiên bản màu Đen (midnight) - iPhone 14\" /></a></p>\r\n\r\n<h4><strong>Phi&ecirc;n bản m&agrave;u Trắng (Starlight)</strong></h4>\r\n\r\n<p>C&ograve;n đối với phi&ecirc;n bản m&agrave;u trắng (starlight) th&igrave; chiếc điện thoại n&agrave;y sẽ đem lại c&aacute;i nh&igrave;n hiện đại v&agrave; thanh nh&atilde;, ngo&agrave;i ra m&agrave;u trắng cũng gi&uacute;p cho việc lựa chọn ốp lưng dễ d&agrave;ng hơn bởi tone m&agrave;u đơn giản n&ecirc;n sẽ ph&ugrave; hợp với rất nhiều m&agrave;u sắc để bạn kh&ocirc;ng phải mất qu&aacute; nhiều thời gian băn khoăn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/240259/iphone-14-081022-035451.jpg\" onclick=\"return false;\"><img alt=\"Phiên bản màu Trắng (Starlight) - iPhone 14\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/240259/iphone-14-081022-035451.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/240259/iphone-14-081022-035451.jpg\" title=\"Phiên bản màu Trắng (Starlight) - iPhone 14\" /></a></p>\r\n\r\n<h4><strong>Phi&ecirc;n bản m&agrave;u Xanh Dương (Blue)</strong></h4>\r\n\r\n<p>Tr&ecirc;n phi&ecirc;n bản m&agrave;u xanh dương (blue) th&igrave; m&aacute;y sẽ đem đến cho ch&uacute;ng ta một cảm gi&aacute;c m&aacute;t mẻ v&agrave; tươi mới, gi&uacute;p ta li&ecirc;n tưởng đến v&ugrave;ng trời xanh biếc thơ mộng hay những d&ograve;ng nước xanh m&aacute;t mỗi khi sử dụng phi&ecirc;n bản iPhone 14.</p>\r\n', 'OLED, 6.1\"Super Retina XDR', '6 GB', 'Apple A15 Bionic', '128 GB', 'iOS 16', '12 MP', '2 camera 12 MP', 'admin', '28/11/2022', 'public/uploads/phone05.jpg', 'normal'),
(53, 13, 1, 'Samsung Galaxy Z Flip4 128GB', '#phone06', 23990000, 20990000, 10, 'còn hàng', '<h3>Dẫn đầu xu hướng thiết kế mới&nbsp;</h3>\r\n\r\n<p>C&oacute; lẽ điện thoại gập đ&atilde; kh&ocirc;ng c&ograve;n l&agrave; c&aacute;i t&ecirc;n qu&aacute; xa lạ bởi nhiều &ocirc;ng lớn trong ng&agrave;nh sản xuất thiết bị di động đ&atilde; cho ra mắt kh&aacute; nhiều sản phẩm c&oacute; thiết kế tương tự, gần đ&acirc;y nhất th&igrave; c&oacute; sự g&oacute;p mặt của chiếc flagship đến từ nh&agrave; Samsung mang t&ecirc;n Galaxy Z Flip4.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100334.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế cao cấp - Samsung Galaxy Z Flip4\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100334.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100334.jpg\" title=\"Thiết kế cao cấp - Samsung Galaxy Z Flip4\" /></a></p>\r\n\r\n<p>Ngay từ những gi&acirc;y ph&uacute;t đầu ti&ecirc;n sử dụng chiếc Galaxy Z Flip4 m&igrave;nh đ&atilde; cảm nhận được sự kh&aacute;c biệt của n&oacute; so với thế hệ trước, m&aacute;y b&acirc;y giờ đ&atilde; vu&ocirc;ng vắn hơn nhờ tạo h&igrave;nh v&aacute;t phẳng ở hai mặt v&agrave; c&aacute;c cạnh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100336.jpg\" onclick=\"return false;\"><img alt=\"Ngoại hình vuông vức - Samsung Galaxy Z Flip4\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100336.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100336.jpg\" title=\"Ngoại hình vuông vức - Samsung Galaxy Z Flip4\" /></a></p>\r\n\r\n<p>Phần mặt lưng của m&aacute;y được phủ một lớp nh&aacute;m nhẹ gi&uacute;p cho m&igrave;nh c&oacute; thể cầm nắm chắc tay hơn, hạn chế được t&igrave;nh trạng b&aacute;m dấu v&acirc;n tay trong qu&aacute; tr&igrave;nh sử dụng.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100343.jpg\" onclick=\"return false;\"><img alt=\"Hoàn thiện mặt lưng nhám - Samsung Galaxy Z Flip4\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100343.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100343.jpg\" title=\"Hoàn thiện mặt lưng nhám - Samsung Galaxy Z Flip4\" /></a></p>\r\n\r\n<p>Theo như h&atilde;ng c&ocirc;ng bố th&igrave; phi&ecirc;n bản&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-z\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">điện thoại Galaxy Z</a>&nbsp;n&agrave;y c&oacute; thể gập l&ecirc;n đến 200.000 lần li&ecirc;n tục trong ph&ograve;ng th&iacute; nghiệm. Nếu trung b&igrave;nh một ng&agrave;y bạn gập, mở m&aacute;y khoảng 50 lần th&igrave; mất khoảng 10 năm th&igrave; mới c&oacute; thể đạt đến số lần gập n&agrave;y.</p>\r\n\r\n<p>&nbsp;<a href=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100345.jpg\" onclick=\"return false;\"><img alt=\"Gập mở chắc chắn - Samsung Galaxy Z Flip4\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100345.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-230922-100345.jpg\" title=\"Gập mở chắc chắn - Samsung Galaxy Z Flip4\" /></a></p>\r\n\r\n<p>Bộ khung v&agrave; bản lề của sản phẩm được ho&agrave;n thiện từ vật liệu Armor Aluminum cứng c&aacute;p. Li&ecirc;n kết giữa c&aacute;c chi tiết được l&agrave;m kh&iacute;t lại để gi&uacute;p m&aacute;y c&oacute; thể kh&aacute;ng nước tốt hơn với chuẩn IPX8, từ đ&oacute; gi&uacute;p Galaxy Z Flip4 trở th&agrave;nh chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">điện thoại</a>&nbsp;gập bền bỉ nhất.</p>\r\n', 'Chính: Dynamic AMOLED 2X, Phụ: Super AMOLED, Chính 6.7\" & Phụ 1.9\"Full HD+', '8 GB', 'Snapdragon 8+ Gen 1', '128 GB', 'Android 12', '10 MP', '12 MP', 'admin', '28/11/2022', 'public/uploads/phone06.jpg', 'hot'),
(54, 13, 1, 'Samsung Galaxy S22 Ultra', '#phone07', 30990000, 25990000, 10, 'còn hàng', '<h3>Sở hữu một diện mạo đầy nổi bật</h3>\r\n\r\n<p>Galaxy S22 Ultra 5G được kế thừa form thiết kế từ những d&ograve;ng Note trước đ&acirc;y của h&atilde;ng đem đến cho bạn c&oacute; cảm gi&aacute;c vừa mới lạ vừa ho&agrave;i niệm. Trọng lượng của m&aacute;y 228 g cho cảm gi&aacute;c cầm nắm đầm tay, khi cầm m&aacute;y trần th&igrave; hơi c&oacute; cảm gi&aacute;c dễ trượt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-10-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Thiết kế\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-10-2.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-10-2.jpg\" title=\"Galaxy S22 Ultra 5G - Thiết kế\" /></a></p>\r\n\r\n<p>Phần mặt lưng&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;được l&agrave;m nh&aacute;m n&ecirc;n hạn chế tốt việc b&aacute;m dấu v&acirc;n tay, c&oacute; thiết kế cũng kh&aacute; đơn giản nhưng vẫn to&aacute;t l&ecirc;n vẻ sang trọng v&agrave; cao cấp của chiếc m&aacute;y. Cụm camera sau tr&ecirc;n Galaxy S22 Ultra 5G được thiết kế trần tạo cảm gi&aacute;c gọn g&agrave;ng v&agrave; cũng tạo n&ecirc;n một điểm nhấn độc đ&aacute;o cho chiếc m&aacute;y.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-11-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Mặt lưng\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-11-2.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-11-2.jpg\" title=\"Galaxy S22 Ultra 5G - Mặt lưng\" /></a></p>\r\n\r\n<p>C&oacute; thể n&oacute;i Galaxy S22 Ultra 5G ch&iacute;nh l&agrave; chiếc m&aacute;y đầu ti&ecirc;n được t&iacute;ch hợp b&uacute;t S Pen ho&agrave;n hảo trong một th&acirc;n m&aacute;y của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-s\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại Samsung Galaxy S đang kinh doanh tại Thế Giới Di Động \">d&ograve;ng Galaxy S</a>. Giờ đ&acirc;y, bạn c&oacute; thể dễ d&agrave;ng ph&aacute;c thảo, ghi ch&uacute; lại những &yacute; tưởng v&ocirc; c&ugrave;ng nhanh ch&oacute;ng với độ trễ đ&atilde; được cải thiện cho cảm gi&aacute;c viết vẽ v&ocirc; c&ugrave;ng ch&acirc;n thật.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-7-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Thao tác viết bằng bút S Pen\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-7-2.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-7-2.jpg\" title=\"Galaxy S22 Ultra 5G - Thao tác viết bằng bút S Pen\" /></a></p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ với Snapdragon 8 Gen 1</h3>\r\n\r\n<p>Hiệu năng tr&ecirc;n Galaxy S22 Ultra 5G l&agrave; điều khỏi b&agrave;n c&atilde;i khi m&aacute;y sử dụng chip Snapdragon 8 Gen 1 v&ocirc; c&ugrave;ng mạnh mẽ với tiến tr&igrave;nh sản xuất 4 nm. Khi m&aacute;y chơi game cũng chỉ ấm l&ecirc;n một ch&uacute;t ở vị tr&iacute; cụm camera chứ kh&ocirc;ng ho&agrave;n to&agrave;n qu&aacute; n&oacute;ng như những sản phẩm kh&aacute;c khi d&ugrave;ng c&ugrave;ng con chip n&agrave;y.</p>\r\n\r\n<p>M&aacute;y dễ d&agrave;ng vượt qua được c&aacute;c tựa game Li&ecirc;n Qu&acirc;n, PUBG Mobile, c&agrave;i đặt cấu h&igrave;nh tối đa th&igrave; biểu đồ FPS tr&ecirc;n Galaxy S22 Ultra 5G vẫn kh&aacute; ổn định, kh&ocirc;ng bị drop qu&aacute; nhiều. Kể cả tựa game Genshin Impact ở mức đồ họa mặc định th&igrave; m&aacute;y chơi vẫn mượt m&agrave;, đồ họa hiển thị đẹp mắt.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-1-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Trải nghiệm chơi game\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-1-2.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-1-2.jpg\" title=\"Galaxy S22 Ultra 5G - Trải nghiệm chơi game\" /></a></p>\r\n\r\n<p>C&ograve;n n&oacute;i về c&aacute;c t&aacute;c vụ cơ bản như lướt web, đọc b&aacute;o, xem YouTube,... th&igrave; m&aacute;y ho&agrave;n th&agrave;nh một c&aacute;ch dễ d&agrave;ng, sử dụng mượt m&agrave;, khả năng đa nhiệm thoải m&aacute;i với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-8gb\" target=\"_blank\" title=\"Tham khảo điện thoại có RAM 8 GB kinh doanh tại Thegioididong.com\">RAM 8 GB</a>.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-3-2.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S22 Ultra 5G - Trải nghiệm lướt web\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-3-2.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-3-2.jpg\" title=\"Galaxy S22 Ultra 5G - Trải nghiệm lướt web\" /></a></p>\r\n\r\n<h3>Mang đến những bức ảnh đầy chất lượng</h3>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung đang kinh doanh tại Thế Giới Di Động\">điện thoại Samsung</a>&nbsp;n&agrave;y được trang bị 4 camera với camera ch&iacute;nh l&ecirc;n đến 108 MP,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo điện thoại có camera góc rộng tại Thegioididong.com\">camera g&oacute;c si&ecirc;u rộng</a>&nbsp;12 MP, 2&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-zoom\" target=\"_blank\" title=\"Tham khảo điện thoại có camera tele kinh doanh tại Thegioididong.com\">camera tele</a>&nbsp;10 MP hỗ trợ thu ph&oacute;ng quang học 10x. Nổi bật nhất l&agrave; camera ch&iacute;nh với khả năng chụp đ&ecirc;m v&ocirc; c&ugrave;ng ấn tượng như c&acirc;u m&agrave; h&atilde;ng đ&atilde; đưa ra &quot;Nightography Camera - Mắt thần b&oacute;ng đ&ecirc;m&quot;. Sở hữu cảm biến điểm ảnh lớn n&ecirc;n thu được nhiều &aacute;nh s&aacute;ng hơn, khi chụp đ&ecirc;m những bức ảnh cực kỳ s&aacute;ng, hiện tượng nhiễu hạt được cải thiện đ&aacute;ng kể.</p>\r\n', 'Dynamic AMOLED 2X6.8', '8 GB', 'Snapdragon 8 Gen 1', '128 GB', ' Android 12', '40 MP', 'Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP', 'admin', '28/11/2022', 'public/uploads/phone07.jpg', 'hot'),
(55, 13, 1, 'Samsung Galaxy Z Fold4', '#phone08', 40990000, 37990000, 10, 'còn hàng', '<h3>Kiểu d&aacute;ng gập mở tinh tế tạo n&ecirc;n sự kh&aacute;c biệt</h3>\r\n\r\n<p>Galaxy Z Fold4 (2022) ra mắt với ngoại h&igrave;nh gần như l&agrave; kh&ocirc;ng đổi khi so với&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-fold-3\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại Thế Giới Di Động\">Galaxy Z Fold3</a>, nếu bạn chỉ nh&igrave;n bề ngo&agrave;i th&igrave; bạn sẽ kh&oacute; l&ograve;ng ph&acirc;n biệt được 2 sản phẩm n&agrave;y. M&aacute;y vẫn sử dụng khung viền Armor Aluminum bền bỉ, mặt k&iacute;nh m&agrave;n h&igrave;nh phụ l&agrave; Corning Gorilla Glass Victus+, mặt k&iacute;nh m&agrave;n h&igrave;nh ch&iacute;nh l&agrave; Ultra Thin Glass.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-064950.jpg\" onclick=\"return false;\"><img alt=\"Tạo khác biệt với màn hình gập, mở - Samsung Galaxy Z Fold4 256GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-064950.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-064950.jpg\" title=\"Tạo khác biệt với màn hình gập, mở - Samsung Galaxy Z Fold4 256GB\" /></a></p>\r\n\r\n<p>V&agrave; đ&acirc;y cũng l&agrave; chiếc điện thoại gập bền bỉ nhất giới smartphone khi kết hợp với khả năng kh&aacute;ng nước chuẩn IPX8, c&oacute; khả năng ng&acirc;m trong nước ngọt ở độ s&acirc;u tới 1.5 m&eacute;t trong thời gian tối đa 30 ph&uacute;t* (m&aacute;y kh&ocirc;ng c&oacute; khả năng kh&aacute;ng bụi).</p>\r\n\r\n<p><em>*Th&ocirc;ng tin h&atilde;ng Samsung cung cấp</em></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-62.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại kháng nước - Samsung Galaxy Z Fold4\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-62.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-62.jpg\" title=\"Điện thoại kháng nước - Samsung Galaxy Z Fold4\" /></a></p>\r\n\r\n<p>Năm nay Z Fold4 c&oacute; thiết kế c&acirc;n bằng hơn, bản lề v&agrave; viền m&agrave;n h&igrave;nh được thiết kế mỏng hơn gi&uacute;p tổng thể ở m&agrave;n h&igrave;nh phụ của m&aacute;y rộng th&ecirc;m 2.7 mm v&agrave; m&agrave;n h&igrave;nh ch&iacute;nh rộng hơn 3 mm khi so với thế hệ tiền nhiệm. Tuy con số kh&ocirc;ng qu&aacute; lớn nhưng với trải nghiệm thực tế th&igrave; đ&acirc;y l&agrave; một thay đổi cực kỳ đ&aacute;ng gi&aacute; v&agrave; mang lại hiệu quả sử dụng cao.</p>\r\n\r\n<p>Với k&iacute;ch thước m&agrave;n h&igrave;nh được tăng l&ecirc;n th&igrave; m&agrave;n h&igrave;nh phụ của Fold4 đ&atilde; dễ d&agrave;ng thao t&aacute;c v&agrave; g&otilde; văn bản hơn, kh&ocirc;ng c&ograve;n gặp t&igrave;nh trạng d&iacute;nh chữ như tr&ecirc;n thế hệ trước nữa. Với tỉ lệ m&agrave;n h&igrave;nh n&agrave;y th&igrave; n&oacute; vẫn cao hơn smartphone ngo&agrave;i thị thường một x&iacute;u.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-070512.jpg\" onclick=\"return false;\"><img alt=\"Màn hình phụ lớn hơn - Samsung Galaxy Z Fold4 256GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-070512.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-100822-070512.jpg\" title=\"Màn hình phụ lớn hơn - Samsung Galaxy Z Fold4 256GB\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung tại Thế Giới Di Động\">H&atilde;ng điện thoại Samsung</a>&nbsp;đ&atilde; thay đổi cấu tr&uacute;c phần bản lề tr&ecirc;n Fold4, điều n&agrave;y mang lại một cảm gi&aacute;c đ&oacute;ng - mở cứng c&aacute;p hơn. M&aacute;y c&oacute; thể linh hoạt gập - mở ở c&aacute;c g&oacute;c từ 75 độ đến 115 độ, cho bạn nhiều g&oacute;c độ sử dụng điện thoại hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-260922-115021.jpg\" onclick=\"return false;\"><img alt=\"Thay đổi cấu trúc bản lề - Samsung Galaxy Z Fold4\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-260922-115021.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-260922-115021.jpg\" title=\"Thay đổi cấu trúc bản lề - Samsung Galaxy Z Fold4\" /></a></p>\r\n\r\n<p>Với khả năng gập mở linh hoạt n&agrave;y th&igrave; bạn c&oacute; thể đặt m&aacute;y tr&ecirc;n mặt phẳng để chụp ảnh với c&aacute;c g&oacute;c chụp s&aacute;ng tạo để quay TikTok hay l&agrave;m việc như một chiếc &quot;laptop mini&quot;.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/flex-mode-dien-thoai-man-hinh-gap-samsung-moi-1467788\" target=\"_blank\" title=\"Flex Mode trên Galaxy Z Fold4 và Z Flip4: Một xu hướng và lối sống linh hoạt mới!\">Flex Mode tr&ecirc;n Galaxy Z Fold4 v&agrave; Z Flip4: Một xu hướng v&agrave; lối sống linh hoạt mới!</a></p>\r\n', 'Dynamic AMOLED 2X, Chính 7.6\" & Phụ 6.2\"Quad HD+ (2K+)', '12GB', 'Snapdragon 8+ Gen 1', '256 GB', ' Android 12', '10 MP & 4 MP', ' Chính 50 MP & Phụ 12 MP, 10 MP', 'admin', '28/11/2022', 'public/uploads/phone08.jpg', 'hot'),
(56, 13, 1, 'Samsung Galaxy A73', '#phone09', 12990000, 11990000, 20, 'còn hàng', '<h3>Thỏa sức nhiếp ảnh với camera chụp ảnh sắc n&eacute;t</h3>\r\n\r\n<p>Điều m&agrave; m&igrave;nh ấn tượng nhất tr&ecirc;n Galaxy A73 5G đ&oacute; ch&iacute;nh l&agrave; khả năng chụp ảnh khi m&aacute;y sở hữu 4 ống k&iacute;nh c&oacute; độ ph&acirc;n giải lần lượt: Camera ch&iacute;nh 108 MP,<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\">&nbsp;camera g&oacute;c si&ecirc;u rộng</a>&nbsp;12 MP,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-xoa-phong\" target=\"_blank\">cảm biến độ s&acirc;u</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-macro\" target=\"_blank\">macro</a>&nbsp;c&oacute; c&ugrave;ng độ ph&acirc;n giải 5 MP gi&uacute;p c&aacute;c bức ảnh thu lại trở n&ecirc;n chi tiết hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041611.jpg\" onclick=\"return false;\"><img alt=\"Trang bị 4 camera - Samsung Galaxy A73 5G 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041611.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041611.jpg\" title=\"Trang bị 4 camera - Samsung Galaxy A73 5G 128GB\" /></a></p>\r\n\r\n<p>Chụp ảnh ở m&ocirc;i trường đủ s&aacute;ng, ảnh do Galaxy A73 thu lại c&oacute; độ chi tiết cao, m&agrave;u sắc tươi tắn, ảnh sau khi zoom l&ecirc;n vẫn mang một chất lượng rất tốt bởi camera ch&iacute;nh c&oacute; độ ph&acirc;n giải cao, rất ph&ugrave; hợp với những ai thường d&ugrave;ng điện thoại để chụp ảnh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041613.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp chế độ thường - Samsung Galaxy A73 5G 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041613.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041613.jpg\" title=\"Ảnh chụp chế độ thường - Samsung Galaxy A73 5G 128GB\" /></a></p>\r\n\r\n<p>Ảnh chụp v&agrave;o buổi đ&ecirc;m cũng cho ra chất lượng kh&aacute;, hiện tượng nhiễu hạt được cải thiện, c&acirc;n bằng &aacute;nh s&aacute;ng tốt gi&uacute;p tổng thể bức ảnh tr&ocirc;ng rất h&agrave;i h&ograve;a.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041615.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp đêm - Samsung Galaxy A73 5G 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041615.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041615.jpg\" title=\"Ảnh chụp đêm - Samsung Galaxy A73 5G 128GB\" /></a></p>\r\n\r\n<p>C&ograve;n về chế độ chụp ch&acirc;n dung cho d&ugrave; l&agrave; ng&agrave;y hay đ&ecirc;m th&igrave; kết quả thu được đều l&agrave;m m&igrave;nh bất ngờ, bởi m&aacute;y mang đến bức ảnh tr&ocirc;ng rất nịnh mắt v&agrave; c&oacute; chiều s&acirc;u, độ chi tiết tốt, ranh giới giữa những v&ugrave;ng x&oacute;a ph&ocirc;ng v&agrave; chủ thể được xử l&yacute; mịn m&agrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041617.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp chế độ chân dung - Samsung Galaxy A73 5G 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041617.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-190422-041617.jpg\" title=\"Ảnh chụp chế độ chân dung - Samsung Galaxy A73 5G 128GB\" /></a></p>\r\n\r\n<p>Hỗ trợ t&iacute;nh năng zoom 2x, 4x v&agrave; 10x mang lại khả năng ph&oacute;ng to khung cảnh một c&aacute;ch nhanh ch&oacute;ng, gi&uacute;p bạn quan s&aacute;t đối tượng v&agrave; bắt lại những khoảnh khắc đẹp chỉ trong t&iacute;ch tắc.</p>\r\n', 'Super AMOLED Plus, 6.7\"Full HD+', '8 GB', 'Snapdragon 778G 5G', '128 GB', ' Android 12', '32 MP', 'Chính 108 MP & Phụ 12 MP, 5 MP, 5 MP', 'admin', '28/11/2022', 'public/uploads/phone09.jpg', 'normal'),
(57, 13, 8, 'Vertu Signature V Pure', '#phone99', 2259990000, 2249990000, 1, 'còn hàng', '<p><strong>Điện thoại Vertu Signature V Pure Black Full Gold</strong>&nbsp;hiện đang được ph&acirc;n phối ch&iacute;nh h&atilde;ng tại Di Động Việt. Ch&uacute;ng t&ocirc;i cam kết b&aacute;n h&agrave;ng chất lượng v&agrave; uy t&iacute;n, n&oacute;i kh&ocirc;ng với những mặt h&agrave;ng k&eacute;m chất lượng cũng như đ&atilde; qua sửa chữa. Chiếc m&aacute;y sẽ được bảo h&agrave;nh&nbsp;<strong>12 th&aacute;ng</strong>&nbsp;tại hệ thống ủy quyền, đồng thời nhận nhiều ưu đ&atilde;i, khuyến m&atilde;i hấp dẫn tại Di Động Việt.</p>\r\n\r\n<p><strong>Vertu Signature V Pure Black Full Gold</strong>&nbsp;l&agrave; một t&aacute;c phẩm thời trang đầy m&ecirc; hoặc đến từ những người thợ thủ c&ocirc;ng l&agrave;nh nghề v&agrave; phải<strong>&nbsp;trải qua nhiều&nbsp;quy tr&igrave;nh kiểm tra kỹ lưỡng</strong>&nbsp;trước khi đến tay người d&ugrave;ng. Đ&acirc;y l&agrave; một chiếc điện thoại&nbsp;<strong>thể hiện đẳng cấp thượng lưu</strong>&nbsp;của người d&ugrave;ng khi được ho&agrave;n thiện từ những nguy&ecirc;n liệu qu&yacute; hiếm như&nbsp;<strong>platin, v&agrave;ng v&agrave; kim cương</strong>.</p>\r\n', 'QVGA (240 x 320 Pixels)', '3 GB', 'Undefine', '32 GB', 'Linux based feature phone', 'Undefine', 'Undefine', 'admin', '28/11/2022', 'public/uploads/phone99.jpg', 'normal'),
(58, 13, 1, 'Samsung Galaxy A33', '#phone10', 7290000, 6890000, 20, 'còn hàng', '<h3>Diện mạo trẻ trung v&agrave; năng động</h3>\r\n\r\n<p>Galaxy A33 c&oacute; cạnh viền được chế tạo từ nhựa nhằm tối ưu khối lượng, mang lại cảm gi&aacute;c cầm nắm nhẹ nh&agrave;ng, c&aacute;c cạnh được bo cong mềm mại gi&uacute;p m&igrave;nh sử dụng l&acirc;u d&agrave;i m&agrave; kh&ocirc;ng thấy xuất hiện t&igrave;nh trạng cấn tay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-050422-072150.jpg\" onclick=\"return false;\"><img alt=\"Cầm nắm thoải mái - Samsung Galaxy A33 5G 6GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-050422-072150.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-050422-072150.jpg\" title=\"Cầm nắm thoải mái - Samsung Galaxy A33 5G 6GB\" /></a></p>\r\n\r\n<p>Mặt sau l&agrave;m từ nhựa nh&aacute;m cho ra cảm gi&aacute;c sờ rất th&iacute;ch hay hạn chế b&aacute;m dấu v&acirc;n tay v&agrave; mồ h&ocirc;i, b&ecirc;n cạnh đ&oacute; n&oacute; c&ograve;n gi&uacute;p m&igrave;nh cầm m&aacute;y một c&aacute;ch chắc chắn hơn nhờ gia tăng độ ma s&aacute;t.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-050422-072154.jpg\" onclick=\"return false;\"><img alt=\"Camera nổi bật - Samsung Galaxy A33 5G 6GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-050422-072154.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-050422-072154.jpg\" title=\"Camera nổi bật - Samsung Galaxy A33 5G 6GB\" /></a></p>\r\n\r\n<p>Viền m&agrave;n h&igrave;nh cũng được tối ưu tốt, tạo cho m&igrave;nh c&aacute;i nh&igrave;n rất thoải m&aacute;i v&agrave; dễ chịu, được xem l&agrave; ưu điểm nổi bật so với c&aacute;c đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c gi&aacute;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-050422-072155.jpg\" onclick=\"return false;\"><img alt=\"Viền màn hình mỏng - Samsung Galaxy A33 5G 6GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-050422-072155.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-050422-072155.jpg\" title=\"Viền màn hình mỏng - Samsung Galaxy A33 5G 6GB\" /></a></p>\r\n\r\n<h3>Chụp ảnh sắc n&eacute;t với camera 48 MP</h3>\r\n\r\n<p>Điều l&agrave;m m&igrave;nh ấn tượng tiếp theo l&agrave; Galaxy A33 được trang bị 4 camera sau c&ugrave;ng nhiều t&iacute;nh năng v&ocirc; c&ugrave;ng th&uacute; vị như: To&agrave;n cảnh (Panorama), Tr&ocirc;i nhanh thời gian (Time Lapse), X&oacute;a ph&ocirc;ng,... giờ h&atilde;y c&ugrave;ng m&igrave;nh xem những đ&aacute;nh gi&aacute; chi tiết về từng chiếc camera tr&ecirc;n m&aacute;y để xem n&oacute; mang lại trải nghiệm như thế n&agrave;o nh&eacute;!</p>\r\n', 'Super AMOLED, 6.4\"Full HD+', '6 GB', ' Exynos 1280', '128 GB', ' Android 12', '13 MP', 'Chính 48 MP & Phụ 8 MP, 5 MP, 2 MP', 'admin', '28/11/2022', 'public/uploads/phone10.jpg', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `type` enum('dọc','ngang') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `image`, `user`, `create_date`, `type`) VALUES
(9, 'public/uploads/slider-01.png', 'admin', '27/11/2022', 'ngang'),
(10, 'public/uploads/slider-02.png', 'admin', '27/11/2022', 'ngang'),
(11, 'public/uploads/slider-03.png', 'admin', '27/11/2022', 'ngang'),
(12, 'public/uploads/slider-04.png', 'admin', '27/11/2022', 'ngang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_detail_cart`
--
ALTER TABLE `tbl_detail_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `tbl_order_ibfk_1` (`custom_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand` (`id_brand`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_detail_cart`
--
ALTER TABLE `tbl_detail_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `tbl_customer` (`id`);

--
-- Constraints for table `tbl_detail_cart`
--
ALTER TABLE `tbl_detail_cart`
  ADD CONSTRAINT `tbl_detail_cart_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `tbl_cart` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_detail_cart_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `tbl_detail_order_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_detail_order_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`custom_id`) REFERENCES `tbl_customer` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`id_cart`) REFERENCES `tbl_cart` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `tbl_brand` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
