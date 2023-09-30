-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Sep 2023 pada 14.44
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog_tekno`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `post_title`, `post_content`, `post_image`, `created_at`, `updated_at`) VALUES
(7, 1, 'ipsum dolor sit amet, consectetur adipiscing elit. Donec consequat quis nibh sit amet ornare. Proin sapien tellus, sollicitudin lacinia quam feugiat, ornare rutrum enim. Curabitur elementum magna nibh, placerat commodo est pretium quis.', 'Proin sapien tellus, sollicitudin lacinia quam feugiat, ornare rutrum enim. Curabitur elementum magna nibh, placerat commodo est pretium quis. Vivamus scelerisque arcu purus, eu fringilla magna feugiat id. Ut ullamcorper luctus cursus. Donec vel sem non tellus ornare lacinia sed at augue. Ut eget viverra arcu, ut ullamcorper lectus. Maecenas feugiat, dolor eu aliquam sagittis, dui erat mollis enim, fermentum blandit libero magna eget mauris. Morbi bibendum sodales turpis at pharetra. Quisque id mi mauris. Aenean in sagittis tortor, nec facilisis nibh.\r\n\r\nFusce sed ipsum in orci cursus aliquam. Phasellus diam neque, pellentesque in convallis sit amet, consectetur ut dolor. Quisque non dolor vitae ipsum pharetra lobortis eget ut mi. Etiam maximus porttitor auctor. Nam posuere eros non nibh lobortis, quis rhoncus ipsum laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer gravida eros at sodales consequat. Etiam euismod sem luctus tincidunt finibus. Vivamus ultrices, tortor a ornare egestas, felis risus dictum purus, id condimentum risus sem ac nisl. Etiam aliquet tempus nisi vel placerat. Aliquam iaculis pharetra purus, sit amet lacinia leo commodo eget.', '1696075118_453855_spongebob-squarepants-supersponge-battle-for-bikini-bottom-gba_1680x1050_h.jpg', '2023-09-30 06:54:49', '2023-09-30 12:38:18'),
(8, 1, 'dolor sit amet, consectetur adipiscing elit. Donec rhoncus, metus eu aliquam ornare, massa velit pulvinar tortor, eget posuere orci tortor id massa.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus, metus eu aliquam ornare, massa velit pulvinar tortor, eget posuere orci tortor id massa. Sed vitae dui tempus, feugiat urna vel, laoreet eros. Aenean ut neque sed ex sagittis aliquet non ut nunc. Fusce congue enim sed tortor elementum aliquam. Sed non ligula consectetur, aliquet eros quis, mollis augue. Mauris fermentum nunc vitae velit vestibulum mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed consectetur nisi porttitor, fermentum nulla et, finibus nisi. Praesent ut sollicitudin nisl, ac lobortis odio. Maecenas varius pretium scelerisque. Suspendisse et justo nec urna tristique commodo. Nunc a semper lacus, pulvinar hendrerit justo. Mauris tempus velit sodales lacus volutpat, vel vulputate velit semper.\r\n\r\nEtiam ullamcorper convallis enim, sed convallis lorem elementum a. Cras gravida nibh in elit volutpat varius. Donec sed eros nec ipsum finibus convallis. Morbi vel mattis dui. Vestibulum ac justo non dui facilisis posuere. Fusce a auctor nisl, mattis ullamcorper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate porttitor ipsum, quis pulvinar ipsum sollicitudin sit amet. Praesent iaculis sed diam ac vehicula. In vehicula nulla ac rutrum aliquam.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed scelerisque, tortor at egestas porta, ipsum tortor facilisis dolor, ut tempor nisl metus at elit. Vivamus ac nibh ut justo facilisis vehicula. Phasellus eu risus vitae ipsum hendrerit aliquam. Proin aliquam mauris eu ipsum feugiat, in lacinia ex rhoncus. Nulla congue, justo a varius tincidunt, odio justo mollis eros, vel porttitor nisl urna bibendum metus. Proin eget finibus lacus. Fusce in nunc varius mi congue pellentesque vitae ac nunc. Curabitur id erat ut risus facilisis facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus consequat, ligula sit amet rhoncus sagittis, elit metus fermentum elit, quis pellentesque enim nibh sed sapien. Pellentesque eu accumsan felis. Aliquam nunc dui, viverra pellentesque purus malesuada, suscipit iaculis nisi. In eu sollicitudin nisl, nec posuere orci. Nullam vel dui mauris. Duis consectetur ipsum quis sapien fringilla, ut egestas sem bibendum.\r\n\r\nEtiam vestibulum lacinia arcu, nec blandit purus pulvinar a. Fusce eros risus, ullamcorper vehicula velit eget, sollicitudin lacinia turpis. Cras aliquet sem efficitur tempus posuere. Nam sit amet aliquam dolor, et ultricies nisl. Vestibulum ut mauris nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur iaculis dolor massa, non finibus felis egestas non.\r\n\r\nPellentesque at justo gravida risus feugiat ornare sit amet ac felis. Duis tristique at ligula nec condimentum. Sed id augue ut purus vulputate condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce tellus diam, placerat nec malesuada ac, iaculis sed nibh. Nam cursus risus vel fringilla iaculis. Aenean varius ligula ultrices, elementum ligula sed, laoreet tellus. Pellentesque accumsan faucibus velit, sit amet tincidunt diam pellentesque at. Sed et ultricies sapien. Mauris tempor ex orci, nec facilisis felis eleifend eu. Vestibulum vitae dictum nisl. Maecenas gravida nulla ac mauris ullamcorper commodo. Mauris ultricies venenatis sem, vehicula condimentum libero elementum vel. Nam et accumsan ex. Vivamus eget ornare orci. Aenean iaculis risus tortor, in faucibus massa maximus quis.\r\n\r\nPellentesque non sapien ac orci blandit feugiat. Cras blandit convallis quam, sit amet maximus mauris iaculis eu. Vivamus sollicitudin metus rutrum nisi commodo vulputate. Integer ac lobortis lacus. Integer hendrerit sit amet eros a ultricies. Morbi facilisis orci quis risus sollicitudin, eget elementum nisi posuere. Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultrices risus id elit luctus venenatis in egestas velit.\r\n\r\nMorbi id ante et nulla cursus tristique eget at arcu. Integer tempor nisi elit, a interdum urna viverra non. Quisque ullamcorper lorem id pulvinar pharetra. Fusce consequat odio sit amet tincidunt porta. Curabitur bibendum eget augue vitae dapibus. Sed tempor, enim eu sagittis commodo, justo massa venenatis eros, et molestie velit turpis vitae leo. Praesent velit metus, feugiat id ornare ac, interdum vitae tellus. Maecenas eget fermentum leo. Nam rhoncus quis quam sed laoreet. Donec nisi lectus, pharetra nec ullamcorper vel, bibendum sed dolor. Curabitur ultrices rutrum ligula eu iaculis.', '1696077137_batik-1.jpg', '2023-09-15 11:28:10', '2023-09-30 12:32:17'),
(9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus, metus eu aliquam ornare, massa velit pulvinar tortor, eget posuere orci tortor id massa.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus, metus eu aliquam ornare, massa velit pulvinar tortor, eget posuere orci tortor id massa. Sed vitae dui tempus, feugiat urna vel, laoreet eros. Aenean ut neque sed ex sagittis aliquet non ut nunc. Fusce congue enim sed tortor elementum aliquam. Sed non ligula consectetur, aliquet eros quis, mollis augue. Mauris fermentum nunc vitae velit vestibulum mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed consectetur nisi porttitor, fermentum nulla et, finibus nisi. Praesent ut sollicitudin nisl, ac lobortis odio. Maecenas varius pretium scelerisque. Suspendisse et justo nec urna tristique commodo. Nunc a semper lacus, pulvinar hendrerit justo. Mauris tempus velit sodales lacus volutpat, vel vulputate velit semper.\r\n\r\nEtiam ullamcorper convallis enim, sed convallis lorem elementum a. Cras gravida nibh in elit volutpat varius. Donec sed eros nec ipsum finibus convallis. Morbi vel mattis dui. Vestibulum ac justo non dui facilisis posuere. Fusce a auctor nisl, mattis ullamcorper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate porttitor ipsum, quis pulvinar ipsum sollicitudin sit amet. Praesent iaculis sed diam ac vehicula. In vehicula nulla ac rutrum aliquam.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed scelerisque, tortor at egestas porta, ipsum tortor facilisis dolor, ut tempor nisl metus at elit. Vivamus ac nibh ut justo facilisis vehicula. Phasellus eu risus vitae ipsum hendrerit aliquam. Proin aliquam mauris eu ipsum feugiat, in lacinia ex rhoncus. Nulla congue, justo a varius tincidunt, odio justo mollis eros, vel porttitor nisl urna bibendum metus. Proin eget finibus lacus. Fusce in nunc varius mi congue pellentesque vitae ac nunc. Curabitur id erat ut risus facilisis facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus consequat, ligula sit amet rhoncus sagittis, elit metus fermentum elit, quis pellentesque enim nibh sed sapien. Pellentesque eu accumsan felis. Aliquam nunc dui, viverra pellentesque purus malesuada, suscipit iaculis nisi. In eu sollicitudin nisl, nec posuere orci. Nullam vel dui mauris. Duis consectetur ipsum quis sapien fringilla, ut egestas sem bibendum.\r\n\r\nEtiam vestibulum lacinia arcu, nec blandit purus pulvinar a. Fusce eros risus, ullamcorper vehicula velit eget, sollicitudin lacinia turpis. Cras aliquet sem efficitur tempus posuere. Nam sit amet aliquam dolor, et ultricies nisl. Vestibulum ut mauris nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur iaculis dolor massa, non finibus felis egestas non.\r\n\r\nPellentesque at justo gravida risus feugiat ornare sit amet ac felis. Duis tristique at ligula nec condimentum. Sed id augue ut purus vulputate condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce tellus diam, placerat nec malesuada ac, iaculis sed nibh. Nam cursus risus vel fringilla iaculis. Aenean varius ligula ultrices, elementum ligula sed, laoreet tellus. Pellentesque accumsan faucibus velit, sit amet tincidunt diam pellentesque at. Sed et ultricies sapien. Mauris tempor ex orci, nec facilisis felis eleifend eu. Vestibulum vitae dictum nisl. Maecenas gravida nulla ac mauris ullamcorper commodo. Mauris ultricies venenatis sem, vehicula condimentum libero elementum vel. Nam et accumsan ex. Vivamus eget ornare orci. Aenean iaculis risus tortor, in faucibus massa maximus quis.\r\n\r\nPellentesque non sapien ac orci blandit feugiat. Cras blandit convallis quam, sit amet maximus mauris iaculis eu. Vivamus sollicitudin metus rutrum nisi commodo vulputate. Integer ac lobortis lacus. Integer hendrerit sit amet eros a ultricies. Morbi facilisis orci quis risus sollicitudin, eget elementum nisi posuere. Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultrices risus id elit luctus venenatis in egestas velit.\r\n\r\nMorbi id ante et nulla cursus tristique eget at arcu. Integer tempor nisi elit, a interdum urna viverra non. Quisque ullamcorper lorem id pulvinar pharetra. Fusce consequat odio sit amet tincidunt porta. Curabitur bibendum eget augue vitae dapibus. Sed tempor, enim eu sagittis commodo, justo massa venenatis eros, et molestie velit turpis vitae leo. Praesent velit metus, feugiat id ornare ac, interdum vitae tellus. Maecenas eget fermentum leo. Nam rhoncus quis quam sed laoreet. Donec nisi lectus, pharetra nec ullamcorper vel, bibendum sed dolor. Curabitur ultrices rutrum ligula eu iaculis.', '1696077161_dfd_level2_kelolaPerusahaan.png', '2023-09-30 03:00:58', '2023-09-30 12:32:41'),
(10, 1, 'awdadaQuisque ullamcorper lorem id pulvinar pharetra. Fusce consequat odio sit amet tincidunt porta. Curabitur bibendum eget augue vitae dapibus. Sed tempor, enim eu sagittis commodo, justo massa venenatis eros, et molestie velit turpis vitae leo.dad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus, metus eu aliquam ornare, massa velit pulvinar tortor, eget posuere orci tortor id massa. Sed vitae dui tempus, feugiat urna vel, laoreet eros. Aenean ut neque sed ex sagittis aliquet non ut nunc. Fusce congue enim sed tortor elementum aliquam. Sed non ligula consectetur, aliquet eros quis, mollis augue. Mauris fermentum nunc vitae velit vestibulum mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed consectetur nisi porttitor, fermentum nulla et, finibus nisi. Praesent ut sollicitudin nisl, ac lobortis odio. Maecenas varius pretium scelerisque. Suspendisse et justo nec urna tristique commodo. Nunc a semper lacus, pulvinar hendrerit justo. Mauris tempus velit sodales lacus volutpat, vel vulputate velit semper.\r\n\r\nEtiam ullamcorper convallis enim, sed convallis lorem elementum a. Cras gravida nibh in elit volutpat varius. Donec sed eros nec ipsum finibus convallis. Morbi vel mattis dui. Vestibulum ac justo non dui facilisis posuere. Fusce a auctor nisl, mattis ullamcorper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate porttitor ipsum, quis pulvinar ipsum sollicitudin sit amet. Praesent iaculis sed diam ac vehicula. In vehicula nulla ac rutrum aliquam.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed scelerisque, tortor at egestas porta, ipsum tortor facilisis dolor, ut tempor nisl metus at elit. Vivamus ac nibh ut justo facilisis vehicula. Phasellus eu risus vitae ipsum hendrerit aliquam. Proin aliquam mauris eu ipsum feugiat, in lacinia ex rhoncus. Nulla congue, justo a varius tincidunt, odio justo mollis eros, vel porttitor nisl urna bibendum metus. Proin eget finibus lacus. Fusce in nunc varius mi congue pellentesque vitae ac nunc. Curabitur id erat ut risus facilisis facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus consequat, ligula sit amet rhoncus sagittis, elit metus fermentum elit, quis pellentesque enim nibh sed sapien. Pellentesque eu accumsan felis. Aliquam nunc dui, viverra pellentesque purus malesuada, suscipit iaculis nisi. In eu sollicitudin nisl, nec posuere orci. Nullam vel dui mauris. Duis consectetur ipsum quis sapien fringilla, ut egestas sem bibendum.\r\n\r\nEtiam vestibulum lacinia arcu, nec blandit purus pulvinar a. Fusce eros risus, ullamcorper vehicula velit eget, sollicitudin lacinia turpis. Cras aliquet sem efficitur tempus posuere. Nam sit amet aliquam dolor, et ultricies nisl. Vestibulum ut mauris nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur iaculis dolor massa, non finibus felis egestas non.\r\n\r\nPellentesque at justo gravida risus feugiat ornare sit amet ac felis. Duis tristique at ligula nec condimentum. Sed id augue ut purus vulputate condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce tellus diam, placerat nec malesuada ac, iaculis sed nibh. Nam cursus risus vel fringilla iaculis. Aenean varius ligula ultrices, elementum ligula sed, laoreet tellus. Pellentesque accumsan faucibus velit, sit amet tincidunt diam pellentesque at. Sed et ultricies sapien. Mauris tempor ex orci, nec facilisis felis eleifend eu. Vestibulum vitae dictum nisl. Maecenas gravida nulla ac mauris ullamcorper commodo. Mauris ultricies venenatis sem, vehicula condimentum libero elementum vel. Nam et accumsan ex. Vivamus eget ornare orci. Aenean iaculis risus tortor, in faucibus massa maximus quis.\r\n\r\nPellentesque non sapien ac orci blandit feugiat. Cras blandit convallis quam, sit amet maximus mauris iaculis eu. Vivamus sollicitudin metus rutrum nisi commodo vulputate. Integer ac lobortis lacus. Integer hendrerit sit amet eros a ultricies. Morbi facilisis orci quis risus sollicitudin, eget elementum nisi posuere. Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultrices risus id elit luctus venenatis in egestas velit.\r\n\r\nMorbi id ante et nulla cursus tristique eget at arcu. Integer tempor nisi elit, a interdum urna viverra non. Quisque ullamcorper lorem id pulvinar pharetra. Fusce consequat odio sit amet tincidunt porta. Curabitur bibendum eget augue vitae dapibus. Sed tempor, enim eu sagittis commodo, justo massa venenatis eros, et molestie velit turpis vitae leo. Praesent velit metus, feugiat id ornare ac, interdum vitae tellus. Maecenas eget fermentum leo. Nam rhoncus quis quam sed laoreet. Donec nisi lectus, pharetra nec ullamcorper vel, bibendum sed dolor. Curabitur ultrices rutrum ligula eu iaculis.', 'default.png', '2023-09-30 04:02:57', '2023-09-30 11:46:22'),
(11, 1, 'feugiat id ornare ac, interdum vitae tellus. Maecenas eget fermentum leo. Nam rhoncus quis quam sed laoreet.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus, metus eu aliquam ornare, massa velit pulvinar tortor, eget posuere orci tortor id massa. Sed vitae dui tempus, feugiat urna vel, laoreet eros. Aenean ut neque sed ex sagittis aliquet non ut nunc. Fusce congue enim sed tortor elementum aliquam. Sed non ligula consectetur, aliquet eros quis, mollis augue. Mauris fermentum nunc vitae velit vestibulum mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed consectetur nisi porttitor, fermentum nulla et, finibus nisi. Praesent ut sollicitudin nisl, ac lobortis odio. Maecenas varius pretium scelerisque. Suspendisse et justo nec urna tristique commodo. Nunc a semper lacus, pulvinar hendrerit justo. Mauris tempus velit sodales lacus volutpat, vel vulputate velit semper.\r\n\r\nEtiam ullamcorper convallis enim, sed convallis lorem elementum a. Cras gravida nibh in elit volutpat varius. Donec sed eros nec ipsum finibus convallis. Morbi vel mattis dui. Vestibulum ac justo non dui facilisis posuere. Fusce a auctor nisl, mattis ullamcorper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate porttitor ipsum, quis pulvinar ipsum sollicitudin sit amet. Praesent iaculis sed diam ac vehicula. In vehicula nulla ac rutrum aliquam.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed scelerisque, tortor at egestas porta, ipsum tortor facilisis dolor, ut tempor nisl metus at elit. Vivamus ac nibh ut justo facilisis vehicula. Phasellus eu risus vitae ipsum hendrerit aliquam. Proin aliquam mauris eu ipsum feugiat, in lacinia ex rhoncus. Nulla congue, justo a varius tincidunt, odio justo mollis eros, vel porttitor nisl urna bibendum metus. Proin eget finibus lacus. Fusce in nunc varius mi congue pellentesque vitae ac nunc. Curabitur id erat ut risus facilisis facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus consequat, ligula sit amet rhoncus sagittis, elit metus fermentum elit, quis pellentesque enim nibh sed sapien. Pellentesque eu accumsan felis. Aliquam nunc dui, viverra pellentesque purus malesuada, suscipit iaculis nisi. In eu sollicitudin nisl, nec posuere orci. Nullam vel dui mauris. Duis consectetur ipsum quis sapien fringilla, ut egestas sem bibendum.\r\n\r\nEtiam vestibulum lacinia arcu, nec blandit purus pulvinar a. Fusce eros risus, ullamcorper vehicula velit eget, sollicitudin lacinia turpis. Cras aliquet sem efficitur tempus posuere. Nam sit amet aliquam dolor, et ultricies nisl. Vestibulum ut mauris nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur iaculis dolor massa, non finibus felis egestas non.\r\n\r\nPellentesque at justo gravida risus feugiat ornare sit amet ac felis. Duis tristique at ligula nec condimentum. Sed id augue ut purus vulputate condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce tellus diam, placerat nec malesuada ac, iaculis sed nibh. Nam cursus risus vel fringilla iaculis. Aenean varius ligula ultrices, elementum ligula sed, laoreet tellus. Pellentesque accumsan faucibus velit, sit amet tincidunt diam pellentesque at. Sed et ultricies sapien. Mauris tempor ex orci, nec facilisis felis eleifend eu. Vestibulum vitae dictum nisl. Maecenas gravida nulla ac mauris ullamcorper commodo. Mauris ultricies venenatis sem, vehicula condimentum libero elementum vel. Nam et accumsan ex. Vivamus eget ornare orci. Aenean iaculis risus tortor, in faucibus massa maximus quis.\r\n\r\nPellentesque non sapien ac orci blandit feugiat. Cras blandit convallis quam, sit amet maximus mauris iaculis eu. Vivamus sollicitudin metus rutrum nisi commodo vulputate. Integer ac lobortis lacus. Integer hendrerit sit amet eros a ultricies. Morbi facilisis orci quis risus sollicitudin, eget elementum nisi posuere. Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultrices risus id elit luctus venenatis in egestas velit.\r\n\r\nMorbi id ante et nulla cursus tristique eget at arcu. Integer tempor nisi elit, a interdum urna viverra non. Quisque ullamcorper lorem id pulvinar pharetra. Fusce consequat odio sit amet tincidunt porta. Curabitur bibendum eget augue vitae dapibus. Sed tempor, enim eu sagittis commodo, justo massa venenatis eros, et molestie velit turpis vitae leo. Praesent velit metus, feugiat id ornare ac, interdum vitae tellus. Maecenas eget fermentum leo. Nam rhoncus quis quam sed laoreet. Donec nisi lectus, pharetra nec ullamcorper vel, bibendum sed dolor. Curabitur ultrices rutrum ligula eu iaculis.', 'default.png', '2023-09-30 04:03:01', '2023-09-30 11:49:41'),
(12, 1, 'Nam rhoncus quis quam sed laoreet. Donec nisi lectus, pharetra nec ullamcorper vel, bibendum sed dolor. Curabitur ultrices rutrum ligula eu iaculis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus, metus eu aliquam ornare, massa velit pulvinar tortor, eget posuere orci tortor id massa. Sed vitae dui tempus, feugiat urna vel, laoreet eros. Aenean ut neque sed ex sagittis aliquet non ut nunc. Fusce congue enim sed tortor elementum aliquam. Sed non ligula consectetur, aliquet eros quis, mollis augue. Mauris fermentum nunc vitae velit vestibulum mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed consectetur nisi porttitor, fermentum nulla et, finibus nisi. Praesent ut sollicitudin nisl, ac lobortis odio. Maecenas varius pretium scelerisque. Suspendisse et justo nec urna tristique commodo. Nunc a semper lacus, pulvinar hendrerit justo. Mauris tempus velit sodales lacus volutpat, vel vulputate velit semper.\r\n\r\nEtiam ullamcorper convallis enim, sed convallis lorem elementum a. Cras gravida nibh in elit volutpat varius. Donec sed eros nec ipsum finibus convallis. Morbi vel mattis dui. Vestibulum ac justo non dui facilisis posuere. Fusce a auctor nisl, mattis ullamcorper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate porttitor ipsum, quis pulvinar ipsum sollicitudin sit amet. Praesent iaculis sed diam ac vehicula. In vehicula nulla ac rutrum aliquam.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed scelerisque, tortor at egestas porta, ipsum tortor facilisis dolor, ut tempor nisl metus at elit. Vivamus ac nibh ut justo facilisis vehicula. Phasellus eu risus vitae ipsum hendrerit aliquam. Proin aliquam mauris eu ipsum feugiat, in lacinia ex rhoncus. Nulla congue, justo a varius tincidunt, odio justo mollis eros, vel porttitor nisl urna bibendum metus. Proin eget finibus lacus. Fusce in nunc varius mi congue pellentesque vitae ac nunc. Curabitur id erat ut risus facilisis facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus consequat, ligula sit amet rhoncus sagittis, elit metus fermentum elit, quis pellentesque enim nibh sed sapien. Pellentesque eu accumsan felis. Aliquam nunc dui, viverra pellentesque purus malesuada, suscipit iaculis nisi. In eu sollicitudin nisl, nec posuere orci. Nullam vel dui mauris. Duis consectetur ipsum quis sapien fringilla, ut egestas sem bibendum.\r\n\r\nEtiam vestibulum lacinia arcu, nec blandit purus pulvinar a. Fusce eros risus, ullamcorper vehicula velit eget, sollicitudin lacinia turpis. Cras aliquet sem efficitur tempus posuere. Nam sit amet aliquam dolor, et ultricies nisl. Vestibulum ut mauris nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur iaculis dolor massa, non finibus felis egestas non.\r\n\r\nPellentesque at justo gravida risus feugiat ornare sit amet ac felis. Duis tristique at ligula nec condimentum. Sed id augue ut purus vulputate condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce tellus diam, placerat nec malesuada ac, iaculis sed nibh. Nam cursus risus vel fringilla iaculis. Aenean varius ligula ultrices, elementum ligula sed, laoreet tellus. Pellentesque accumsan faucibus velit, sit amet tincidunt diam pellentesque at. Sed et ultricies sapien. Mauris tempor ex orci, nec facilisis felis eleifend eu. Vestibulum vitae dictum nisl. Maecenas gravida nulla ac mauris ullamcorper commodo. Mauris ultricies venenatis sem, vehicula condimentum libero elementum vel. Nam et accumsan ex. Vivamus eget ornare orci. Aenean iaculis risus tortor, in faucibus massa maximus quis.\r\n\r\nPellentesque non sapien ac orci blandit feugiat. Cras blandit convallis quam, sit amet maximus mauris iaculis eu. Vivamus sollicitudin metus rutrum nisi commodo vulputate. Integer ac lobortis lacus. Integer hendrerit sit amet eros a ultricies. Morbi facilisis orci quis risus sollicitudin, eget elementum nisi posuere. Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultrices risus id elit luctus venenatis in egestas velit.\r\n\r\nMorbi id ante et nulla cursus tristique eget at arcu. Integer tempor nisi elit, a interdum urna viverra non. Quisque ullamcorper lorem id pulvinar pharetra. Fusce consequat odio sit amet tincidunt porta. Curabitur bibendum eget augue vitae dapibus. Sed tempor, enim eu sagittis commodo, justo massa venenatis eros, et molestie velit turpis vitae leo. Praesent velit metus, feugiat id ornare ac, interdum vitae tellus. Maecenas eget fermentum leo. Nam rhoncus quis quam sed laoreet. Donec nisi lectus, pharetra nec ullamcorper vel, bibendum sed dolor. Curabitur ultrices rutrum ligula eu iaculis.', 'default.png', '2023-09-30 04:03:05', '2023-09-30 11:50:08'),
(13, 1, 'Pellentesque at justo gravida risus feugiat ornare sit amet ac felis. Duis tristique at ligula nec condimentum. Sed id augue ut purus vulputate condimentum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus, metus eu aliquam ornare, massa velit pulvinar tortor, eget posuere orci tortor id massa. Sed vitae dui tempus, feugiat urna vel, laoreet eros. Aenean ut neque sed ex sagittis aliquet non ut nunc. Fusce congue enim sed tortor elementum aliquam. Sed non ligula consectetur, aliquet eros quis, mollis augue. Mauris fermentum nunc vitae velit vestibulum mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed consectetur nisi porttitor, fermentum nulla et, finibus nisi. Praesent ut sollicitudin nisl, ac lobortis odio. Maecenas varius pretium scelerisque. Suspendisse et justo nec urna tristique commodo. Nunc a semper lacus, pulvinar hendrerit justo. Mauris tempus velit sodales lacus volutpat, vel vulputate velit semper.\r\n\r\nEtiam ullamcorper convallis enim, sed convallis lorem elementum a. Cras gravida nibh in elit volutpat varius. Donec sed eros nec ipsum finibus convallis. Morbi vel mattis dui. Vestibulum ac justo non dui facilisis posuere. Fusce a auctor nisl, mattis ullamcorper turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate porttitor ipsum, quis pulvinar ipsum sollicitudin sit amet. Praesent iaculis sed diam ac vehicula. In vehicula nulla ac rutrum aliquam.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed scelerisque, tortor at egestas porta, ipsum tortor facilisis dolor, ut tempor nisl metus at elit. Vivamus ac nibh ut justo facilisis vehicula. Phasellus eu risus vitae ipsum hendrerit aliquam. Proin aliquam mauris eu ipsum feugiat, in lacinia ex rhoncus. Nulla congue, justo a varius tincidunt, odio justo mollis eros, vel porttitor nisl urna bibendum metus. Proin eget finibus lacus. Fusce in nunc varius mi congue pellentesque vitae ac nunc. Curabitur id erat ut risus facilisis facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus consequat, ligula sit amet rhoncus sagittis, elit metus fermentum elit, quis pellentesque enim nibh sed sapien. Pellentesque eu accumsan felis. Aliquam nunc dui, viverra pellentesque purus malesuada, suscipit iaculis nisi. In eu sollicitudin nisl, nec posuere orci. Nullam vel dui mauris. Duis consectetur ipsum quis sapien fringilla, ut egestas sem bibendum.\r\n\r\nEtiam vestibulum lacinia arcu, nec blandit purus pulvinar a. Fusce eros risus, ullamcorper vehicula velit eget, sollicitudin lacinia turpis. Cras aliquet sem efficitur tempus posuere. Nam sit amet aliquam dolor, et ultricies nisl. Vestibulum ut mauris nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur iaculis dolor massa, non finibus felis egestas non.\r\n\r\nPellentesque at justo gravida risus feugiat ornare sit amet ac felis. Duis tristique at ligula nec condimentum. Sed id augue ut purus vulputate condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce tellus diam, placerat nec malesuada ac, iaculis sed nibh. Nam cursus risus vel fringilla iaculis. Aenean varius ligula ultrices, elementum ligula sed, laoreet tellus. Pellentesque accumsan faucibus velit, sit amet tincidunt diam pellentesque at. Sed et ultricies sapien. Mauris tempor ex orci, nec facilisis felis eleifend eu. Vestibulum vitae dictum nisl. Maecenas gravida nulla ac mauris ullamcorper commodo. Mauris ultricies venenatis sem, vehicula condimentum libero elementum vel. Nam et accumsan ex. Vivamus eget ornare orci. Aenean iaculis risus tortor, in faucibus massa maximus quis.\r\n\r\nPellentesque non sapien ac orci blandit feugiat. Cras blandit convallis quam, sit amet maximus mauris iaculis eu. Vivamus sollicitudin metus rutrum nisi commodo vulputate. Integer ac lobortis lacus. Integer hendrerit sit amet eros a ultricies. Morbi facilisis orci quis risus sollicitudin, eget elementum nisi posuere. Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultrices risus id elit luctus venenatis in egestas velit.\r\n\r\nMorbi id ante et nulla cursus tristique eget at arcu. Integer tempor nisi elit, a interdum urna viverra non. Quisque ullamcorper lorem id pulvinar pharetra. Fusce consequat odio sit amet tincidunt porta. Curabitur bibendum eget augue vitae dapibus. Sed tempor, enim eu sagittis commodo, justo massa venenatis eros, et molestie velit turpis vitae leo. Praesent velit metus, feugiat id ornare ac, interdum vitae tellus. Maecenas eget fermentum leo. Nam rhoncus quis quam sed laoreet. Donec nisi lectus, pharetra nec ullamcorper vel, bibendum sed dolor. Curabitur ultrices rutrum ligula eu iaculis.', 'default.png', '2023-09-30 04:03:09', '2023-09-30 11:50:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_29_153001_create_blogs_table', 1),
(6, '2023_09_29_153402_update_blogs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$dA3xmoMmJfnTZ/FEiqPRJ.lXU3brTKR5XYDskNescuTyMfqFXtWDO', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
