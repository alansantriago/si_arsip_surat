DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tbl_disposisi VALUES("2","Ketua Yayasan Al Fida Bengkulu","Menambahkan Workshop lebih banyak lagi","Segera","2022-06-30","Mencari tempat workshop yang strategis","11","1");
INSERT INTO tbl_disposisi VALUES("3","Ketua Yayasan Al Fida Bengkulu","Menambahkan 10 Laptop lagi","Penting","2022-07-08","Laptop dengan spesifikasi untuk Rendering","9","1");



DROP TABLE tbl_instansi;

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_instansi VALUES("1","Yayasan Pendidikan, Sosial, dan Dakwah Al-Fida Bengkulu","SMA IT IQRA Kota Bengkulu","\"TERAKREDITASI A\"","Jl. Merawan 19 RT 25 RW 07 Kel. Sawah Lebar, Kec. Ratu Agung, Kota Bengkulu","Sutrisno, M.TPd.","19820910 200307 1 008","https://smait-iqrabengkulu.sch.id/","smait.iqra14@gmail.com","logo smait 1 (1) (1).png","1");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO tbl_klasifikasi VALUES("1","01","Pemberitahuan","Surat Pemberitahuan","1");
INSERT INTO tbl_klasifikasi VALUES("2","02","Pengajuan","Surat Pengajuan","1");
INSERT INTO tbl_klasifikasi VALUES("3","03","Undangan","Surat Undangan","1");
INSERT INTO tbl_klasifikasi VALUES("4","04","Permohonan","Surat Permohonan","1");
INSERT INTO tbl_klasifikasi VALUES("5","05","Kegiatan","Surat Kegiatan","1");
INSERT INTO tbl_klasifikasi VALUES("6","06","Pengumuman","Surat Pengumuman","1");
INSERT INTO tbl_klasifikasi VALUES("7","07","Pengambilan","Surat Pengambilan","1");
INSERT INTO tbl_klasifikasi VALUES("8","08","Keterangan","Surat Keterangan","1");
INSERT INTO tbl_klasifikasi VALUES("9","09","Pernyataan","Surat Pernyataan","1");
INSERT INTO tbl_klasifikasi VALUES("10","10","Pencabutan","Surat Pencabutan","1");
INSERT INTO tbl_klasifikasi VALUES("11","11","Pengantar","Surat Pengantar","1");
INSERT INTO tbl_klasifikasi VALUES("12","12","Pelaksanaan","Surat Pelaksanaan","1");



DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_sett VALUES("1","10","10","10","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_keluar VALUES("4","1","Ketua Yayasan Al Fida Bengkulu","092/SMAITIQRA/VIII/2019","Izin Kegiatan Kepala Sekolah","05","2019-08-28","2022-06-22","1339-Surat 2021-2022 1.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("5","2","Bapak/Ibu Orang Tua Siswa","/SMAITIQRA/IX/2019","Pemberitahuan Penerbitan Buku Siswa","01","2019-09-03","2022-06-22","7065-Surat 2021-2022 2.pdf","Wira Yanasari, S.Pd","1");
INSERT INTO tbl_surat_keluar VALUES("6","3","Kepala Dinas Dikbud Provinsi Bengkulu","/SMAITIQRA/SKP/XI/2019","Surat Keterangan Penelitian","08","2019-09-06","2022-06-22","2153-Surat 2021-2022 3.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("7","4","Sekolah Imbas Kewirausahaan","114/SMAITIQRA/IX/2019","Undangan IHT Kewirausahaan 2019","03","2019-09-09","2022-06-22","9560-Surat 2021-2022 4.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("8","5","Siswa/i SMAIT IQRA Kota Bengkulu","088/SMAITIQRA/X/2019","Surat Pernyataan Siswa/i","09","2019-10-09","2022-06-22","9767-Surat 2021-2022 5.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("9","6","Sekolah Imbas Kewirausahaan","116/SMAITIQRA/IX/2019","Undangan IHT Kewirausahaan 2019","03","2022-09-25","2022-06-22","1334-Surat 2021-2022 11.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("10","7","Bapak Hariyantoni, M.Pd","245/SMAITIQRA/IX/2019","Undangan Narasumber","03","2019-09-26","2022-06-22","5948-Surat 2021-2022 12.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("11","8","Kepala Kantor Advokat/Konsultan Hukum Novran Harisa dan Rekan","565 /SMAITIQRA/X/2019","Surat Pencabutan Surat Kuasa Hukum","10","2022-10-01","2022-06-22","7796-Surat 2021-2022 13.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("12","9","Kepala Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu Cq. Operator DAPODIKMEN","/SMAITIQRA/X/2019","Surat Pengantar","11","2019-10-07","2022-06-22","5935-Surat 2021-2022 14.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("13","10","Bapak Kepala Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu","345/SMAITIQRA/X/2019","Undangan Membuka Acara YLC","03","2019-10-10","2022-06-22","5173-Surat 2021-2022 16.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("14","11","Kepala Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu Cq. Bidang Pembinaan Ketenagaan","258/SMAITIQRA/X/2019","Surat Pengatar","11","2019-10-15","2022-06-22","1370-Surat 2021-2022 17.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("15","12"," Guru Penerima Tunjangan Profesi Guru (Tpg)","216/SMAITIQRA/X/2019","Surat Pernyataan","09","2019-10-15","2022-06-22","9768-Surat 2021-2022 19.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("16","13","Guru Penerima Tunjangan Profesi Guru (TPG)","/SMAITIQRA/VI/2019","Surat Pernyataan","09","2022-06-15","2022-06-23","705-Surat 2021-2022 20.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("17","14"," Guru Penerima Tunjangan Profesi Guru (TPG)","197/SMAITIQRA/VI/2019","Surat Pernyataan","09","2022-06-15","2022-06-23","1892-Surat 2021-2022 21.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("18","15","DANLANAL Bengkulu","211/SMAITIQRA/X/2019","Pengisi Acara Pendidikan Karakter","03","2022-10-23","2022-06-23","9416-Surat 2021-2022 22.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("19","16","Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu Cq. Bagian Pengelolaan Dana BOS","233/SMAITIQRA/X/2019","Surat Pengantar","11","2019-10-01","2022-06-23","3168-Surat 2021-2022 23.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("20","17","Orang Tua/Wali Murid Kelas XI (Sebelas)","376/SMAITIQRA/IX/2017","Surat Undangan","03","2017-09-08","2022-06-23","2489-Surat 2021-2022 24.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("21","18","Kepala Biro SDM Kemendikbud Kompleks Kementrian Pendidikan dan Kebudayaan Gedung C lt.5 Jl. Jendral Sudirman, Senayan, Jakarta Selatan 12190, Indonesia","477/SMAITIQRA/IX/2019","Perbaikan Penulisan NUPTK di SK Inpassing","02","2019-11-05","2022-06-23","2269-Surat 2021-2022 25.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("22","19","Kepala Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu Cq. Operator Dapodikmen","/SMAITIQRA/XII/2019","Surat Pengantar","11","2019-12-23","2022-06-23","8774-Surat 2021-2022 27.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("23","20","Kepala Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu","/SMAITIQRA/XI/2019","Permohonan Memberikan Kata Pengantar Buku Karya Ilmiah Siswa","04","2022-11-18","2022-06-23","1137-Surat 2021-2022 29.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("24","21","Penambahan PTK","592/ptk/SMAITIQRA/XI/2019","Surat Keterangan Kebutuhan Penambahan PTK","08","2019-11-21","2022-06-23","9802-Surat 2021-2022 30.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("25","22","Kepala Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu Cq. Operator Dapodikmen","593/SMAITIQRA/XI/2019","Surat Pengantar","11","2019-11-21","2022-06-23","8069-Surat 2021-2022 32.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("26","23","Bapak/Ibu Wali Murid Kelas XII","475/SMAITIQRA/XI/2019","Surat Undangan","03","2019-11-22","2022-06-23","5493-Surat 2021-2022 37.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("27","24","Kementrian Pendidikan dan Kebudayaan Indonesia","603/SMAITIQRA/XII/2019","Surat Pengantar","11","2019-12-17","2022-06-23","8204-Surat 2021-2022 40.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("28","25","Ka. Dinas Pendidikan dan kebudayaan Provinsi Bengkulu","571/SMAITIQRA/XII/2019","Usulan Bendahara BOS","02","2019-12-10","2022-06-23","9448-Surat 2021-2022 39.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("29","26","Dana PIP di bank penyalur","579/SMAITIQRA/XI/2019","Surat Keterangan Kepala Sekolah","08","2019-11-29","2022-06-23","758-Surat 2021-2022 38.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("30","27","Dana PIP di bank penyalur","001/SMAITIQRA/I/2020","Surat Keterangan Kepala Sekolah","08","2020-01-06","2022-06-23","6451-Surat 2021-2022 41.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("31","28","Ketua Yayasan Al-Fida Kota Bengkulu Cq. Bidang Kepegawaian","003/SMAITIQRA/I/2020","Surat Pengantar","11","2020-01-09","2022-06-23","3877-Surat 2021-2022 42.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("32","29","SMAIT IQRA KOTA BENGKULU","007/SMAITIQRA/I/2020","DAFTAR NAMA PENGAJUAN PERUBAHAN STATUS KEPEGAWAIAN SMAIT IQRA KOTA BENGKULU TAHUN 2020","02","2020-01-09","2022-06-23","7779-Surat 2021-2022 43.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("33","30","Kepala Dinas Perhubungan Kota Bengkulu","002/SMAITIQRA/I/2020","Izin Uji Penelitian","04","2020-01-01","2022-06-23","1046-Surat 2021-2022 44.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("34","31","Ketua PMI Kota Bengkulu","037/SMAITIQRA/I/2020","Kerjasama Kegiatan Donor Darah Sukarela","04","2020-01-31","2022-06-23","7695-Surat 2021-2022 45.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("35","32","Ketua Yayasan Al-Fida Kota Bengkulu Cq. Bidang Kepegawaian","040/SMAITIQRA/II/2020","Surat Pengantar","11","2020-03-03","2022-06-23","7709-Surat 2021-2022 46.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("36","33","SMAIT IQRA KOTA BENGKULU","067/SMAITIQRA/III/2020","Rincian Kebutuhan Kepegawaian SMAIT IQRA Kota Bengkulu","08","2020-03-03","2022-06-23","7329-Surat 2021-2022 47.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("37","34","Kepala Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu Cq. Operator Dapodik Provinsi","103/SMAITIQRA/IV/2020","Surat Pengantar","11","2020-04-05","2022-06-23","2117-Surat 2021-2022 48.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("38","35","Kepala Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu","088/SMAITIQRA/IV/2020","Surat Pengantar","11","2022-04-15","2022-06-23","8272-Surat 2021-2022 49.pdf","Sutrisno, M.TPd","1");
INSERT INTO tbl_surat_keluar VALUES("39","36","Kepala Dinas Pendidikan dan Kebudayaan Provinsi Bengkulu Cq. Operator Dapodikmen","035/SMAITIQRA/VI/2020","Surat Pengantar","11","2020-06-16","2022-06-23","4848-Surat 2021-2022 50.pdf","Sutrisno, M.TPd","1");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_masuk VALUES("3","1","101/DS/XI/18","CV DUA SAUDARA","Pesanan Barang","04","1","2018-11-11","2022-06-23","2778-1 (1).pdf","Eko Nugraha","1");
INSERT INTO tbl_surat_masuk VALUES("4","2","255/IM/XII/2018","CV. JAYA SELALU","Pesanan Jasa Perbaikan AC","04","1","2018-11-11","2022-06-23","9058-1 (2).pdf","Bayu Putra","1");
INSERT INTO tbl_surat_masuk VALUES("5","3","11/12/XII/2018","PT. ABADI SELALU","Penawaran Barang","02","1","2018-11-11","2022-06-23","936-1 (3).pdf","M. Akbar","1");
INSERT INTO tbl_surat_masuk VALUES("6","4","005/PTSAB/60/VIII/2019","PT. SEGAR ALAM ABADI","Penawaran Jasa","02","1","2019-11-08","2022-06-23","2163-1 (4).pdf","Saparuddin","1");
INSERT INTO tbl_surat_masuk VALUES("7","5","010/URP/MB/XII/2018","PT. MAJU MUNDUR","Undangan Rapat Perusahaan","03","1","2018-11-11","2022-06-23","1731-1 (5).pdf","Toni Putra","1");
INSERT INTO tbl_surat_masuk VALUES("8","6","034/PT.ML/VI/2022","PT. MAJU LANCAR","Penawaran Kerjasama","02","1","2022-06-02","2022-06-23","4202-1 (6).pdf","Trihadjoko","1");
INSERT INTO tbl_surat_masuk VALUES("9","7","020/KE/IV/2021","PT KARYA ELEKTRIK","Konfirmasi Pesanan","09","1","2021-04-13","2022-06-23","5732-1 (7).pdf","Jhoni Herlambang","1");
INSERT INTO tbl_surat_masuk VALUES("10","8","79/KP/X/22","PT SURYA KENCANA","Pemberitahuan Pindah Alamat","01","1","2021-10-05","2022-06-23","4862-1 (8).pdf","Wini Ristiani","1");
INSERT INTO tbl_surat_masuk VALUES("11","9","90/PK/XI/20","PT SURYA KENCANA","Balasan Menjalankan Workshop","01","1","2020-11-11","2022-06-23","2209-1 (9).pdf","Wini Ristiani","1");
INSERT INTO tbl_surat_masuk VALUES("12","10","101/PK/VIII/2022","PT SURYA KENCANA","Surat Permohonan","04","1","2022-06-22","2022-06-23","8379-1 (9).pdf","Sutrisno, M.TPd","1");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("1","admin","21232f297a57a5a743894a0e4a801fc3","Dede Ridwansya, A.Md","198712112016011125 ","1");
INSERT INTO tbl_user VALUES("3","alaninformatika","e10adc3949ba59abbe56e057f20f883e","Alan Syahlan Santriago","711019088","2");



