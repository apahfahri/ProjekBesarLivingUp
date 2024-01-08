-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.32-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table livingup.akunadmin
CREATE TABLE IF NOT EXISTS `akunadmin` (
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Membuang data untuk tabel livingup.akunadmin: ~1 rows (lebih kurang)
INSERT INTO `akunadmin` (`nama`, `username`, `password`) VALUES
	('fahri', 'apah', '123');

-- membuang struktur untuk table livingup.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `harga` double NOT NULL DEFAULT 0,
  `ruangan` varchar(50) NOT NULL DEFAULT '',
  `warna` varchar(50) NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `material` varchar(50) NOT NULL DEFAULT '',
  `stok` int(11) NOT NULL,
  `foto` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Membuang data untuk tabel livingup.produk: ~71 rows (lebih kurang)
INSERT INTO `produk` (`id`, `nama`, `harga`, `ruangan`, `warna`, `keterangan`, `material`, `stok`, `foto`) VALUES
	('P001', 'Kursi', 1260000, 'Ruang Keluarga', 'coklat', 'Kursi buatan tangan yang sangat nyaman dan ringan ini. \r\nsetiap kursi ditenun dengan tangan,dan memiliki keunikan tersendiri\r\nukuran : 52x87 cm', 'Rotan', 2, NULL),
	('P002', 'Meja', 340000, 'Ruang Keluarga', 'Putih', 'Meja baki yang ringan dan mudah dipindahkan dengan baki bagian atas yang dapat dilepas,berguna untuk menghidagkan makanan dan minuman ringan\r\nukuran : 45x53 cm', 'Baja\r dilapisi serbuk poliester', 5, NULL),
	('P003', 'Billieuis', 1300000, 'Ruang Keluarga', 'Merah', 'Sofa 2 dudukan yang ringkas dan pas di area kecil \r\ncocok untuk pesta keluarga dan menonton TV \r\nmemiliki desain yang rapi dan mudah diangkat memperbarui,bersih-bersih,atau memeindahkan\r\nUkuran : 145c', 'Particleboard\r\nKayu lapis\r\nBusa poliuretana', 7, NULL),
	('P004', 'Nalx', 1090000, 'Ruang Keluarga', 'Coklat', 'Rak dengan Desain sederhana membuat Nalx fleksibel dan mudah \r\ndigunakan dirumah\r\nRak sejajar sempurna dengan bingkai untuk menciptakan tampilan ruang yang kuat\r\ndan seragam\r\nukuran : 77x147 cm\r\n', 'Particleboard\r\nFibreboard', 3, NULL),
	('P005', 'Jarm', 188900, 'Ruang Keluarga', 'Hitam', 'Jam dengan desain yang minimalis\r\nMemiliki gerakan tanpa suara sehingga anda dapat bersantai dengan tenang\r\nukurn : 46 cm', 'Bagian Depan :Kaca\r\nBingkai Jam : Baja', 10, NULL),
	('P006', 'Karlop', 990000, 'Ruang Keluarga', 'pink', 'karpet merah yang akan bertahan lama karena tahan terhadap noda\r\ndan mudah dirawat\r\nkarper yang tebal dan padat meredam suara\r\npendamping yang sempurna untuk semua lantai\r\nukuran : 120x180 cm', '80% wol\r\n20% nilon\r\npoliester', 11, NULL),
	('P007', 'Lamdin', 320000, 'Ruang Keluarga', 'kuning', 'lampu yang mengkilap dan kaca bening\r\nmenyebarkan cahaya suasana lembut yang menciptakan bayangan menarik di dinding\r\nukuran : 13 w , 14x16 cm', 'Plastik poliamida\r\nBaja\r\nPowder coating', 20, NULL),
	('P008', 'Buklack', 7990900, 'Ruang Keluarga', 'Cokelat', 'Lemari bufet kayu memiliki desain unik dengan pegangan terintegritas.\r\nukurannya besar menawarkan banyak ruang dan penyimpanan optimal dibagian dalam.\r\nukuran :120x97 cm', 'Particleboard\r\nfibreboard \r\n Kertas foil, Tepi pla', 23, NULL),
	('P009', 'RonaLand', 21298000, 'Ruang Keluarga', 'coklat', 'Menggambarkan kemewahan,mengguna isian busa yang elastis untuk kenyamanan\r\npenggunaan kuliat grain yang tebal diarea kontak\r\nukuran : 240 x 78 cm', 'Kayu lapis\r\nAlas fern\r\nkayu solid\r\nFibreboard\r\nBus', 2, NULL),
	('P010', 'kholm', 4299000, 'Ruang Keluarga', 'putih', 'Meja bersusun dengan permukaan meja yang berbentuk daun memiliki tampilan elegan dan hangat.\r\nmemberikan kesan dekoratif pada ruangan anda\r\nukuran : 47 x 72 cm', 'Fibreboard\r\nVenir walnut\r\nLacquer akrilik bening\r\n', 11, NULL),
	('P011', 'Tillred', 1790000, 'Ruang Dapur', 'Putih', 'Oven Microwave dapat menyiapkan makanan dengan mudah\r\ncukup putar kenop dan makanan anda akan siap dalam waktu yang singkat\r\nukuran : 43,9x25,8 cm', 'Baca dan Kaca bening', 4, NULL),
	('P012', 'Grund', 5999000, 'Ruang Dapur', 'Hitam', 'Kompor Induksi hemat  energi yang memiliki fungsi dasar yang anda butuhkan\r\nKompor ini cepat dan efisien dan memiliki 4 zona memasak yang membuat\r\nmasakan anda matang sempurna\r\nukuran : 59x6 cm', '', 7, NULL),
	('P013', 'Hog', 99900, 'Ruang Dapur', 'Coklat', 'Talenan bambu yang mudah dirawat dan tahan pakai\r\ntidak akan bergeser saat dipakai\r\nmudah dipegang dan tidak merusak pisau\r\nukuran 34,8x24 cm', 'bambu', 8, NULL),
	('P014', 'UppTera', 87000, 'Ruang Dapur', 'Putih', 'Baki peralatan dapur yang dapat menyimpan sendok sup,pengocok,dan peralatan lain\r\nmudah dan praktis dalam plastik yang mudah dibersihkan\r\nukuran : 29x30 cm\r\n', 'Plastik', 10, NULL),
	('P015', 'Vargen', 239000, 'Ruang Dapur', 'Hitam', 'Wajan yang dapat didgunakan untuk semua jenis kompor termasuk kompor induksi\r\ndapat menyebarkan panas yang merata membuat makanan matang dengan baik\r\nukuran : 13x 29 cm\r\n', 'Baja', 2, NULL),
	('P016', 'mug', 56000, 'Ruang Dapur', 'putih', 'mug yang sederhana yang membuat \r\ntahan bentur dan tahan lama\r\nukuran : 24cl', 'porselen feldspar ', 6, NULL),
	('P017', 'matt', 399900, 'Ruang Dapur', 'coklat', 'Mangkuk saji yang dapat ditumpuk ukuran yang lebih kecil didalam yang besar \r\ndari produk yang sama,untuk menghemat ruangan saat tidak digunakan\r\nukuran : 28 cm', 'Bambu\r\nLacquer akrilik bening', 11, NULL),
	('P018', 'Samsungs', 7899990, 'Ruang Dapur', 'Hitam', 'Kulkas 2 dengan desain yang elegan dan didesain seminimalis mungkin\r\ndapat mempercantik ruangan dapur anda\r\nukuran : 58,7x138,8 cm\r\n', '', 9, NULL),
	('P019', 'Dargen', 398999, 'Ruang Dapur', 'Biru Tua', 'Panci dengan penutup dengan desain pedesaan\r\nsempurna untuk menyiapkan,menyajikan makanan dari kompor maupun oven\r\nukuran : 2L', 'Baja', 21, NULL),
	('P020', 'Rantorp', 240000, 'Ruang Dapur ', 'Putih', 'keranjang untuk menyimpan buah dan sayuran \r\nberada diluar lemari es.\r\njaringan baja memberikan ventilasi sehingga menjega makanan tahan lama\r\nukuran : 25x26x18 cm', 'Baja\r\nPowder coating\r\nVeneer kayu birch', 23, NULL),
	('P021', 'Morby', 6890000, 'Ruang Makan', 'Coklat', 'Meja dengan veneer kayu uak diwarnai cokelat\r\ndetail kayu dengan bagian atas meja tampak mengambang dan sambungan pas membuat\r\nmeja tersebut terlihat cantik dan memiliki penuh karakter\r\nukuran : 140x8', 'Kayu', 7, NULL),
	('P022', 's365', 29900, 'Ruang Makan', 'bening', 'Gelas berkaki yag terbuat dari kaca tempered yang bisa \r\ndigunakan untuk meletakan minuman dingin maupun panas\r\nukuran : 30 cl', 'Kaca Tempered', 12, NULL),
	('P023', 'Rort', 29900, 'Ruang Makan', 'coklat', 'sendok bulat yang terbuat dari kayu\r\ntidak akan merusak panci dan wajan yang mempunyai\r\nlapisan tidak melekat\r\nukuran : 31,5cm', 'Kayu beech solid', 24, NULL),
	('P024', 'Sorea', 81900, 'Ruang Makan', 'Coklat', 'Alas piring yang dibuat dengan tangan dari eceng gondok\r\nyang menjadikan produk ini sangat unik \r\nukuran : 37cm', 'Eceng gondok\r\nLacquer akrilik bening', 9, NULL),
	('P025', 'Bosa', 995000, 'Ruang Makan', 'coklat', 'Kursi Kayu ash menciptakan kesan alami untuk ruangan anda\r\nukuran dudukan yang besar dan sandaran tinggi yang membuat nyaman untuk digunakan\r\nukuran : 46x80 cm\r\n\r\n', 'kayu \r\n', 13, NULL),
	('P026', 'Tokrad', 38999, 'Ruang Makan', 'Perak', 'Tempat Rol tisu yang memiliki batang penyangga sehingga\r\nmemudahkan untuk merobek tisu\r\nukuran : 28 cm\r\n', 'Baja', 11, NULL),
	('P027', 'Svartse', 69900, 'Ruang Makan', 'Abu', 'Taplak Panjang meja yang membantu anda melindungi permukaan bagian atas meha\r\ndan mengurangi bunyi dari pirisng dan peralatan makan.\r\nukuran : 130 x 35 cm', 'Katun', 18, NULL),
	('P028', 'Lerf', 99990, 'Ruang Makan', 'Merah', 'Pelindung makanan yang cukup besar untuk menutupi sebagian besar piring\r\nmangkuk dan peralatan makan lainnya. \r\njaringan melindungi makanan dan kue kering dari serangga baik besar maupun kecil\r\nukuran', 'Poliester', 20, NULL),
	('P029', 'm365', 39990, 'Ruang Makan', 'putih', 'Piring yang didesain dengan sederhana dan minimalis', 'Porselen feldspar', 18, NULL),
	('P030', 'stilen', 49990, 'Ruang Makan', 'putih', 'Mangkuk dengan motif daun hijau \r\ntahan bentur dan tahan lama \r\nukuran : 13cm\r\n', 'Porselen feldspar', 29, NULL),
	('P031', 'Pax', 7650000, 'Ruang Tidur', 'putih', 'Lemari pakaian dengan desain yang simple\r\ndengan menggunakan pintu geser membuat tidak memakan ruangan saat membuka pintu lemari\r\ndengan ukuran 150 x201,2cm\r\n', 'Particleboard', 5, NULL),
	('P032', 'Malm', 8999000, 'Ruang Tidur', 'Hitam', 'Tempat Tidur yang memiliki laci penyimpanan di setiap kanan kirinya\r\nkepala ranjang tinggi menambahkan rasa nyaman anda saat membaca atau menonton tv\r\nukuran 1600x200 cm\r\n', 'Fibreboard dan Baja', 3, NULL),
	('P033', 'VagsTra', 5999000, 'Ruang Tidur', 'putih', 'Kasur keras dengan pegas saku lapis ganda inovatif setinggi 28 cm. ', ' poliester  dan busa', 20, NULL),
	('P034', 'Mossa', 69990, 'Ruang Tidur', 'abu abu', 'Selimut kecil yang sangat lembut dengan ukuran 120x160cm', 'Poliester', 15, NULL),
	('P035', 'Burk', 189990, 'Ruang Tidur', 'biru', 'Seprai bekaret yang terasa sangat lembut dan nyaman dikulit\r\nukuran 120x200 cm\r\n', 'Poliester', 20, NULL),
	('P036', 'Kavle', 399000, 'Ruang Tidur', 'Putih', 'Bantal rendah dengan isian bulu angsa yang menawarkan\r\npenyangga yang nyaman dikepala anda.\r\nukuran : 50x80 cm\r\n\r\n', 'Katun dan bulu angsa', 20, NULL),
	('P037', 'Vand', 129000, 'Ruang Tidur', 'Putih', 'Guling yang sangat nyaman digunakan\r\nukuran : 21x90 cm\r\n', 'Poliester', 20, NULL),
	('P038', 'Dkisa', 2299000, 'Ruang Tidur', 'Coklat', 'Meja rias dengan desain yang simple dan pada bagian laci dapat diakses dari kedua sisi\r\nukuran : 76x47 cm\r\n', 'Bambu dan Fibreboard', 7, NULL),
	('P039', 'Vara', 499900, 'Ruang Tidur', 'Putih', 'Rak pakaian yang cocok untuk menggantung pakaian semi-kotor dan\r\nmengatur kekacauan dikamar anda\r\nukuran : 78x147 cm\r\n', 'Baja', 15, NULL),
	('P040\r\n', 'Borg', 599000, 'Ruang Tidur', 'Hitam', 'Gorden anti tembus yang cocok disemua tipe kamar tidur,\r\ndengan ukuran 145x250 cm\r\n', 'Poliester', 20, NULL),
	('P041', 'Tolken', 8158000, 'Kamar Mandi', 'Marmer Hitam', 'Wastafel kamar mandi yang memiliki tampilan yang bersih dan sederhana \r\nmudah dikombinasikan dengan peralatan lain didalam ruangan\r\ndapat menghemat air dan energi setiap kali mengangkat tuas keran air', 'Fibreboard\r\nFoil plastik\r\nLaminasi melamin tekanan', 1, NULL),
	('P042\r\n\r\n', 'Letan', 299000, 'Kamar Mandi', 'Bening', 'Cermin datar yang dapat menghemat ruangan \r\ndan menambah desain kamar mandi lebih modern\r\nukuran : 40x96 cm\r\n', 'Kaca', 19, NULL),
	('P043', 'Vilto', 899000, 'Kamar Mandi', 'Hitam', 'Rak Sudut menghemat ruangan kamar mandi.\r\ncocok untuk menyimpan handuk dan produk kecantikan untuk \r\nmenampilkan tampilan yang menawan.\r\nukuran : 37 x176 cm\r\n', 'Baja', 11, NULL),
	('P044', 'Grum', 29900, 'Kamar Mandi', 'Putih', 'Gayung yang dapat digantung pada gagangnya \r\nukuran : 27x13cm', 'Plastik', 20, NULL),
	('P045', 'Brog', 169000, 'Kamar Mandi', 'Silver', 'Sikat Toilet yang tahan lama dan mudah dibersihkan\r\ndan sikat toilet ini dapat ditempelkn pada dinding\r\nukuran : diameter 10cm dan tinggi 40cm\r\n', 'Baja dan Plastik', 6, NULL),
	('P046', 'Jarn', 29900, 'Kamar Mandi', 'Bening', 'Tempat Sikat gigi yang memiliki desain kaca bening \r\ndapat menambahkan kesan mewah pada kamar mandi\r\nukuran : 11cm\r\n', 'Kaca', 25, NULL),
	('P047', 'koln', 34990, 'Kamar Mandi', 'Putih', 'tempat sabun yang memiliki lekukan ditengahnya memberikan tampilan yang segar\r\ncocok untuk sabun,tapi juga bisa digunakan untuk tempat perhiasan\r\natau barang keecil yang mudah hilang\r\nukuran :13x9 cm\r', 'Tembikar', 12, NULL),
	('P048', 'Pilkan', 789900, 'Kamar Mandi', 'Silver', 'Keran Mixer wastafel dengan penyaring dan dilapisi krom', 'Kuningan', 23, NULL),
	('P049', 'Rund', 3995000, 'Kamar Mandi', 'silver', 'Set shower dengan mixer thermostatic yang dilapisi krom\r\n', 'Kuningan', 3, NULL),
	('P050', 'Viken', 149000, 'Kamar Mandi', 'Putih', 'Handuk mandi yang memiliki tekstur yang lembut yang sangat cocok untuk kulit\r\nukuran :140 x70 cm\r\n', 'Katun', 25, NULL),
	('P051', 'Syalen', 5695900, 'Ruang Tamu ', 'putih', 'Sofa 2 dudukan dengan sandaran yang tinggi serta sandaran lengan yang nyaman digunakan\r\nukuran :165x85 cm\r\n', 'Katun dan Poliester', 2, NULL),
	('P052', 'Pelloe', 1899900, 'Ruang Tamu', 'Putih', 'Kursi berlengan yang memiliki bentuk bengkok yang cukup kuat\r\nketika anda duduk dan memberikan dukungan punggung dan leher yang nyaman\r\nukuran : 67x96 cm\r\n', 'Kayu veener,baja,Katun', 6, NULL),
	('P053', 'Dnas', 4999000, 'Ruang Tamu', 'Coklat', 'Meja Tamu yang didesain dengan gaya kalsik dengan fungsi modern.\r\nbagian atas kaca dan bingkai kayu menambahkan keanggunan rumah.\r\nukuran :49x107 cm\r\n', 'Kaca,Fibreboard', 4, NULL),
	('P054', 'Ernas', 5999000, 'Ruang Tamu', 'soft Pink', 'Lemari Bufet kesan kayu birch dengan ukuran 180x79cm\r\n', 'Particleboard', 5, NULL),
	('P055', 'Byole', 899000, 'Ruang Tamu', 'Hitam', 'Karpet Bundar dengan pola geometris. Ditenun dari akrilik tahan noda yang tersa sangat lembut dikaki\r\nukuran 130cm', 'Akrilik', 10, NULL),
	('P056', 'Lesrta', 249000, 'Ruang Tamu', 'Silver', 'Lampu lantai yang cocok diletakan di ujung sofa,\r\nsehingga mendapatkan cahaya tepat dan lebih manis\r\nukuran 131cm\r\n', 'Baja dan Aluminium', 23, NULL),
	('P057', 'Sallat', 43990, 'Ruang Tamu', 'Hitam', 'Bantal sofa yang nyaman digunakan saat bersantai', 'Poliester', 19, NULL),
	('P058', 'Bror', 2290000, 'Ruang Tamu', 'Hitam\r\n', 'Rak penyimpanan sepatu dengan desain yang sangat simple', 'Baja Galvanis', 5, NULL),
	('P059', 'Bengta', 189990, 'Ruang Tamu', 'Biru ', 'Tirai anti tembus dengan ukura 210x250 cm', 'Poliester', 25, NULL),
	('P060', 'Jmdin', 599900, 'Ruang Tamu', 'Putih', 'Jam yang dapat digantung didinding maupun disimpan di rak, tidak ada suara detak jam yang mengganggu karena jam memiliki mesin quantz yang diam', 'Baja, Kaca,Aluminium', 34, NULL),
	('P061', 'Namaro', 3890900, 'Luar Ruangan', 'Coklat', 'Kursi santai cocok untuk diluar ruangan \r\ndengan panjang kursi 193cm dan lebar 67cm sangat nyaman jika sedang beristirahat\r\n', 'kayu dan poliester ', 4, NULL),
	('P062', 'Segron', 11029000, 'Luar Ruangan', 'Abu tua', 'Set kursi santai dengan 3 dudukan dan 1 meja cocok untuk digunakan dilaur ruangan\r\nukuran tiap dudukannya dengan kedalaman 48 cm x tinggi dudukan 40cm\r\n', 'Baja dan Polister', 3, NULL),
	('P063', 'Hogon', 1499000, 'Luar Ruangan', 'Abu abu', 'Tenda Payung gantung tanpa tiang yang menghalangi. mudah dilepas untuk dibersihkan', 'Baja dan Poliester', 11, NULL),
	('P064', 'Kurdana', 296990, 'Luar Ruangan', 'Abu-abu', 'Bantalan kursi santai dengan desain yang simple\r\ndan dapat dibalik kedua sisi dapat digunakan\r\nukuran : 190x60 cm\r\n\r\n', 'Poliester', 30, NULL),
	('P065', 'Socker', 19990, 'Luar Ruangan', 'Abu', 'Pot tanaman luar ruangan yang memiliki ukuran 10.5 cm\r\n\r\n', 'Galvanis', 20, NULL),
	('P066', 'Virke', 299000, 'Luar Ruangan', 'Hitam', 'Lampu sorot yang mudah dipasang dipermukaa logam karna memiliki magnet dibagian belakangnya.\r\nmudah digunakan karena tidak memerlukan kabel atau steker.\r\n', 'Baja dan plastik polikarbonat', 32, NULL),
	('P067', 'Smycka', 36790, 'Luar Ruangan', 'Merah', 'Bunga Mawar tiruan 52cm\r\n', 'poliester', 40, NULL),
	('P068', 'Boxma', 1225000, 'Luar Ruangan', 'Coklat', 'Box penyimpangan yang cocok untuk diluar ruangan \r\ndengan ukuran 80x40x45cm\r\n', 'Kayu', 6, NULL),
	('P069', 'Manso', 3599900, 'Luar Ruangan', 'Hitam', 'Meja yang kokoh yang dapat menmapung 4-6 orang\r\ntampilan yang modern dengan ukuran 161x93 cm\r\n', 'Baja dan Aluminium', 9, NULL),
	('P070', 'Ruen', 129990, 'Ruang Keluarga', 'Hitam', 'Dek lantai  yang cocok untuk diluar ruangan dengan ukuran 0.81cm/persegi', 'Plastik polipropilen', 100, _binary 0x5b42403166653062343836),
	('P099', 'oxva', 295000, 'Luar Ruangan', 'Hitam', 'mantap', 'Baja dan Aluminium', 9, _binary 0x5b42403465613431303263);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
