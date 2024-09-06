create table phone_type(
  phone_type_id bigserial primary key,
  phone_type_name varchar(100) not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  phone_type(phone_type_id, phone_type_name)
values
  (1, 'Office'),
  (2, 'Home'),
  (3, 'Work'),
  (4, 'Mobile')
;

create table phone(
  phone_id bigserial primary key,
  phone_type_id int not null references phone_type(phone_type_id),
  -- NOTE: Guarantee Phone Number Compliance by Regular Expression (Copy-Paste).
  phone_number varchar(100) check (phone_number ~* '^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$'),
  is_whatsapp bool not null default false,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(674) 841-7593', False, False, '2024-08-15 20:59:58', '2024-09-06 00:07:07');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '141-178-8801', True, False, '2024-08-08 12:02:57', '2024-08-12 18:42:47');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '+1 263-937-1705', True, True, '2024-08-28 01:38:56', '2024-08-29 10:45:00');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '+37 551-898-1814', False, True, '2024-05-02 16:53:30', '2024-08-23 00:24:42');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '(977) 824-9007', True, True, '2024-05-10 21:30:35', '2024-06-22 14:57:40');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '115-393-7482', True, True, '2024-08-09 05:57:18', '2024-08-20 04:06:21');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '(564) 969-5141', False, False, '2024-07-04 09:20:40', '2024-08-14 22:21:42');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(861) 648-2913', False, False, '2024-04-09 22:57:12', '2024-07-22 02:34:12');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '899-328-9433', False, False, '2024-05-29 03:01:10', '2024-08-07 07:37:23');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(124) 938-6645', False, True, '2024-07-22 11:55:11', '2024-08-21 16:26:09');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '643-342-8909', True, False, '2024-03-25 16:41:40', '2024-06-02 13:54:07');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '+1 591-975-1963', False, False, '2024-04-29 07:13:35', '2024-07-21 08:12:32');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '184-891-4697', False, True, '2024-06-16 17:56:01', '2024-08-07 12:25:13');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '423-578-1645', True, False, '2024-04-10 13:38:06', '2024-07-30 05:34:19');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '+46 722-830-8121', False, False, '2024-04-04 11:53:26', '2024-06-22 04:16:58');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+76 716-414-4039', False, True, '2024-08-11 05:57:08', '2024-08-28 19:08:36');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '827-746-3738', False, False, '2024-03-27 17:42:00', '2024-05-16 12:10:18');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '(469) 929-3592', True, False, '2024-08-05 08:36:18', '2024-08-07 08:33:16');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(202) 832-1828', False, True, '2024-03-07 16:48:07', '2024-07-04 07:21:19');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '+46 558-672-9350', True, True, '2024-01-31 05:32:19', '2024-02-14 21:04:48');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '716-844-2919', False, True, '2024-08-20 04:04:07', '2024-09-05 16:48:52');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '+19 289-958-8681', True, False, '2024-02-09 13:30:21', '2024-07-17 23:05:46');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '807-678-1770', False, True, '2024-08-14 12:25:15', '2024-08-23 23:57:03');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+63 811-964-9066', False, True, '2024-07-14 00:09:08', '2024-08-25 11:27:14');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '539-400-2049', False, True, '2024-01-11 10:53:50', '2024-08-20 18:35:28');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '(586) 292-5532', False, True, '2024-06-10 17:21:26', '2024-06-14 12:09:10');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '(658) 955-1017', True, False, '2024-06-16 12:53:04', '2024-07-25 11:40:52');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '(919) 462-4758', True, True, '2024-01-16 07:21:38', '2024-06-06 05:23:50');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '+56 318-175-8591', False, True, '2024-08-06 23:56:12', '2024-09-02 09:12:38');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '(179) 258-8258', False, False, '2024-03-09 14:59:07', '2024-08-19 09:53:36');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '+17 628-629-7380', True, True, '2024-05-10 11:50:49', '2024-05-22 23:23:38');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '+66 820-200-6706', False, False, '2024-07-07 06:23:00', '2024-09-02 21:57:45');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(746) 172-4692', True, False, '2024-08-19 02:53:57', '2024-08-29 02:08:50');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '528-412-6939', True, False, '2024-07-27 12:29:21', '2024-08-08 01:55:51');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '(147) 382-4773', False, False, '2024-04-20 16:16:00', '2024-06-16 17:10:30');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '(147) 918-1942', True, False, '2024-01-07 16:07:46', '2024-03-09 18:21:17');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '958-303-5351', True, False, '2024-08-11 02:15:57', '2024-08-24 09:14:41');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+92 399-817-6925', True, False, '2024-06-19 09:26:51', '2024-07-25 13:17:05');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '(210) 609-5134', False, True, '2024-04-10 14:36:09', '2024-08-18 14:56:36');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(383) 712-8876', True, False, '2024-04-02 04:32:18', '2024-05-17 00:10:22');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '+52 115-847-5316', True, False, '2024-02-18 11:35:08', '2024-04-13 16:36:56');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '390-629-8049', True, False, '2024-07-05 06:27:11', '2024-08-20 03:13:31');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '294-790-3106', False, False, '2024-01-12 05:19:18', '2024-03-20 10:03:18');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '(216) 184-2439', True, False, '2024-08-16 20:09:30', '2024-08-26 05:02:58');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '510-390-1063', False, False, '2024-07-23 13:28:46', '2024-08-27 06:21:00');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '(941) 579-1822', True, True, '2024-02-28 22:47:03', '2024-07-15 20:18:30');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '(498) 730-2340', False, True, '2024-08-27 14:38:25', '2024-08-28 03:04:43');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '+24 438-270-2024', True, True, '2024-04-16 04:10:17', '2024-07-17 21:04:37');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '+44 763-762-1204', True, True, '2024-03-25 16:17:21', '2024-03-31 09:22:11');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '+44 328-712-6649', False, False, '2024-06-30 02:39:01', '2024-07-14 07:10:46');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '403-599-6552', False, False, '2024-06-27 06:23:48', '2024-09-03 08:57:13');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '(169) 265-9564', True, True, '2024-08-31 06:06:59', '2024-09-06 00:03:13');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(316) 611-3696', True, False, '2024-03-10 00:00:14', '2024-08-07 20:19:54');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '+19 247-212-7218', False, True, '2024-07-24 02:24:33', '2024-09-01 13:23:43');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '+23 842-362-8712', True, False, '2024-05-29 00:04:43', '2024-06-03 15:24:10');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '(691) 220-5123', False, True, '2024-03-22 05:53:04', '2024-05-23 20:38:41');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '(826) 874-9861', False, True, '2024-04-20 01:41:31', '2024-05-27 04:48:34');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '409-404-3718', False, True, '2024-08-28 13:36:46', '2024-09-02 18:40:24');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '996-441-3568', True, True, '2024-04-17 01:18:42', '2024-07-08 04:22:50');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '+3 346-739-7713', False, False, '2024-03-01 15:01:19', '2024-03-22 01:23:14');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '561-846-9973', False, False, '2024-06-19 01:49:57', '2024-09-01 13:15:17');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '+58 270-451-7826', True, False, '2024-02-21 13:48:14', '2024-08-14 11:38:26');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '+32 216-510-5407', False, False, '2024-08-06 05:04:15', '2024-08-19 07:28:17');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '(169) 544-5559', False, False, '2024-02-01 16:08:11', '2024-07-08 10:13:59');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '(331) 866-3256', True, True, '2024-07-03 11:29:14', '2024-08-26 00:14:26');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '+14 598-211-5826', False, False, '2024-06-26 16:22:27', '2024-08-16 07:31:07');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '310-115-9400', True, True, '2024-03-04 16:29:39', '2024-05-14 09:06:20');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+95 880-147-8498', False, True, '2024-08-15 13:46:45', '2024-08-16 15:00:56');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '959-846-7009', False, False, '2024-07-25 07:41:23', '2024-09-02 20:33:36');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+23 871-550-3636', True, True, '2024-08-28 06:07:22', '2024-09-04 16:17:41');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '431-874-1840', False, True, '2024-07-30 18:41:33', '2024-08-12 20:33:46');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '(144) 558-2952', False, False, '2024-05-29 12:12:22', '2024-08-09 03:24:51');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '(614) 529-7844', False, False, '2024-06-29 08:44:28', '2024-09-06 00:22:29');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '394-339-3847', True, False, '2024-06-01 08:08:40', '2024-06-12 00:09:53');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '+28 715-245-9801', False, True, '2024-05-24 00:44:31', '2024-06-01 07:25:48');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '596-258-5649', False, False, '2024-03-20 20:35:04', '2024-08-21 09:19:43');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(514) 970-7090', False, True, '2024-03-08 16:14:32', '2024-08-31 20:17:34');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '474-105-2927', False, True, '2024-04-07 05:32:22', '2024-06-15 04:33:31');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '374-160-1246', True, False, '2024-05-16 11:07:55', '2024-08-06 18:49:02');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+34 470-392-3675', False, True, '2024-03-26 19:58:18', '2024-07-08 01:10:48');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+98 581-533-2081', True, True, '2024-03-20 12:50:22', '2024-04-03 18:30:20');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+58 281-935-8554', False, True, '2024-03-09 16:18:13', '2024-05-01 11:28:45');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '+26 780-806-6225', True, True, '2024-03-15 22:15:30', '2024-07-18 22:54:45');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(526) 616-1879', False, True, '2024-07-21 08:18:08', '2024-08-08 21:22:46');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '(590) 250-3872', False, True, '2024-07-01 06:26:31', '2024-09-02 08:40:11');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+62 878-564-4787', True, True, '2024-02-18 04:06:54', '2024-06-17 00:42:11');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '924-762-4964', False, True, '2024-08-26 07:15:53', '2024-09-04 02:26:45');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '139-680-6367', True, True, '2024-01-18 02:48:20', '2024-04-10 09:32:44');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '+87 884-611-7777', False, True, '2024-02-25 18:16:42', '2024-08-24 22:17:33');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '(462) 170-2765', True, False, '2024-02-17 10:38:23', '2024-05-29 13:08:02');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '307-121-7526', True, True, '2024-01-01 23:30:05', '2024-08-03 07:18:04');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '+38 634-506-7614', False, True, '2024-04-08 12:51:40', '2024-07-04 10:22:34');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '426-810-2040', False, True, '2024-05-19 08:24:02', '2024-08-01 09:31:41');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '(608) 761-7073', True, True, '2024-06-10 07:10:30', '2024-08-12 04:50:53');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '923-721-7373', True, True, '2024-05-04 19:37:37', '2024-06-24 03:00:19');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (4, '(137) 200-8520', False, True, '2024-08-12 22:37:24', '2024-08-24 20:28:47');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '347-540-4952', False, True, '2024-07-20 12:36:15', '2024-07-29 07:30:12');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (1, '(915) 293-2025', False, False, '2024-03-08 00:54:56', '2024-04-14 22:44:18');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (3, '+32 182-796-9865', True, False, '2024-08-25 08:26:16', '2024-08-26 15:33:38');
