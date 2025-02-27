insert into users(user_id, email, `password`, phone_number, `role`, username, is_active)
values
(1, "a.yogendra65@gmail.com", "yogi123", 9866709807, "user", "yogendra", "Y"),
(2, "prasad@gmail.com", "prasad123", 1234567890, "user", "prasad", "Y"),
(3, "eshwar@gmail.com", "eshwar123", 1234567891, "user", "eshwar", "Y"),
(4, "arun@gmail.com", "arun123", 1234567892, "user", "arun", "Y"),
(5, "ganesh@gmail.com", "ganesh123", 1234567893, "user", "ganesh", "Y");

insert into movies(movie_id, title, movie_image_url, description, duration, genre, release_date, is_active)
values
(1, "Kung Fu Panda", "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS2uZIj7-mLfVp1TYvfTEPBMGL5fCn8Hm40LEKFPPE6BHVIPA7fDyUM9e5zXKvyWdUyqzXOEg", "A story about a panda who becomes a kung fu master.", 90, "Animation/Action", "2008-06-06", "Y"),
(2, "Kung Fu Panda 2", "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSrEnW4Qes8q3NiwQS3grDaqN5ENSQdFTik1C2fdEeSAXTDQAzs", "The panda faces a new villain threatening his homeland.", 140, "Animation/Action", "2011-05-26", "Y"),
(3, "Kung Fu Panda 3", "https://lumiere-a.akamaihd.net/v1/images/image_0e6ad10d.jpeg?region=0%2C0%2C1400%2C2100", "Po reunites with his long-lost father.", 120, "Animation/Action", "2015-01-29", "Y"),
(4, "Kung Fu Panda 4", "https://assets.gadgeusersts360cdn.com/pricee/assets/product/202311/Kung-Fu-Panda-4-Poster_1700827659.jpg", "Po embarks on a new adventure.", 90, "Animation/Action", "2024-03-08", "Y"),
(5, "Die Hard 4", "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTJOxjD49uzIVF4gBVI_eopbb0AS53-Ta-wExU2C8s8hlDN5UQs-fXihh4AYxJnwh2ShJNj", "John McClane faces cyber terrorists.", 90, "Action/Thriller", "2007-06-27", "Y"),
(6, "Mr. Bean", "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQUuM488ffxIbhzFEUA-rimo81Gmbnfo1R1n_XH8ga09-Fy5W2rG3NcKESX0UorZrXEBVzq_Q", "Comical adventures of Mr. Bean.", 90, "Comedy", "2008-01-01", "Y"),
(7, "Interstellar", "https://m.media-amazon.com/images/I/91vIHsL-zjL.jpg", "A journey through space and time.", 90, "Sci-Fi/Drama", "2011-11-07", "Y"),
(8, "Alien", "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcROqmrMVzOXm78bp2aJec_ZFj5qXEnRLZAiCFXTxygy7w_f1d-k2GJ0kwuqhRVxIUkut4vSJQ", "A crew encounters an alien lifeform.", 90, "Horror/Sci-Fi", "1967-05-25", "Y"),
(9, "Aliens", "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRNF36FavofYcx1JFn6em8xKWcHYqu5dBg-TeB_I_FWIwrqsw2WxE3BDy13Y6q9XavceWwYGA", "Ellen Ripley returns to face more aliens.", 120, "Horror/Sci-Fi", "1978-07-18", "Y"),
(10, "Cars", "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTMQp_9_bE2JOeH4JtApxU0rDthouxCNR_TvZ3c-mb8FROFwS3PWXTLeLUEpnBA7TpT7k3x", "A race car learns the value of friendship.", 120, "Animation/Family", "2012-06-24", "Y"),
(11, "Open Season", "https://www.sonypictures.com/sites/default/files/styles/max_560x840/public/chameleon/title-movie/244665_open_season_2006_1400x2100.jpg?itok=YLszgqmY", "A domesticated grizzly bear meets a wild deer.", 90, "Animation/Comedy", "2011-09-29", "Y"),
(12, "Wall E", "https://lumiere-a.akamaihd.net/v1/images/p_walle_19753_69f7ff00.jpeg?region=0%2C0%2C540%2C810", "A robot left on Earth finds love.", 140, "Animation/Sci-Fi", "2006-06-23", "Y");

insert into theatres(theatre_id, name, location, capacity, is_active, created_at, updated_at, created_by, updated_by)
values
(1, "INOX Forum Mall", "Beach Road, Visakhapatnam", 200, "Y", NOW(), NOW(), "admin", "admin"),
(2, "PVR Gold VMR Mall", "Madhurawada, Visakhapatnam", 150, "Y", NOW(), NOW(), "admin", "admin"),
(3, "Sri Sai Theatre", "Dwaraka Nagar, Visakhapatnam", 100, "Y", NOW(), NOW(), "admin", "admin");

INSERT INTO showtimes(showtime_id, movie_id, theatre_id, start_time, end_time, start_date, end_date, available_seats, is_active, created_at, updated_at, created_by, updated_by, screen_number)
VALUES
(1, 1, 1, '10:00:00', '11:30:00', '2023-10-01', '2023-10-07', 200, "Y", NOW(), NOW(), "admin", "admin", "Screen 1"), -- Kung Fu Panda at INOX, Screen 1
(2, 4, 1, '14:00:00', '15:30:00', '2023-10-01', '2023-10-07', 200, "Y", NOW(), NOW(), "admin", "admin", "Screen 2"), -- Kung Fu Panda 4 at INOX, Screen 2
(3, 7, 2, '16:00:00', '18:20:00', '2023-10-01', '2023-10-07', 150, "Y", NOW(), NOW(), "admin", "admin", "Screen 1"), -- Interstellar at PVR, Screen 1
(4, 12, 3, '19:00:00', '21:20:00', '2023-10-01', '2023-10-07', 100, "Y", NOW(), NOW(), "admin", "admin", "Screen 1"), -- Wall-E at Sri Sai, Screen 1
(5, 5, 1, '12:00:00', '13:30:00', '2023-10-01', '2023-10-07', 200, "Y", NOW(), NOW(), "admin", "admin", "Screen 3"), -- Die Hard 4 at INOX, Screen 3
(6, 6, 1, '16:00:00', '17:30:00', '2023-10-01', '2023-10-07', 200, "Y", NOW(), NOW(), "admin", "admin", "Screen 1"), -- Mr. Bean at INOX, Screen 1
(7, 8, 2, '11:00:00', '12:30:00', '2023-10-01', '2023-10-07', 150, "Y", NOW(), NOW(), "admin", "admin", "Screen 2"), -- Alien at PVR, Screen 2
(8, 9, 2, '18:00:00', '20:00:00', '2023-10-01', '2023-10-07', 150, "Y", NOW(), NOW(), "admin", "admin", "Screen 3"), -- Aliens at PVR, Screen 3
(9, 10, 3, '14:00:00', '16:00:00', '2023-10-01', '2023-10-07', 100, "Y", NOW(), NOW(), "admin", "admin", "Screen 2"), -- Cars at Sri Sai, Screen 2
(10, 11, 3, '21:00:00', '22:30:00', '2023-10-01', '2023-10-07', 100, "Y", NOW(), NOW(), "admin", "admin", "Screen 1"); -- Open Season at Sri Sai, Screen 1