INSERT INTO phone (phone_type_id, phone_number, is_whatsapp, is_active, created_ts, updated_ts) VALUES (2, '+63 304-626-2328', True, True, '2024-05-27 03:01:08', '2024-06-27 00:52:58');

--
create table address(
  address_id bigserial primary key,
  address_name varchar(255) not null,
  -- NOTE: https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes.
  address_country_code char(2) not null
    check (
      address_country_code = upper(address_country_code)
      and length(address_country_code) = 2
    ),
  address_state varchar(255) not null,
  address_district varchar(255) null,
  address_city varchar(255) null,
  address_postal_code varchar(20) not null,
  -- NOTE: The street number and name, and optionally the apartment or unit number.
  address_line_1 text not null,
  -- NOTE: Provides additional information (floor number...) to help the mail
  --  find its intended recipient once it's delivered to the building.
  address_line_2 text not null,
  address_phone_id bigint null references phone(phone_id),

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Johnson Ville', 'FR', 'New York', 'land', 'Michelleborough', '84667', '322 Tina Throughway', 'Apt. 786', 92, False, '2024-02-29 00:41:50', '2024-05-31 22:37:43');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Gary Burg', 'RU', 'Maryland', 'port', 'New Ronald', '26559', '46262 Campbell Shoal', 'Apt. 513', NULL, False, '2024-08-17 01:40:03', '2024-09-03 22:05:06');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Stacey Glens', 'RU', 'Texas', 'haven', 'South Jaclyn', '26738', '8262 Brown Vista Apt. 675', 'Suite 157', 20, True, '2024-02-17 11:53:46', '2024-08-23 03:38:09');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Ramos Walks', 'US', 'Rhode Island', 'ville', 'South Carlaland', '54779', '7446 Davis Springs', 'Apt. 677', 9, True, '2024-02-20 23:16:10', '2024-03-15 14:33:00');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Lewis Camp', 'BR', 'Massachusetts', 'view', 'North Destiny', '40480', '451 Janet Heights Suite 401', 'Apt. 827', 24, False, '2024-03-22 07:59:03', '2024-07-12 04:51:57');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Green Turnpike', 'IT', 'Mississippi', 'borough', 'Lopezfort', '21315', '5771 Brian Track', 'Suite 502', NULL, True, '2024-04-15 03:19:02', '2024-06-13 13:15:13');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Gary Turnpike', 'DE', 'Wyoming', 'land', 'Harveyborough', '34525', '70209 Thomas Square', 'Apt. 329', NULL, False, '2024-05-26 19:41:09', '2024-07-22 19:56:09');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Edwards Glens', 'AU', 'Missouri', 'ville', 'Destinyborough', '39061', '3085 Nicholas Parkway Apt. 821', 'Suite 837', 88, True, '2024-07-22 14:52:44', '2024-08-01 00:41:03');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Randy Roads', 'AU', 'Idaho', 'borough', 'Sullivanstad', '52265', '24074 Greene Fords', 'Apt. 697', NULL, True, '2024-08-13 19:53:26', '2024-08-29 23:51:20');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Andrade Bypass', 'IN', 'Vermont', 'chester', 'Meadowsmouth', '53322', '5950 Hendricks Curve Suite 495', 'Suite 051', NULL, False, '2024-03-28 04:43:15', '2024-03-29 10:32:24');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Anderson Knolls', 'BR', 'Maryland', 'stad', 'East Alexanderberg', '29869', '4766 Valentine Causeway Suite 024', 'Suite 854', NULL, False, '2024-05-07 23:39:58', '2024-07-26 23:52:38');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Hubbard Manors', 'IN', 'New York', 'bury', 'New Maxwellburgh', '42644', '284 Kathleen Shoals', 'Suite 380', 88, True, '2024-07-26 06:54:44', '2024-09-05 10:28:56');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Sherry Locks', 'RU', 'Vermont', 'land', 'South Patrick', '58757', '025 Romero Knolls Apt. 150', 'Suite 628', 37, True, '2024-03-29 13:51:32', '2024-05-30 12:33:24');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Marcus View', 'CA', 'Kentucky', 'mouth', 'West Derek', '30436', '8651 Russell Trail Apt. 681', 'Suite 289', 21, False, '2024-04-26 05:59:40', '2024-07-04 16:08:01');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Lisa Port', 'AU', 'Oklahoma', 'ville', 'Wolfetown', '37676', '77322 Saunders Crossroad Suite 653', 'Suite 480', 12, False, '2024-02-10 22:23:47', '2024-09-02 10:27:07');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Zachary Views', 'DE', 'Virginia', 'view', 'New Georgeland', '73397', '25087 Charles Mission', 'Apt. 434', 52, True, '2024-05-14 11:12:03', '2024-06-09 10:57:01');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Clark Expressway', 'IN', 'Texas', 'town', 'Rebeccaburgh', '66855', '7483 Taylor Forks', 'Suite 214', 47, True, '2024-05-12 09:20:28', '2024-07-19 14:39:38');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Acosta Gardens', 'RU', 'Missouri', 'fort', 'Floresmouth', '53952', '587 Harding Manors', 'Suite 707', 97, False, '2024-01-26 18:13:24', '2024-08-09 14:23:06');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Braun Prairie', 'AU', 'Alaska', 'side', 'Port Richardmouth', '84899', '283 Karen Corner', 'Apt. 547', NULL, False, '2024-04-08 16:04:21', '2024-08-20 06:11:13');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Bowen Neck', 'JP', 'Ohio', 'port', 'Scottchester', '78077', '1177 Gross Oval', 'Suite 578', NULL, True, '2024-06-25 15:17:54', '2024-07-27 13:16:22');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Lam Alley', 'AU', 'Virginia', 'bury', 'Lake Tracey', '91787', '512 Spears Radial', 'Apt. 600', 10, True, '2024-07-31 06:08:24', '2024-08-27 20:49:41');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Ronnie Viaduct', 'DE', 'Rhode Island', 'haven', 'Ivanfurt', '02679', '65737 Winters Squares', 'Apt. 056', NULL, True, '2024-06-21 20:26:48', '2024-07-14 03:59:07');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Mueller Viaduct', 'CA', 'Rhode Island', 'burgh', 'Danielleton', '93284', '8352 Eric Trail Suite 500', 'Apt. 770', NULL, True, '2024-03-11 08:53:17', '2024-07-28 20:39:55');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Eric Walks', 'IT', 'California', 'berg', 'Lopezmouth', '68674', '2148 Todd Valley Suite 769', 'Apt. 381', NULL, True, '2024-04-07 05:14:12', '2024-08-09 17:50:10');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Gould Pines', 'FR', 'Arkansas', 'fort', 'Gomezshire', '04337', '32942 Alexis Centers Apt. 786', 'Apt. 621', 50, False, '2024-09-02 15:55:40', '2024-09-02 23:19:46');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Parsons Prairie', 'IT', 'Wyoming', 'land', 'Port Johnview', '21759', '72634 Kelly Island Apt. 215', 'Apt. 670', 28, False, '2024-07-13 13:05:14', '2024-09-03 20:16:31');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Amy Meadow', 'IN', 'Maryland', 'shire', 'Pearsonhaven', '09567', '05374 Bryan Road Apt. 922', 'Suite 263', 92, False, '2024-04-09 11:57:34', '2024-04-17 08:05:03');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Obrien Burg', 'IN', 'Washington', 'bury', 'New Chad', '54760', '918 Fitzpatrick Manors', 'Suite 402', 23, False, '2024-01-20 12:43:43', '2024-04-04 09:53:39');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Taylor Harbors', 'FR', 'Kansas', 'shire', 'West Nicholas', '67090', '524 Krystal Mission', 'Apt. 528', 55, True, '2024-04-09 20:45:15', '2024-07-29 08:23:06');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Bryan River', 'IT', 'California', 'ville', 'Timothyport', '75354', '64733 Lynn Prairie Suite 698', 'Suite 629', NULL, True, '2024-01-11 02:59:36', '2024-09-03 02:15:42');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Stephen Street', 'FR', 'Colorado', 'chester', 'Richardville', '05462', '022 Brown Hill', 'Suite 372', NULL, False, '2024-02-23 11:18:30', '2024-07-31 23:49:24');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Wesley Mountains', 'IN', 'Colorado', 'ville', 'Jamesville', '57304', '696 Russell Viaduct Suite 543', 'Apt. 348', NULL, False, '2024-09-05 09:14:48', '2024-09-05 22:20:16');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Jennifer Point', 'AU', 'North Carolina', 'side', 'Ashleyfort', '73480', '21093 Carol Mountain', 'Suite 739', 62, False, '2024-03-15 01:03:33', '2024-06-29 03:50:30');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Grant Groves', 'FR', 'Arkansas', 'bury', 'Margarettown', '57113', '709 Gross Loop', 'Apt. 004', NULL, False, '2024-01-13 06:33:31', '2024-08-11 22:44:42');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Vincent Gateway', 'US', 'Illinois', 'mouth', 'Vasquezberg', '48116', '07830 Michelle Gardens Suite 260', 'Suite 498', NULL, False, '2024-01-23 03:41:27', '2024-08-30 20:14:37');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Maria River', 'BR', 'Texas', 'mouth', 'Port Richardton', '26226', '05009 Wilson Roads Suite 663', 'Apt. 630', NULL, True, '2024-07-08 15:26:20', '2024-07-15 02:52:36');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Daniel Land', 'RU', 'California', 'chester', 'Port Nicole', '89618', '415 Miller Trafficway', 'Apt. 292', 51, False, '2024-06-06 23:50:41', '2024-07-28 20:17:30');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Charles Crest', 'IN', 'Louisiana', 'burgh', 'Jeremyside', '30583', '27636 John Coves Suite 814', 'Apt. 440', NULL, False, '2024-03-31 05:27:43', '2024-08-10 20:59:42');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Timothy Gateway', 'IN', 'Oregon', 'port', 'Hendersonchester', '19515', '343 Smith Village', 'Apt. 554', 59, False, '2024-07-23 15:46:16', '2024-08-17 16:27:41');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Morrow Fort', 'RU', 'Utah', 'bury', 'Taylorfurt', '15142', '558 White Harbors', 'Suite 115', NULL, False, '2024-06-01 01:56:28', '2024-08-28 15:58:41');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Reed Station', 'FR', 'South Carolina', 'land', 'North Jeremy', '83389', '060 Amber Inlet Suite 948', 'Apt. 103', 92, True, '2024-05-10 10:05:58', '2024-07-30 02:04:14');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('James Square', 'FR', 'Wisconsin', 'chester', 'Chadburgh', '18183', '1909 Jones Square', 'Apt. 234', NULL, False, '2024-01-18 22:13:26', '2024-07-23 19:44:16');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Ruiz Port', 'JP', 'New Jersey', 'fort', 'Nelsonhaven', '66064', '7501 Tiffany Manor Apt. 339', 'Apt. 284', NULL, False, '2024-04-02 07:49:21', '2024-05-31 18:19:12');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Buckley Field', 'BR', 'Indiana', 'port', 'Port Yvette', '04538', '829 Goodman Land Suite 943', 'Suite 570', NULL, False, '2024-06-27 04:46:51', '2024-09-04 06:51:56');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Jasmine Glen', 'BR', 'Oregon', 'mouth', 'Davisberg', '89601', '569 Irwin Village Suite 404', 'Suite 910', NULL, True, '2024-04-25 05:44:16', '2024-07-18 04:36:44');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Boyd Ports', 'IN', 'Wyoming', 'view', 'Alexanderburgh', '24520', '7165 Rasmussen Ports Apt. 797', 'Suite 565', NULL, True, '2024-08-19 03:51:02', '2024-08-19 20:08:11');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Rogers Trail', 'DE', 'Maryland', 'shire', 'Lake Emily', '14254', '7278 Barker Views Suite 319', 'Apt. 331', 94, True, '2024-04-15 19:15:11', '2024-06-29 04:24:49');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Shepherd Rapid', 'BR', 'Maine', 'furt', 'East Danielle', '61558', '957 Joseph Points Suite 016', 'Suite 289', NULL, True, '2024-08-12 11:22:35', '2024-08-17 08:09:39');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Hobbs Mills', 'CA', 'Mississippi', 'burgh', 'Cooktown', '41433', '7617 Mary Motorway', 'Suite 551', 74, True, '2024-04-04 17:04:07', '2024-04-27 13:52:02');
INSERT INTO address (address_name, address_country_code, address_state, address_district, address_city, address_postal_code, address_line_1, address_line_2, address_phone_id, is_active, created_ts, updated_ts) VALUES ('Montes Crossroad', 'BR', 'Iowa', 'shire', 'South Ashleyfurt', '40497', '52228 Eaton Expressway Apt. 460', 'Apt. 800', 15, True, '2024-05-26 17:40:04', '2024-06-29 15:08:23');

-- REF: https://www.hl7.org/fhir/organization.html
create table organization(
  organization_id bigserial primary key,
  organization_name varchar(255) not null,
  -- NOTE: Easy to refactor to 1 Org -> N Addresses.
  address_id bigint not null references address(address_id),
  -- NOTE: Easy to refactor to 1 Org -> N Phones.
  phone_id bigint null references phone(phone_id),

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Rivera Ltd', 37, NULL, False, '2024-05-22 10:05:53', '2024-08-25 15:23:02');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Holland Ltd', 17, NULL, True, '2024-03-17 04:45:00', '2024-07-13 00:37:04');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Adams and Sons', 37, 32, False, '2024-07-27 08:27:58', '2024-09-02 05:33:33');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Wilcox, Montoya and Diaz', 39, NULL, True, '2024-05-18 09:02:30', '2024-08-30 14:42:15');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Martinez, Wang and English', 49, NULL, True, '2024-04-03 19:37:49', '2024-08-25 20:38:36');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Duke, Perkins and Roberts', 16, 7, False, '2024-03-12 20:55:16', '2024-03-19 22:18:08');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Phillips, Bell and Mccann', 6, NULL, False, '2024-07-27 13:18:33', '2024-08-11 20:13:58');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('White Group', 3, NULL, True, '2024-06-04 10:31:29', '2024-08-02 10:54:16');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Williams, Elliott and Thomas', 32, NULL, False, '2024-06-07 03:17:02', '2024-07-28 05:25:22');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Morris LLC', 25, NULL, False, '2024-09-05 09:41:34', '2024-09-06 10:02:15');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Robinson LLC', 15, 59, False, '2024-08-06 22:08:00', '2024-08-14 16:56:52');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Jones LLC', 22, 97, False, '2024-05-09 01:47:16', '2024-08-14 21:55:22');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Shelton, Ryan and Conner', 28, NULL, False, '2024-07-21 10:50:59', '2024-07-21 12:43:32');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Aguirre Group', 3, 56, False, '2024-03-19 10:44:12', '2024-08-13 10:06:49');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Schultz and Sons', 8, NULL, False, '2024-06-29 03:22:20', '2024-08-21 00:34:25');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Mendez-Harris', 50, NULL, True, '2024-07-01 18:39:25', '2024-08-31 20:21:44');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Joseph, Smith and Armstrong', 3, 73, True, '2024-03-18 02:27:23', '2024-03-24 16:36:30');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Simpson-Hubbard', 43, 66, True, '2024-02-17 15:43:34', '2024-08-17 03:47:56');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Moore-Larsen', 42, 72, False, '2024-02-28 18:26:15', '2024-03-21 16:14:05');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Barnett-Wilkerson', 20, 26, False, '2024-02-06 23:53:53', '2024-04-17 02:11:27');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Hampton, Coleman and Morton', 7, NULL, False, '2024-02-13 14:05:35', '2024-02-25 18:43:05');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Lucas, Park and Harris', 37, 55, False, '2024-02-18 20:35:59', '2024-02-27 16:56:51');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Herring-Knight', 17, NULL, True, '2024-07-14 13:45:38', '2024-07-25 10:10:02');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Steele, Neal and Castro', 6, 27, False, '2024-06-08 01:34:37', '2024-08-21 11:56:28');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Guerra and Sons', 29, 30, False, '2024-01-09 01:38:43', '2024-01-10 07:16:58');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Knight Inc', 13, 50, False, '2024-05-03 22:07:09', '2024-05-16 14:57:58');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('King-Brown', 49, NULL, True, '2024-06-24 13:59:56', '2024-07-15 12:28:48');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Horn Ltd', 18, NULL, True, '2024-07-26 22:00:30', '2024-08-16 14:06:24');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Young, Weiss and Watson', 29, NULL, False, '2024-08-06 23:12:14', '2024-08-19 12:40:13');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Aguirre, Morrison and Hutchinson', 6, 13, True, '2024-08-07 19:31:40', '2024-09-01 08:50:58');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Wright Inc', 18, 78, False, '2024-08-13 16:30:48', '2024-08-28 19:22:44');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Wright-Johnston', 43, 60, True, '2024-06-12 15:04:47', '2024-06-24 13:52:29');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Callahan-Harris', 25, NULL, True, '2024-01-14 06:44:16', '2024-04-10 19:12:27');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Contreras-Parker', 45, NULL, False, '2024-08-30 09:58:56', '2024-09-03 00:11:24');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Giles Inc', 48, 16, False, '2024-09-06 08:45:44', '2024-09-06 08:54:15');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Stanley-Thomas', 3, NULL, False, '2024-02-20 21:31:52', '2024-06-15 10:23:57');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Dominguez-Espinoza', 43, NULL, True, '2024-02-29 07:54:37', '2024-04-04 13:02:25');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Hubbard and Sons', 41, 73, True, '2024-02-17 03:43:19', '2024-03-11 10:02:49');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Ellis Inc', 41, 99, True, '2024-06-16 11:18:15', '2024-08-03 04:59:32');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Anderson PLC', 13, NULL, True, '2024-02-25 16:17:01', '2024-04-17 21:04:57');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Bowers-Morton', 14, 40, False, '2024-06-01 16:29:48', '2024-07-30 04:04:23');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Barnett-Mendoza', 17, NULL, True, '2024-08-31 09:01:46', '2024-09-05 10:35:38');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Taylor, Bell and Carter', 24, NULL, False, '2024-04-02 22:19:29', '2024-06-22 20:07:26');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Stafford-Castro', 49, 55, True, '2024-08-28 02:27:24', '2024-09-02 12:40:53');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Vega, White and Barrera', 16, 5, False, '2024-07-13 22:26:47', '2024-07-27 05:52:38');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Jones-Garcia', 46, 96, False, '2024-05-16 16:58:08', '2024-07-29 17:56:25');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Holloway, Kidd and Edwards', 16, 99, True, '2024-05-12 05:16:12', '2024-06-07 08:01:04');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Cox-Jennings', 3, NULL, True, '2024-06-22 18:26:38', '2024-07-14 13:49:07');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Torres-Gardner', 13, NULL, True, '2024-04-07 23:33:39', '2024-06-26 19:37:43');
INSERT INTO organization (organization_name, address_id, phone_id, is_active, created_ts, updated_ts) VALUES ('Rasmussen LLC', 6, NULL, False, '2024-01-19 08:05:50', '2024-08-04 21:54:19');