insert into seats(seat_id, showtime_id, seat_number, is_booked, created_at, updated_at, created_by, updated_by)
values
(1, 1, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(2, 1, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(3, 1, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(4, 1, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(5, 1, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(6, 1, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(7, 1, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(8, 1, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(9, 1, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(10, 1, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(11, 1, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(12, 1, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(13, 1, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(14, 1, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(15, 1, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(16, 1, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(17, 1, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(18, 1, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(19, 1, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(20, 1, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(21, 1, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(22, 1, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(23, 1, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(24, 1, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(25, 1, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(26, 1, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(27, 1, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(28, 1, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(29, 1, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(30, 1, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(31, 1, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(32, 1, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(33, 1, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(34, 1, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(35, 1, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(36, 1, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(37, 1, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(38, 1, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(39, 1, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(40, 1, 'H5', 'N', NOW(), NOW(), 'admin', 'admin'),
(41, 2, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(42, 2, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(43, 2, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(44, 2, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(45, 2, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(46, 2, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(47, 2, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(48, 2, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(49, 2, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(50, 2, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(51, 2, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(52, 2, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(53, 2, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(54, 2, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(55, 2, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(56, 2, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(57, 2, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(58, 2, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(59, 2, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(60, 2, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(61, 2, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(62, 2, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(63, 2, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(64, 2, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(65, 2, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(66, 2, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(67, 2, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(68, 2, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(69, 2, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(70, 2, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(71, 2, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(72, 2, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(73, 2, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(74, 2, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(75, 2, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(76, 2, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(77, 2, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(78, 2, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(79, 2, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(80, 2, 'H5', 'N', NOW(), NOW(), 'admin', 'admin'),
(81, 3, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(82, 3, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(83, 3, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(84, 3, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(85, 3, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(86, 3, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(87, 3, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(88, 3, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(89, 3, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(90, 3, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(91, 3, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(92, 3, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(93, 3, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(94, 3, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(95, 3, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(96, 3, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(97, 3, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(98, 3, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(99, 3, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(100, 3, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(101, 3, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(102, 3, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(103, 3, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(104, 3, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(105, 3, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(106, 3, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(107, 3, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(108, 3, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(109, 3, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(110, 3, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(111, 3, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(112, 3, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(113, 3, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(114, 3, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(115, 3, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(116, 3, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(117, 3, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(118, 3, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(119, 3, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(120, 3, 'H5', 'N', NOW(), NOW(), 'admin', 'admin'),
(121, 4, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(122, 4, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(123, 4, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(124, 4, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(125, 4, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(126, 4, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(127, 4, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(128, 4, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(129, 4, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(130, 4, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(131, 4, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(132, 4, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(133, 4, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(134, 4, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(135, 4, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(136, 4, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(137, 4, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(138, 4, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(139, 4, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(140, 4, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(141, 4, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(142, 4, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(143, 4, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(144, 4, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(145, 4, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(146, 4, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(147, 4, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(148, 4, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(149, 4, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(150, 4, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(151, 4, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(152, 4, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(153, 4, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(154, 4, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(155, 4, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(156, 4, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(157, 4, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(158, 4, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(159, 4, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(160, 4, 'H5', 'N', NOW(), NOW(), 'admin', 'admin'),
(161, 5, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(162, 5, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(163, 5, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(164, 5, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(165, 5, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(166, 5, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(167, 5, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(168, 5, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(169, 5, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(170, 5, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(171, 5, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(172, 5, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(173, 5, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(174, 5, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(175, 5, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(176, 5, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(177, 5, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(178, 5, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(179, 5, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(180, 5, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(181, 5, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(182, 5, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(183, 5, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(184, 5, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(185, 5, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(186, 5, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(187, 5, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(188, 5, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(189, 5, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(190, 5, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(191, 5, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(192, 5, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(193, 5, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(194, 5, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(195, 5, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(196, 5, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(197, 5, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(198, 5, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(199, 5, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(200, 5, 'H5', 'N', NOW(), NOW(), 'admin', 'admin'),
(201, 6, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(202, 6, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(203, 6, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(204, 6, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(205, 6, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(206, 6, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(207, 6, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(208, 6, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(209, 6, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(210, 6, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(211, 6, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(212, 6, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(213, 6, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(214, 6, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(215, 6, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(216, 6, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(217, 6, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(218, 6, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(219, 6, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(220, 6, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(221, 6, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(222, 6, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(223, 6, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(224, 6, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(225, 6, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(226, 6, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(227, 6, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(228, 6, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(229, 6, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(230, 6, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(231, 6, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(232, 6, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(233, 6, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(234, 6, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(235, 6, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(236, 6, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(237, 6, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(238, 6, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(239, 6, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(240, 6, 'H5', 'N', NOW(), NOW(), 'admin', 'admin'),
(241, 7, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(242, 7, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(243, 7, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(244, 7, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(245, 7, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(246, 7, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(247, 7, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(248, 7, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(249, 7, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(250, 7, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(251, 7, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(252, 7, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(253, 7, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(254, 7, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(255, 7, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(256, 7, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(257, 7, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(258, 7, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(259, 7, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(260, 7, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(261, 7, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(262, 7, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(263, 7, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(264, 7, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(265, 7, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(266, 7, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(267, 7, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(268, 7, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(269, 7, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(270, 7, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(271, 7, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(272, 7, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(273, 7, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(274, 7, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(275, 7, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(276, 7, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(277, 7, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(278, 7, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(279, 7, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(280, 7, 'H5', 'N', NOW(), NOW(), 'admin', 'admin'),
(281, 8, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(282, 8, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(283, 8, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(284, 8, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(285, 8, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(286, 8, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(287, 8, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(288, 8, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(289, 8, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(290, 8, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(291, 8, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(292, 8, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(293, 8, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(294, 8, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(295, 8, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(296, 8, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(297, 8, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(298, 8, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(299, 8, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(300, 8, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(301, 8, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(302, 8, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(303, 8, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(304, 8, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(305, 8, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(306, 8, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(307, 8, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(308, 8, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(309, 8, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(310, 8, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(311, 8, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(312, 8, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(313, 8, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(314, 8, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(315, 8, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(316, 8, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(317, 8, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(318, 8, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(319, 8, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(320, 8, 'H5', 'N', NOW(), NOW(), 'admin', 'admin'),
(321, 9, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(322, 9, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(323, 9, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(324, 9, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(325, 9, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(326, 9, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(327, 9, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(328, 9, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(329, 9, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(330, 9, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(331, 9, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(332, 9, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(333, 9, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(334, 9, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(335, 9, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(336, 9, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(337, 9, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(338, 9, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(339, 9, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(340, 9, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(341, 9, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(342, 9, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(343, 9, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(344, 9, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(345, 9, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(346, 9, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(347, 9, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(348, 9, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(349, 9, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(350, 9, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(351, 9, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(352, 9, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(353, 9, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(354, 9, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(355, 9, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(356, 9, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(357, 9, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(358, 9, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(359, 9, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(360, 9, 'H5', 'N', NOW(), NOW(), 'admin', 'admin'),
(361, 10, 'A1', 'N', NOW(), NOW(), 'admin', 'admin'),
(362, 10, 'A2', 'N', NOW(), NOW(), 'admin', 'admin'),
(363, 10, 'A3', 'N', NOW(), NOW(), 'admin', 'admin'),
(364, 10, 'A4', 'N', NOW(), NOW(), 'admin', 'admin'),
(365, 10, 'A5', 'N', NOW(), NOW(), 'admin', 'admin'),
(366, 10, 'B1', 'N', NOW(), NOW(), 'admin', 'admin'),
(367, 10, 'B2', 'N', NOW(), NOW(), 'admin', 'admin'),
(368, 10, 'B3', 'N', NOW(), NOW(), 'admin', 'admin'),
(369, 10, 'B4', 'N', NOW(), NOW(), 'admin', 'admin'),
(370, 10, 'B5', 'N', NOW(), NOW(), 'admin', 'admin'),
(371, 10, 'C1', 'N', NOW(), NOW(), 'admin', 'admin'),
(372, 10, 'C2', 'N', NOW(), NOW(), 'admin', 'admin'),
(373, 10, 'C3', 'N', NOW(), NOW(), 'admin', 'admin'),
(374, 10, 'C4', 'N', NOW(), NOW(), 'admin', 'admin'),
(375, 10, 'C5', 'N', NOW(), NOW(), 'admin', 'admin'),
(376, 10, 'D1', 'N', NOW(), NOW(), 'admin', 'admin'),
(377, 10, 'D2', 'N', NOW(), NOW(), 'admin', 'admin'),
(378, 10, 'D3', 'N', NOW(), NOW(), 'admin', 'admin'),
(379, 10, 'D4', 'N', NOW(), NOW(), 'admin', 'admin'),
(380, 10, 'D5', 'N', NOW(), NOW(), 'admin', 'admin'),
(381, 10, 'E1', 'N', NOW(), NOW(), 'admin', 'admin'),
(382, 10, 'E2', 'N', NOW(), NOW(), 'admin', 'admin'),
(383, 10, 'E3', 'N', NOW(), NOW(), 'admin', 'admin'),
(384, 10, 'E4', 'N', NOW(), NOW(), 'admin', 'admin'),
(385, 10, 'E5', 'N', NOW(), NOW(), 'admin', 'admin'),
(386, 10, 'F1', 'N', NOW(), NOW(), 'admin', 'admin'),
(387, 10, 'F2', 'N', NOW(), NOW(), 'admin', 'admin'),
(388, 10, 'F3', 'N', NOW(), NOW(), 'admin', 'admin'),
(389, 10, 'F4', 'N', NOW(), NOW(), 'admin', 'admin'),
(390, 10, 'F5', 'N', NOW(), NOW(), 'admin', 'admin'),
(391, 10, 'G1', 'N', NOW(), NOW(), 'admin', 'admin'),
(392, 10, 'G2', 'N', NOW(), NOW(), 'admin', 'admin'),
(393, 10, 'G3', 'N', NOW(), NOW(), 'admin', 'admin'),
(394, 10, 'G4', 'N', NOW(), NOW(), 'admin', 'admin'),
(395, 10, 'G5', 'N', NOW(), NOW(), 'admin', 'admin'),
(396, 10, 'H1', 'N', NOW(), NOW(), 'admin', 'admin'),
(397, 10, 'H2', 'N', NOW(), NOW(), 'admin', 'admin'),
(398, 10, 'H3', 'N', NOW(), NOW(), 'admin', 'admin'),
(399, 10, 'H4', 'N', NOW(), NOW(), 'admin', 'admin'),
(400, 10, 'H5', 'N', NOW(), NOW(), 'admin', 'admin');