create table facility_type(
  facility_type_id bigserial primary key,
  facility_type_name varchar(255) not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  facility_type(facility_type_id, facility_type_name)
values
  (1, 'Clinic'),
  (2, 'Hospital')
;

create table facility(
  facility_id bigserial primary key,
  facility_type_id bigint not null references facility_type(facility_type_id),
  facility_name varchar(255) not null,
  -- NOTE: Facility is owned by some company.
  organization_id int not null references organization(organization_id),
  address_id int not null references address(address_id),

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Vazquez-Wright', 50, 20, False, '2024-03-21 11:05:59', '2024-05-12 04:18:48');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Ellis PLC', 32, 10, True, '2024-04-10 20:23:45', '2024-06-15 09:40:17');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Evans Ltd', 26, 49, True, '2024-08-03 20:59:36', '2024-08-11 06:00:48');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Mason and Sons', 16, 19, False, '2024-02-26 15:08:02', '2024-03-27 21:12:51');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Knight, Adams and Little', 9, 10, True, '2024-07-14 19:30:16', '2024-08-04 23:03:22');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Rice LLC', 13, 36, False, '2024-03-28 04:59:09', '2024-05-30 08:18:28');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Munoz, Gray and Smith', 34, 23, True, '2024-08-15 08:28:03', '2024-09-03 23:00:49');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Barajas, Brown and Meza', 24, 29, True, '2024-09-01 09:57:53', '2024-09-05 17:30:25');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Davis, Nelson and Lopez', 23, 46, False, '2024-05-28 05:05:44', '2024-06-30 08:53:10');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Shaw PLC', 2, 50, True, '2024-02-25 02:48:53', '2024-07-23 13:58:36');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Smith, Howell and Oliver', 46, 32, False, '2024-03-07 04:31:27', '2024-08-18 13:00:39');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Rodriguez LLC', 26, 40, True, '2024-02-12 16:50:03', '2024-08-28 12:09:45');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Adams-Sandoval', 23, 18, True, '2024-08-22 03:58:43', '2024-09-06 12:50:59');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Richardson-Nguyen', 34, 41, True, '2024-08-07 10:52:16', '2024-08-29 22:41:49');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'James-Peters', 18, 5, True, '2024-07-13 07:05:45', '2024-08-16 20:33:30');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Sanchez, Roberts and Owens', 46, 25, False, '2024-02-01 19:51:51', '2024-03-20 21:49:58');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Taylor PLC', 43, 28, False, '2024-07-19 00:05:27', '2024-08-02 16:40:29');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Watson, Gates and Tucker', 31, 22, True, '2024-08-11 02:41:24', '2024-09-03 12:55:02');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Vaughn-Fletcher', 29, 25, False, '2024-07-18 05:52:26', '2024-08-13 15:24:04');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Casey-Wilson', 4, 32, False, '2024-07-08 11:37:31', '2024-08-10 08:57:31');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Jones-Robinson', 43, 22, True, '2024-04-05 17:44:57', '2024-07-15 17:00:41');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Garner-Rodriguez', 16, 37, True, '2024-08-07 03:12:12', '2024-08-26 10:59:53');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Williams Ltd', 33, 1, False, '2024-01-20 03:39:00', '2024-03-27 19:56:03');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Farley-Deleon', 49, 38, False, '2024-08-15 20:35:23', '2024-08-18 18:04:17');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Wilson, Ortiz and Williams', 27, 1, False, '2024-07-31 21:10:00', '2024-08-06 22:40:32');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Fletcher-Wiley', 49, 4, False, '2024-05-28 00:09:34', '2024-08-24 16:22:07');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Moore, Smith and Rodriguez', 29, 47, True, '2024-02-07 23:33:02', '2024-07-23 06:54:32');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Dean, Walker and Moran', 12, 43, False, '2024-07-16 09:42:40', '2024-08-30 15:26:46');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Powell-Vincent', 2, 40, False, '2024-04-28 18:40:10', '2024-07-07 20:09:28');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Jones-Sanchez', 17, 3, False, '2024-07-15 00:30:17', '2024-07-19 15:44:05');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Johnson, Bennett and Santiago', 24, 49, False, '2024-02-15 13:57:33', '2024-07-03 17:45:28');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Dickerson-Casey', 19, 2, True, '2024-01-20 02:02:54', '2024-05-20 23:53:41');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Taylor, Nelson and Townsend', 24, 29, True, '2024-05-12 09:43:31', '2024-08-19 14:30:54');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Wilson and Sons', 15, 50, True, '2024-04-20 19:31:57', '2024-06-19 22:00:25');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Waller Group', 5, 33, False, '2024-07-16 19:20:59', '2024-07-27 21:12:49');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Randall-Jones', 47, 44, True, '2024-01-29 14:43:06', '2024-08-10 21:11:36');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Bailey, Moreno and Blevins', 33, 11, False, '2024-06-18 10:42:49', '2024-07-05 13:37:40');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Williams-Brown', 35, 33, False, '2024-06-14 13:05:04', '2024-06-27 00:24:28');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Martinez, Pearson and Strickland', 37, 28, False, '2024-03-12 01:56:14', '2024-04-12 19:58:02');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Burgess Inc', 9, 23, True, '2024-06-19 03:47:27', '2024-08-17 20:10:08');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Roberts-Baker', 41, 26, False, '2024-03-11 19:15:50', '2024-05-13 06:24:19');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Taylor-Blair', 43, 14, False, '2024-05-30 06:02:13', '2024-05-31 12:19:05');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Lopez-Wood', 12, 7, False, '2024-02-23 02:35:33', '2024-07-22 00:23:17');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Lee-Young', 14, 28, True, '2024-01-15 10:45:24', '2024-07-21 21:36:59');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Gray-Bradley', 5, 49, True, '2024-04-21 05:35:09', '2024-06-02 18:24:44');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Walker PLC', 15, 33, False, '2024-04-27 01:29:35', '2024-06-10 23:02:56');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Anderson Inc', 27, 32, False, '2024-08-31 06:38:38', '2024-08-31 14:01:05');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (2, 'Ford-Tucker', 50, 8, True, '2024-01-27 08:22:42', '2024-05-09 22:06:12');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Keith-Reyes', 47, 8, True, '2024-05-13 04:58:22', '2024-06-13 03:07:42');
INSERT INTO facility (facility_type_id, facility_name, organization_id, address_id, is_active, created_ts, updated_ts) VALUES (1, 'Schaefer-Robbins', 33, 37, False, '2024-08-07 14:10:55', '2024-09-03 05:38:12');

-- NOTE: Typical JOIN ON Address.
create index if not exists facility_address_id on facility(address_id);

create table person_super_type(
  person_super_type_id bigserial primary key,
  person_super_type_name varchar(255) not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

-- NOTE: Highest Level of Person Classification.
insert into
  person_super_type(person_super_type_id, person_super_type_name)
values
  (1, 'Patient'),
  (2, 'Practitioner'),
  (3, 'Staff'),
  (4, 'CRM')
;

-- NOTE: Lowest Level of Person Classification.
create table person_type(
  person_type_id bigserial primary key,
  person_super_type_id bigint not null references person_super_type(person_super_type_id),
  person_type_name varchar(255) not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  person_type(person_type_id, person_super_type_id, person_type_name)
values
  (1, 1, 'Patient'),
  (2, 2, 'Primary Care Physician'),
  (3, 2, 'Physician Assistant'),
  (4, 2, 'Specialist'),
  (5, 2, 'Nurse Practitioner'),
  (6, 2, 'Skilled Nurse'),
  (7, 3, 'Billing Staff'),
  (8, 3, 'Reception Staff'),
  (9, 4, 'System'),
  (10, 4, 'CI/CD')
;


-- REF: https://hl7.org/fhir/person.html
create table person(
  person_id bigserial primary key,
  person_type_id bigint not null references person_type(person_type_id),
  first_name varchar(255) not null,
  last_name varchar(255) not null,
  middle_name varchar(255) null,
  full_name varchar(512) generated always
    as (
      lower(regexp_replace(first_name, '[\W0-9]', ''))
      || ' '
      || lower(regexp_replace(last_name, '[\W0-9]', ''))
    )
  stored,
  sex_code char(1) null check (sex_code in ('m', 'f')),
  date_of_birth date not null,
  -- NOTE: Easy to refactor to 1 Person -> N Addresses.
  address_id bigint null references address(address_id),
  -- NOTE: Easy to refactor to 1 Person -> N Phones.
  phone_id bigint null references phone(phone_id),
  is_married bool null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

-- NOTE: Typical Search by Name (a better solution would be to use a Full-Text Search Index).
create index if not exists person_full_name on person(full_name);
-- NOTE: Typical Search by DOB (for priority treatment / analytical tasks).
create index if not exists person_date_of_birth on person(date_of_birth);
-- NOTE: Typical JOIN ON Phone.
create index if not exists person_phone_id on person(phone_id);

INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (5, 'Katrina', 'Stanley', NULL, 'm', '1945-03-24', NULL, 90, False, True, '2024-01-16 15:22:11', '2024-05-30 13:59:57');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (4, 'Kimberly', 'Ruiz', NULL, 'm', '1986-11-01', NULL, 5, True, True, '2024-01-18 14:48:02', '2024-03-07 16:50:15');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (1, 'Alejandro', 'White', 'Stephanie', 'f', '1986-01-09', 21, 53, False, False, '2024-01-30 11:14:05', '2024-06-25 05:30:20');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (2, 'Emily', 'Mendez', NULL, 'm', '1985-04-07', NULL, NULL, True, True, '2024-09-01 22:43:43', '2024-09-03 20:53:42');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (1, 'Andrew', 'Holt', 'Richard', NULL, '1947-09-20', 33, NULL, NULL, False, '2024-03-13 18:28:31', '2024-06-09 09:08:56');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (7, 'Carl', 'Kelley', NULL, NULL, '1941-06-29', NULL, 30, NULL, False, '2024-02-22 15:56:02', '2024-06-01 01:53:35');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (4, 'Steven', 'Young', NULL, 'm', '1936-05-19', 43, 85, NULL, True, '2024-08-02 13:19:18', '2024-08-30 09:45:47');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (5, 'Laura', 'Brown', NULL, 'f', '1983-10-13', NULL, NULL, False, False, '2024-05-30 01:34:21', '2024-07-15 14:17:27');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (7, 'Christopher', 'Shields', 'Paula', NULL, '1979-06-15', 8, 73, False, True, '2024-05-23 21:00:38', '2024-07-08 17:48:32');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (7, 'Michelle', 'Lewis', NULL, NULL, '1988-01-16', NULL, 93, NULL, False, '2024-08-07 18:34:48', '2024-08-23 05:49:01');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (10, 'Sergio', 'Mack', 'Melissa', NULL, '1938-11-01', 48, 15, True, True, '2024-07-15 04:57:20', '2024-08-21 05:05:10');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (6, 'Joseph', 'Harding', 'Nicole', 'm', '1971-04-20', NULL, 78, False, False, '2024-06-12 23:19:37', '2024-08-06 14:54:33');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (4, 'Andrew', 'Rose', NULL, 'f', '1944-07-04', 30, NULL, NULL, True, '2024-06-02 12:40:23', '2024-09-06 09:32:15');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (1, 'Robert', 'Ryan', 'Thomas', NULL, '1965-07-01', NULL, 36, True, True, '2024-08-02 22:03:31', '2024-08-06 12:21:21');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (3, 'Crystal', 'Garcia', 'Amanda', NULL, '2003-10-31', NULL, NULL, True, True, '2024-01-25 17:43:01', '2024-02-10 12:51:32');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (4, 'Katherine', 'Johnson', 'Ricardo', 'm', '1959-06-20', 44, 28, True, False, '2024-05-14 00:48:39', '2024-07-08 01:17:57');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (1, 'Stephen', 'Stone', 'Lisa', NULL, '1934-08-09', 5, NULL, False, True, '2024-08-09 08:22:47', '2024-08-17 23:22:03');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (1, 'Nancy', 'Rodriguez', NULL, 'm', '1962-04-07', 40, NULL, True, False, '2024-07-23 15:09:46', '2024-09-05 20:40:24');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (4, 'Robert', 'Foster', 'Robert', 'f', '1947-10-28', 21, 33, True, True, '2024-08-16 23:04:59', '2024-08-23 03:32:33');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (10, 'Michael', 'Copeland', 'Jared', 'f', '2003-11-30', NULL, NULL, NULL, False, '2024-03-05 14:50:47', '2024-03-16 15:48:47');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (2, 'Lisa', 'Nelson', NULL, 'f', '1978-11-22', NULL, NULL, True, False, '2024-07-24 19:23:58', '2024-08-16 18:32:18');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (1, 'Julie', 'Jones', 'Stacey', NULL, '1953-02-03', NULL, NULL, NULL, True, '2024-07-05 16:21:22', '2024-08-10 05:19:37');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (9, 'Timothy', 'Peterson', NULL, 'f', '1940-10-19', 2, 83, True, True, '2024-05-18 06:06:03', '2024-08-17 23:39:27');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (8, 'Krista', 'Green', NULL, NULL, '1965-09-28', 29, NULL, NULL, False, '2024-06-02 05:54:24', '2024-07-26 05:45:22');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (4, 'Samuel', 'Burke', NULL, NULL, '1984-08-07', 48, 86, False, False, '2024-05-09 05:06:57', '2024-08-18 14:19:59');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (4, 'Hector', 'Garza', NULL, NULL, '1938-06-26', NULL, 67, NULL, True, '2024-01-08 09:21:05', '2024-03-09 18:16:18');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (8, 'Keith', 'Martin', 'Christopher', 'm', '1962-12-08', 28, NULL, NULL, True, '2024-05-29 16:04:38', '2024-06-15 07:25:57');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (6, 'Eric', 'Haley', NULL, 'f', '1965-09-03', NULL, 8, False, True, '2024-02-29 22:01:44', '2024-05-03 16:14:01');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (3, 'Christopher', 'Castillo', NULL, NULL, '2005-11-04', NULL, NULL, True, False, '2024-02-14 15:00:10', '2024-02-15 17:45:56');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (6, 'Raymond', 'Rodriguez', NULL, NULL, '1953-01-14', 41, NULL, False, True, '2024-01-22 12:43:02', '2024-06-28 23:14:06');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (3, 'George', 'Cain', 'Clifford', NULL, '1939-12-12', 28, NULL, NULL, True, '2024-07-06 08:26:13', '2024-07-27 17:25:28');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (9, 'Ray', 'Salazar', NULL, 'm', '1940-09-29', NULL, 92, False, True, '2024-02-26 05:05:54', '2024-05-18 21:03:05');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (2, 'Shawn', 'Bryant', NULL, NULL, '1953-04-04', 8, 65, NULL, False, '2024-07-17 14:44:45', '2024-08-31 11:16:58');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (7, 'Anthony', 'Mendez', NULL, NULL, '1992-04-06', NULL, 33, True, True, '2024-08-13 03:28:14', '2024-08-26 10:17:04');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (3, 'Justin', 'Weaver', NULL, 'm', '1977-11-10', NULL, 59, NULL, False, '2024-01-25 21:33:54', '2024-02-19 08:11:42');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (1, 'Darrell', 'Dodson', 'Scott', NULL, '1991-09-10', 21, 28, False, False, '2024-01-30 05:59:12', '2024-06-22 00:55:30');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (7, 'Kathy', 'Smith', NULL, NULL, '1969-04-12', 7, 63, False, False, '2024-06-27 19:17:55', '2024-08-28 18:54:23');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (5, 'Michael', 'Anderson', NULL, NULL, '1997-07-10', 31, NULL, True, True, '2024-07-24 05:04:52', '2024-08-15 10:55:24');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (10, 'Stephen', 'Knox', NULL, 'f', '1937-07-16', 48, NULL, True, False, '2024-07-24 02:32:02', '2024-08-14 10:55:25');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (2, 'Michael', 'Thomas', NULL, 'm', '2002-03-28', NULL, NULL, False, False, '2024-09-02 01:29:39', '2024-09-05 07:34:06');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (5, 'David', 'Colon', NULL, 'f', '1934-03-15', 8, 35, False, False, '2024-08-28 08:27:13', '2024-08-29 12:49:50');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (4, 'Ashley', 'Jones', 'Nathan', 'f', '1959-04-18', NULL, NULL, NULL, False, '2024-01-15 04:48:44', '2024-05-31 08:52:37');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (1, 'Monica', 'Vaughn', NULL, 'm', '1994-09-14', NULL, 86, True, False, '2024-08-30 12:10:53', '2024-09-02 04:59:54');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (5, 'Sara', 'Anderson', NULL, 'm', '2004-05-30', 18, NULL, True, False, '2024-04-12 11:44:29', '2024-07-22 08:20:19');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (10, 'Toni', 'Horton', NULL, 'f', '2005-03-27', NULL, 90, NULL, False, '2024-07-10 08:46:48', '2024-07-28 23:17:49');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (5, 'Andrew', 'Price', 'Charles', 'm', '1939-04-18', 12, 42, True, False, '2024-07-29 01:32:14', '2024-08-27 17:00:22');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (1, 'Megan', 'Miranda', 'Erica', 'f', '1989-04-10', NULL, 58, False, True, '2024-04-03 02:22:28', '2024-06-10 17:34:17');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (7, 'Tammy', 'Jones', 'Jennifer', 'm', '1935-10-13', NULL, NULL, True, False, '2024-07-09 04:17:58', '2024-08-14 22:36:50');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (10, 'Nancy', 'Perry', 'Darlene', NULL, '1945-11-28', NULL, 42, True, False, '2024-01-07 08:11:05', '2024-08-13 15:45:02');
INSERT INTO person (person_type_id, first_name, last_name, middle_name, sex_code, date_of_birth, address_id, phone_id, is_married, is_active, created_ts, updated_ts) VALUES (10, 'Thomas', 'Sanchez', 'Rebecca', NULL, '1933-12-24', NULL, 19, True, False, '2024-04-26 02:09:25', '2024-04-29 07:40:49');

-- NOTE: Historical Changes Tracking (Example).
create table person_scd2(
  person_id bigint not null references person(person_id),
  valid_from_ts timestamp not null,
  valid_to_ts timestamp not null default ('9999-01-01' at time zone 'utc'),

  first_name varchar(255) not null,
  last_name varchar(255) not null,
  middle_name varchar(255) null,

  primary key (person_id, valid_from_ts, valid_to_ts)
)
;

create table practitioner(
  practitioner_id bigserial primary key references person(person_id),

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-02-11 08:50:46', '2024-04-22 18:58:43');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-01-06 12:12:53', '2024-03-31 18:13:29');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-07-14 19:53:59', '2024-09-01 20:08:48');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-02-03 12:07:23', '2024-06-21 07:06:28');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-07-27 01:23:00', '2024-07-27 05:50:45');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-05-13 17:47:51', '2024-05-13 19:21:23');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-08-12 21:17:22', '2024-08-17 17:44:11');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-01-31 05:08:48', '2024-07-28 06:29:13');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-08-13 02:24:22', '2024-08-29 00:46:30');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-06-15 10:50:36', '2024-06-27 21:57:27');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-01-22 15:03:45', '2024-04-15 16:20:06');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-07-09 22:16:06', '2024-09-04 21:16:15');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-04-04 02:35:54', '2024-04-20 22:56:27');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-06-29 13:46:10', '2024-08-20 06:40:11');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-03-07 12:58:37', '2024-05-23 18:10:01');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-07-16 11:33:41', '2024-07-22 08:59:57');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-05-16 09:33:27', '2024-08-25 17:35:15');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-03-23 07:11:17', '2024-07-15 08:53:17');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-01-16 21:28:11', '2024-02-28 12:50:45');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-06-24 18:38:38', '2024-08-01 08:24:32');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-08-22 17:09:17', '2024-09-05 01:11:13');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-07-06 06:29:03', '2024-09-05 10:20:28');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-02-13 00:04:44', '2024-07-09 20:46:58');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-08-24 04:52:55', '2024-09-02 04:37:56');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-05-11 19:44:19', '2024-07-07 16:20:29');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-05-28 00:52:36', '2024-06-10 06:27:31');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-05-17 23:58:37', '2024-05-24 13:20:10');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-04-07 05:44:23', '2024-07-26 04:57:37');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-06-20 17:00:47', '2024-08-20 07:04:53');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-07-02 09:37:21', '2024-08-16 22:52:33');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-06-15 12:45:06', '2024-08-07 14:44:53');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-05-27 00:31:00', '2024-07-19 18:35:54');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-09-01 00:14:54', '2024-09-05 04:10:08');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-07-17 19:14:29', '2024-08-15 19:53:30');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-06-07 02:49:49', '2024-08-06 06:25:29');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-06-11 07:32:37', '2024-06-13 12:38:36');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-03-26 04:16:06', '2024-08-11 03:50:52');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-01-04 20:56:41', '2024-06-05 00:38:43');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-02-22 22:24:53', '2024-05-25 03:39:41');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-02-02 05:40:51', '2024-04-24 02:34:15');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-08-30 21:42:04', '2024-09-06 06:07:19');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-06-20 19:03:50', '2024-08-08 18:05:55');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-06-29 12:24:49', '2024-08-18 01:28:16');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-06-01 01:30:32', '2024-07-15 04:28:39');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-07-28 05:11:07', '2024-08-06 23:08:05');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-04-18 07:58:04', '2024-07-22 21:56:35');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-07-10 02:13:53', '2024-07-31 02:57:03');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-05-09 06:58:52', '2024-08-13 04:53:00');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (True, '2024-05-05 13:32:48', '2024-07-18 03:44:26');
INSERT INTO practitioner (is_active, created_ts, updated_ts) VALUES (False, '2024-02-15 12:39:30', '2024-06-19 11:56:04');

create table practitioner_facility_bridge(
  practitioner_id bigint not null references practitioner(practitioner_id),
  facility_id bigint not null references facility(facility_id),

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc'),

  primary key(practitioner_id, facility_id)
)
;

INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (7, 6, True, '2024-01-06 18:41:17', '2024-05-22 14:37:34');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (49, 3, True, '2024-06-27 20:43:19', '2024-07-19 21:27:00');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (17, 35, True, '2024-02-05 02:44:40', '2024-04-12 03:58:25');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (16, 2, True, '2024-04-30 19:07:32', '2024-05-10 06:19:04');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (32, 8, True, '2024-02-07 17:07:21', '2024-03-23 12:31:26');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (38, 18, False, '2024-01-29 00:04:36', '2024-08-01 06:58:00');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (1, 37, False, '2024-04-06 12:45:44', '2024-04-27 16:13:46');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (7, 31, True, '2024-02-04 14:32:33', '2024-05-29 23:58:53');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (1, 47, True, '2024-01-08 13:45:05', '2024-04-12 00:33:50');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (14, 15, False, '2024-04-13 22:31:56', '2024-06-21 05:59:53');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (24, 22, True, '2024-03-26 16:10:46', '2024-08-29 16:43:54');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (31, 43, False, '2024-07-16 00:56:13', '2024-07-17 22:51:43');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (34, 46, True, '2024-06-01 22:16:29', '2024-08-29 09:26:34');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (46, 12, False, '2024-03-27 13:42:18', '2024-04-01 00:37:02');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (49, 16, False, '2024-07-23 18:18:21', '2024-08-03 15:37:10');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (47, 1, True, '2024-02-01 16:26:37', '2024-05-07 19:11:18');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (43, 3, False, '2024-06-11 20:29:21', '2024-06-16 02:22:05');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (18, 31, False, '2024-02-20 15:39:40', '2024-06-01 06:35:57');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (43, 22, False, '2024-01-07 11:52:10', '2024-06-03 07:43:09');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (24, 28, True, '2024-06-01 09:21:11', '2024-06-01 17:16:36');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (19, 8, False, '2024-08-14 23:15:56', '2024-08-20 14:07:53');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (17, 31, True, '2024-08-29 22:45:52', '2024-08-31 18:45:10');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (29, 33, True, '2024-01-27 18:42:09', '2024-02-18 21:10:38');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (12, 29, True, '2024-06-12 04:12:40', '2024-08-20 06:07:30');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (11, 22, False, '2024-04-08 03:06:10', '2024-06-13 10:51:37');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (41, 19, True, '2024-05-21 09:49:09', '2024-07-21 01:34:04');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (41, 33, False, '2024-08-27 21:58:47', '2024-09-01 22:52:48');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (31, 47, False, '2024-07-16 21:41:25', '2024-07-23 16:50:24');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (47, 17, False, '2024-05-08 06:58:31', '2024-07-10 15:17:34');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (14, 4, False, '2024-04-10 02:00:44', '2024-04-24 09:55:19');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (12, 32, True, '2024-04-27 11:11:48', '2024-08-04 21:20:11');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (41, 16, True, '2024-05-31 01:01:21', '2024-06-01 19:53:21');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (2, 11, True, '2024-03-06 18:21:24', '2024-06-04 12:17:06');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (42, 23, True, '2024-04-21 00:20:30', '2024-06-09 02:56:21');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (33, 3, False, '2024-04-18 21:23:54', '2024-04-21 05:40:48');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (32, 46, False, '2024-07-13 14:59:40', '2024-08-06 00:40:38');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (19, 40, False, '2024-03-06 12:12:38', '2024-07-03 15:05:45');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (48, 50, False, '2024-04-17 13:59:16', '2024-07-25 17:03:43');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (9, 6, False, '2024-04-05 07:18:29', '2024-04-30 12:23:38');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (35, 23, False, '2024-05-05 12:03:38', '2024-06-04 21:58:01');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (28, 24, False, '2024-08-03 01:48:01', '2024-08-07 23:36:22');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (20, 14, True, '2024-01-18 18:21:54', '2024-06-07 03:38:06');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (43, 42, True, '2024-05-26 09:44:06', '2024-06-02 21:12:39');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (43, 13, False, '2024-05-16 22:46:07', '2024-05-20 06:13:23');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (1, 7, True, '2024-06-20 02:44:32', '2024-08-19 03:50:21');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (16, 27, True, '2024-07-13 16:29:24', '2024-09-03 23:48:02');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (39, 33, True, '2024-04-12 06:25:00', '2024-08-14 00:29:05');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (8, 29, True, '2024-02-05 00:21:10', '2024-06-10 06:51:37');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (48, 33, False, '2024-01-04 23:55:25', '2024-04-12 08:54:24');
INSERT INTO practitioner_facility_bridge (practitioner_id, facility_id, is_active, created_ts, updated_ts) VALUES (44, 13, False, '2024-05-29 12:29:35', '2024-07-04 01:54:38');

create table patient(
  patient_id bigserial primary key references person(person_id),
  -- NOTE:
  --  The concept is called "Assigned PCP."
  --  Assigned PCP may differ from Rendering PCP. For example, when PCP is on vacation.
  practitioner_id bigint null references practitioner(practitioner_id),

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

INSERT INTO patient (practitioner_id, is_active, created_ts, updated_ts) VALUES (NULL, True, '2024-09-06 10:10:10', '2024-09-06 12:12:12');
INSERT INTO patient (practitioner_id, is_active, created_ts, updated_ts) VALUES (NULL, False, '2024-09-06 10:15:10', '2024-09-06 13:12:12');

-- NOTE: Typical JOIN ON Practitioner (Assigned PCP).
create index if not exists patient_practitioner_id on patient(practitioner_id);

create table appointment_type(
  appointment_type_id bigserial primary key,
  appointment_type_name varchar(255) not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  appointment_type(appointment_type_id, appointment_type_name)
values
  (1, 'Office Visit'),
  (2, 'Remote Visit'),
  (3, 'Chat')
;

-- NOTE: https://terminology.hl7.org/5.1.0/ValueSet-v2-0276.html
create table appointment_reason(
  appointment_reason_id bigserial primary key,
  appointment_reason_name varchar(255) not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  appointment_reason(appointment_reason_id, appointment_reason_name)
values
  (1, 'Routine'),
  (2, 'Walk-In'),
  (3, 'Checkup'),
  (4, 'Follow-Up'),
  (5, 'Emergency')
;

-- NOTE: https://www.hl7.org/fhir/valueset-appointmentstatus.html.
create table appointment_status(
  appointment_status_id bigserial primary key,
  appointment_status_name varchar(255) not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  appointment_status(appointment_status_id, appointment_status_name)
values
  (1, 'Proposed'),
  (2, 'Pending'),
  (3, 'Booked'),
  (4, 'Arrived'),
  (5, 'Fulfilled'),
  (6, 'Canceled'),
  (7, 'No-Show'),
  (8, 'Check-In'),
  (9, 'Wait-List')
;

create table appointment_slot(
  appointment_slot_id bigserial primary key,

  facility_id bigint references facility(facility_id),
  practitioner_id bigint references practitioner(practitioner_id),

  start_ts timestamp not null check (start_ts < end_ts),
  end_ts timestamp not null check (start_ts < end_ts),

    -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc'),

  unique (practitioner_id, start_ts, end_ts)
)
;

-- NOTE: Typical Search (BETWEEN).
create index if not exists appointment_slot_start_end on appointment_slot(start_ts, end_ts);
-- NOTE: JOINs ON Facility and Practitioners Aren't Common (+ Small Tables).

create table appointment(
  appointment_id bigserial primary key,
  appointment_type_id bigint not null references appointment_type(appointment_type_id),
  appointment_reason_id bigint not null references appointment_reason(appointment_reason_id),
  appointment_status_id bigint not null references appointment_status(appointment_status_id),

  -- NOTE:
  --  1. Makes it possible to have different Planned vs Actual Time.
  --  2. Makes it possible to evolve and maintain Scheduling (and Overbooking) separately from Appointments.
  appointment_slot_id bigint null references appointment_slot(appointment_slot_id),
  patient_id bigint not null references patient(patient_id),

  start_ts_actual timestamp null
    check(
      (start_ts_actual is not null and start_ts_actual < end_ts_actual)
      -- NOTE: According to FHIR.
      or (start_ts_actual is null and appointment_status_id in (1, 6, 9))
    ),
  end_ts_actual timestamp null
    check(
      (end_ts_actual is not null and start_ts_actual < end_ts_actual)
      -- NOTE: According to FHIR.
      or (end_ts_actual is null and appointment_status_id in (1, 6, 9))
    ),

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

-- NOTE: Typical Search by Status.
create index if not exists appointment_status_id on appointment(appointment_status_id);
-- NOTE: Search by Type or Reason Isn't Common.
-- NOTE: Typical JOIN ON Slot.
create index if not exists appointment_slot_id on appointment(appointment_slot_id);
-- NOTE: Typical JOIN ON Patient.
create index if not exists appointment_patient_id on appointment(patient_id);

create table encounter_status(
  encounter_status_id bigserial primary key,
  encounter_status_name text not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  encounter_status(encounter_status_id, encounter_status_name)
values
  (1, 'Planned'),
  (2, 'In-Progress'),
  (3, 'On-Hold'),
  (4, 'Discharged'),
  (5, 'Completed'),
  (6, 'Cancelled'),
  (7, 'Discontinued')
;

-- inpatient IMP, ambulatory AMB, observation OBSENC, emergency EMER, virtual VR, home health HH
create table encounter_class(
  encounter_class_id bigserial primary key,
  encounter_class_code varchar(6) not null,
  encounter_class_name text not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  encounter_class(encounter_class_id, encounter_class_code, encounter_class_name)
values
  (1, 'IMP', 'Inpatient'),
  (2, 'AMB', 'Ambulatory'),
  (3, 'OBSENC', 'Observation'),
  (4, 'EMER', 'Emergency'),
  (5, 'VR', 'Virtual'),
  (6, 'HH', 'Home Health')
;

-- Chief Complaint CC, Health Concern HC, Admitting Diagnosis AD, Reason for Visit RV, Health Maintenance and Screening HM
create table encounter_reason(
  encounter_reason_id bigserial primary key,
  encounter_reason_code char(2) not null,
  encounter_reason_name text not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  encounter_reason(encounter_reason_id, encounter_reason_code, encounter_reason_name)
values
  (1, 'CC', 'Chief Complaint'),
  (2, 'HC', 'Health Concern'),
  (3, 'AD', 'Admitting Diagnosis'),
  (4, 'RV', 'Reason for Visit'),
  (5, 'HM', 'Health Maintenance and Screening')
;

create table encounter(
  encounter_id bigserial primary key,
  encounter_status_id int not null references encounter_status(encounter_status_id),
  encounter_class_id int not null references encounter_class(encounter_class_id),
  encounter_reason_id int not null references encounter_reason(encounter_reason_id),

  appointment_id int not null references appointment(appointment_id),

  is_signed bool not null default false,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc'),

  unique (encounter_id, appointment_id)
)
;

-- NOTE: Typical Search. Either by Prefix (encounter_status_id) or by "status = Completed and not is_signed" Full Index.
create index if not exists encounter_status_id on encounter(encounter_status_id, is_signed);
-- NOTE: Typical JOIN ON Appointment.
create index if not exists encounter_appointment_id on encounter(appointment_id);

create table encounter_meat_code_set(
  encounter_meat_code_set_id bigserial primary key,
  encounter_meat_code_set_name text not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

insert into
  encounter_meat_code_set(encounter_meat_code_set_id, encounter_meat_code_set_name)
values
  -- NOTE: Diagnosis.
  (1, 'ICD'),
  -- NOTE: Prescription.
  (2, 'NDC'),
  -- NOTE: Procedure.
  (3, 'CPT')
;

-- NOTE: EAV (Entity-Attribute-Value) Pattern.
create table encounter_assessment(
  encounter_id bigint not null references encounter(encounter_id),
  line_item_n bigint not null,

  -- NOTE: Assessment section may only include
  encounter_assessment_code_set_id bigint not null
    check (encounter_assessment_code_set_id = 1)
    references encounter_meat_code_set(encounter_meat_code_set_id),
  encounter_assessment_code_set_value text not null,
  encounter_assessment_code_set_note text not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

-- NOTE: PK Is Enough for Typical Search.

-- NOTE: EAV (Entity-Attribute-Value) Pattern.
-- NOTE: 1 Diagnosis from Assessment -> 0..N Treatments.
create table encounter_treatment(
  encounter_id bigint not null references encounter(encounter_id),
  line_item_n bigint not null,

  -- NOTE: Treatment section shouldn't include the diagnosis.
  encounter_treatment_code_set_id bigint not null
    check (encounter_treatment_code_set_id != 1)
    references encounter_meat_code_set(encounter_meat_code_set_id),
  encounter_treatment_code_set_value text not null,
  encounter_treatment_code_set_note text not null,

  -- NOTE: Tech Columns.
  is_active bool not null default true,
  created_ts timestamp not null default (now() at time zone 'utc'),
  updated_ts timestamp not null default (now() at time zone 'utc')
)
;

-- NOTE: PK Is Enough for Typical Search.
