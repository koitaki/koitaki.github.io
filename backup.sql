PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO "django_migrations" VALUES(1,'contenttypes','0001_initial','2016-03-28 04:28:03.879287');
INSERT INTO "django_migrations" VALUES(2,'auth','0001_initial','2016-03-28 04:28:04.129853');
INSERT INTO "django_migrations" VALUES(3,'admin','0001_initial','2016-03-28 04:28:04.373617');
INSERT INTO "django_migrations" VALUES(4,'admin','0002_logentry_remove_auto_add','2016-03-28 04:28:04.640739');
INSERT INTO "django_migrations" VALUES(5,'contenttypes','0002_remove_content_type_name','2016-03-28 04:28:04.977178');
INSERT INTO "django_migrations" VALUES(6,'auth','0002_alter_permission_name_max_length','2016-03-28 04:28:05.212505');
INSERT INTO "django_migrations" VALUES(7,'auth','0003_alter_user_email_max_length','2016-03-28 04:28:05.489619');
INSERT INTO "django_migrations" VALUES(8,'auth','0004_alter_user_username_opts','2016-03-28 04:28:05.816334');
INSERT INTO "django_migrations" VALUES(9,'auth','0005_alter_user_last_login_null','2016-03-28 04:28:06.067685');
INSERT INTO "django_migrations" VALUES(10,'auth','0006_require_contenttypes_0002','2016-03-28 04:28:06.185695');
INSERT INTO "django_migrations" VALUES(11,'auth','0007_alter_validators_add_error_messages','2016-03-28 04:28:06.453431');
INSERT INTO "django_migrations" VALUES(12,'sessions','0001_initial','2016-03-28 04:28:06.680548');
INSERT INTO "django_migrations" VALUES(13,'email_collector','0001_initial','2016-03-28 04:34:08.842201');
INSERT INTO "django_migrations" VALUES(14,'email_collector','0002_auto_20160328_0510','2016-03-28 05:10:24.193991');
INSERT INTO "django_migrations" VALUES(15,'email_collector','0003_auto_20160328_1132','2016-03-28 11:32:42.753542');
INSERT INTO "django_migrations" VALUES(16,'email_collector','0004_prospectiveuser_ip_address','2016-03-28 12:52:37.932974');
INSERT INTO "django_migrations" VALUES(17,'email_collector','0005_auto_20160328_1328','2016-03-28 13:28:47.347434');
INSERT INTO "django_migrations" VALUES(18,'email_collector','0006_resort_main_picture','2016-03-30 03:14:44.962769');
INSERT INTO "django_migrations" VALUES(19,'email_collector','0007_resort_thumbnail_picture','2016-03-30 03:17:42.860501');
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
INSERT INTO "django_admin_log" VALUES(1,'1','Country object',1,'Added.',7,1,'2016-03-28 04:36:41.767538');
INSERT INTO "django_admin_log" VALUES(2,'1','Region object',1,'Added.',8,1,'2016-03-28 04:37:39.610778');
INSERT INTO "django_admin_log" VALUES(3,'1','Location object',1,'Added.',9,1,'2016-03-28 04:40:27.816752');
INSERT INTO "django_admin_log" VALUES(4,'1','Resort object',1,'Added.',11,1,'2016-03-28 04:44:02.624132');
INSERT INTO "django_admin_log" VALUES(5,'1','ProspectiveUser object',1,'Added.',10,1,'2016-03-28 05:22:28.246148');
INSERT INTO "django_admin_log" VALUES(6,'1','Country object',2,'No fields changed.',7,1,'2016-03-28 05:27:13.107397');
INSERT INTO "django_admin_log" VALUES(7,'2','Thredbo',1,'Added.',9,1,'2016-03-28 05:56:24.913455');
INSERT INTO "django_admin_log" VALUES(8,'2','Thredbo Alpine Village',1,'Added.',11,1,'2016-03-28 05:58:56.722518');
INSERT INTO "django_admin_log" VALUES(9,'2','Thredbo',2,'Changed description.',9,1,'2016-03-28 05:59:22.740047');
INSERT INTO "django_admin_log" VALUES(10,'2','Thredbo Alpine Village',2,'No fields changed.',11,1,'2016-03-28 06:01:20.694659');
INSERT INTO "django_admin_log" VALUES(11,'2','Thredbo',2,'Changed description.',9,1,'2016-03-28 06:04:46.880350');
INSERT INTO "django_admin_log" VALUES(12,'2','Thredbo Alpine Village',2,'Changed description.',11,1,'2016-03-28 06:06:22.978243');
INSERT INTO "django_admin_log" VALUES(13,'2','Thredbo Alpine Village',2,'Changed longitude and latitude.',11,1,'2016-03-28 06:07:49.408451');
INSERT INTO "django_admin_log" VALUES(14,'3','Charlotte Pass',1,'Added.',9,1,'2016-03-28 06:15:00.989434');
INSERT INTO "django_admin_log" VALUES(15,'3','Charlotte Pass',1,'Added.',11,1,'2016-03-28 06:15:10.395623');
INSERT INTO "django_admin_log" VALUES(16,'1','Snowy Mountains',2,'Changed description.',8,1,'2016-03-28 06:18:41.038536');
INSERT INTO "django_admin_log" VALUES(17,'2','Tasmanian Highlands',1,'Added.',8,1,'2016-03-28 06:27:02.538561');
INSERT INTO "django_admin_log" VALUES(18,'1','Snowy Mountains',2,'Changed description.',8,1,'2016-03-28 06:27:15.614919');
INSERT INTO "django_admin_log" VALUES(19,'2','Ben Lomond Mountain',2,'Changed name, slug and description.',8,1,'2016-03-28 06:36:55.968835');
INSERT INTO "django_admin_log" VALUES(20,'3','Mount Mawson',1,'Added.',8,1,'2016-03-28 06:37:55.985638');
INSERT INTO "django_admin_log" VALUES(21,'2','Ben Lomond',2,'Changed name.',8,1,'2016-03-28 06:38:18.358299');
INSERT INTO "django_admin_log" VALUES(22,'3','Charlotte Pass',2,'Changed main_picture.',11,1,'2016-03-30 03:16:20.800426');
INSERT INTO "django_admin_log" VALUES(23,'2','Thredbo Alpine Village',2,'Changed main_picture.',11,1,'2016-03-30 03:16:32.451583');
INSERT INTO "django_admin_log" VALUES(24,'1','Perisher',2,'Changed main_picture.',11,1,'2016-03-30 03:16:42.812888');
INSERT INTO "django_admin_log" VALUES(25,'3','Charlotte Pass',2,'Changed thumbnail_picture.',11,1,'2016-03-30 03:19:11.814292');
INSERT INTO "django_admin_log" VALUES(26,'2','Thredbo Alpine Village',2,'Changed thumbnail_picture.',11,1,'2016-03-30 03:19:26.434289');
INSERT INTO "django_admin_log" VALUES(27,'1','Perisher',2,'Changed thumbnail_picture.',11,1,'2016-03-30 03:19:37.539459');
INSERT INTO "django_admin_log" VALUES(28,'2','Thredbo Alpine Village',2,'Changed longitude and latitude.',11,1,'2016-03-30 08:05:30.685752');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO "django_content_type" VALUES(1,'admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'auth','permission');
INSERT INTO "django_content_type" VALUES(3,'auth','group');
INSERT INTO "django_content_type" VALUES(4,'auth','user');
INSERT INTO "django_content_type" VALUES(5,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'sessions','session');
INSERT INTO "django_content_type" VALUES(7,'email_collector','country');
INSERT INTO "django_content_type" VALUES(8,'email_collector','region');
INSERT INTO "django_content_type" VALUES(9,'email_collector','location');
INSERT INTO "django_content_type" VALUES(10,'email_collector','prospectiveuser');
INSERT INTO "django_content_type" VALUES(11,'email_collector','resort');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO "auth_permission" VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES(4,2,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES(5,2,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES(6,2,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES(7,3,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES(8,3,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES(9,3,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES(10,4,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES(11,4,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES(12,4,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES(13,5,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES(14,5,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES(15,5,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES(16,6,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES(17,6,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES(18,6,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES(19,7,'add_country','Can add country');
INSERT INTO "auth_permission" VALUES(20,7,'change_country','Can change country');
INSERT INTO "auth_permission" VALUES(21,7,'delete_country','Can delete country');
INSERT INTO "auth_permission" VALUES(22,8,'add_region','Can add region');
INSERT INTO "auth_permission" VALUES(23,8,'change_region','Can change region');
INSERT INTO "auth_permission" VALUES(24,8,'delete_region','Can delete region');
INSERT INTO "auth_permission" VALUES(25,9,'add_location','Can add location');
INSERT INTO "auth_permission" VALUES(26,9,'change_location','Can change location');
INSERT INTO "auth_permission" VALUES(27,9,'delete_location','Can delete location');
INSERT INTO "auth_permission" VALUES(28,10,'add_prospectiveuser','Can add prospective user');
INSERT INTO "auth_permission" VALUES(29,10,'change_prospectiveuser','Can change prospective user');
INSERT INTO "auth_permission" VALUES(30,10,'delete_prospectiveuser','Can delete prospective user');
INSERT INTO "auth_permission" VALUES(31,11,'add_resort','Can add resort');
INSERT INTO "auth_permission" VALUES(32,11,'change_resort','Can change resort');
INSERT INTO "auth_permission" VALUES(33,11,'delete_resort','Can delete resort');
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(30) NOT NULL UNIQUE);
INSERT INTO "auth_user" VALUES(1,'pbkdf2_sha256$24000$FabTJ9nV2FoO$91a8vGSe9xxWhXMn2s38ePpSdQINF6x85LY6YwH5hok=','2016-03-30 16:00:52.633140',1,'','','admin@ski.deals',1,1,'2016-03-28 04:35:04.654940','chris');
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO "django_session" VALUES('3yumzvej97yiyakqyaomygac2liqbs3r','ZmNjYzRiNjZhYzEyNWMzNzU4Zjk0Yjg3NDFlNzY3YjMxOTVjZWMzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIyNjJmMzcyMTkxOWZhODdmNmQ5ZWRjOTg0YWFiNDQzYzc4NmIwNjBiIn0=','2016-04-11 04:35:14.012453');
INSERT INTO "django_session" VALUES('fsz1dv5wpx4zgrxifhoc269dpnliao3j','ZTg4NmRjYjhmNWRlOTNjMDlmNGM4N2IyNTg4ZjA4ZmIwMmQ4ODFiOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjYyZjM3MjE5MTlmYTg3ZjZkOWVkYzk4NGFhYjQ0M2M3ODZiMDYwYiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-04-13 03:15:53.859320');
INSERT INTO "django_session" VALUES('rhfnftle1zqd0ypth8szsf3d3du2fapw','ZmNjYzRiNjZhYzEyNWMzNzU4Zjk0Yjg3NDFlNzY3YjMxOTVjZWMzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIyNjJmMzcyMTkxOWZhODdmNmQ5ZWRjOTg0YWFiNDQzYzc4NmIwNjBiIn0=','2016-04-13 16:00:52.785132');
CREATE TABLE "email_collector_country" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "slug" varchar(100) NOT NULL, "description" text NULL, "timestamp" datetime NOT NULL, "updated" datetime NOT NULL);
INSERT INTO "email_collector_country" VALUES(1,'Australia','australia','Australia''s ski regions lie on the Great Dividing Range, the main mountain range running along the east coast of Australia.  The terrain is relatively flat, lending itself more to cross country & ski touring.  Nonetheless there are a number of quite popular downhill ski resorts, mostly in the region known as the Snowy Mountains.  These are in the three states of New South Wales, Victoria and Tasmania. 

In New South Wales, the main ski fields are Perisher and Thredbo, both about three hours drive from the capital city Sydney, and about two hours from Canberra (the Australian capital city).

In Victoria, the main ski resorts are Falls Creek, Mt Hotham and Mt Buller - all about an hours drive from the capital city Melbourne.

In Tasmania, the main ski fields are Ben Lomond Ski Village and Mt Mawson, both close the city of Launceston.','2016-03-28 04:36:41.762012','2016-03-28 05:27:13.099526');
CREATE TABLE "email_collector_region" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "slug" varchar(100) NOT NULL, "description" text NULL, "timestamp" datetime NOT NULL, "updated" datetime NOT NULL, "country_id" integer NOT NULL REFERENCES "email_collector_country" ("id"));
INSERT INTO "email_collector_region" VALUES(1,'Snowy Mountains','snowy-mountains','The Snowy Mountains, known informally as "The Snowies", is the highest mountain range in Australia. It contains the Australian mainland''s highest mountain, Mount Kosciuszko (2,228 m or 7,310 ft). The range also contains the five highest peaks on the Australian mainland (including Mount Kosciuszko), all of which are above 2,100 m (6,890 ft). They are located in southern New South Wales and are part of the larger Australian Alps and Great Dividing Range. Unusual for Australia, the mountain range experiences large natural snowfalls every winter. Snow normally falls the most during June, July and early August. 

Kosciuszko National Park is also the location of the downhill ski slopes closest to Canberra and Sydney, containing the Thredbo, Charlotte Pass, and Perisher ski resorts.

The area was first explored by Europeans in 1835, and in 1840, Edmund Strzelecki ascended Mount Kosciuszko and named it after the Polish patriot. High country stockmen followed who used the Snowy Mountains for grazing during the summer months. Banjo Paterson''s famous poem The Man From Snowy River recalls this era. The cattle graziers have left a legacy of mountain huts scattered across the area. Today these huts are maintained by the National Parks and Wildlife Service or volunteer organisations like the Kosciuszko Huts Association.

In the 19th century gold was mined on the high plains near Kiandra. At its height this community had a population of about 4,000 people, and ran 14 hotels. Since the last resident left in 1974, Kiandra has become a ghost town of ruins and abandoned diggings.[4]

The Kosciuszko National Park came into existence as the National Chase Snowy Mountains on 5 December 1906. In 1944 this became the Kosciuszko State Park, and then the Kosciuszko National Park in 1967.[5]

Recreational skiing began at Kiandra in the 1860s and experienced a boom in the 20th century following the commencement of the construction of the Snowy Mountains Hydro-Electric Scheme between 1949 and 1976 which brought many European workers to the district and opened up access to the ranges.','2016-03-28 04:37:39.603943','2016-03-28 06:27:15.608454',1);
INSERT INTO "email_collector_region" VALUES(2,'Ben Lomond','ben-lomond-mountain','Ben Lomond is a mountain in the north east of Tasmania, Australia, within the Ben Lomond National Park. The mountain is composed of a central massif with an extensive plateau above 1,200 metres (3,900 ft) and high outlier peaks projecting from the mountain. The highest feature on the plateau is the unimposing summit of Legges Tor, at 1572 m, on the northern aspect of the plateau. The southern end of the plateau is dominated by Stacks Bluff, 1,527 metres (5,010 ft), which is an imposing feature that drops away to a cliffline 600 metres (2,000 ft) above the surrounding foothills. The prominent outlier peaks of Ragged Jack (1,369 metres (4,491 ft)), Mensa Moor (1,358 metres (4,455 ft)) and Tower Hill (1,122 metres (3,681 ft)) surround the plateau.[2]','2016-03-28 06:27:02.529819','2016-03-28 06:38:18.352453',1);
INSERT INTO "email_collector_region" VALUES(3,'Mount Mawson','mount-mawson-region','Mount Mawson is situated within the Mount Field National Park in Tasmania Australia. The mountain is located 89 kilometres north west of Hobart and 232 kilometres from Launceston by road. Mount Mawson''s summit rises to 1,320 metres above sea level slightly lower than the 1,460 meters Ben Lomond ski-field in northern Tasmania.','2016-03-28 06:37:55.981566','2016-03-28 06:37:55.981626',1);
CREATE TABLE "email_collector_location" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "slug" varchar(100) NOT NULL, "description" text NULL, "timestamp" datetime NOT NULL, "updated" datetime NOT NULL, "region_id" integer NOT NULL REFERENCES "email_collector_region" ("id"));
INSERT INTO "email_collector_location" VALUES(1,'Perisher','perisher','Perisher is located in the NSW area of the Snowy Mountains.   The resort was known as Perisher Blue until 2009 upon the almagamation of four villages, Perisher Valley, Smiggin Holes, Guthega, and Blue Cow.  Their associated ski fields covering approximately 12 square kilometres (5 sq mi), with the base elevation at 1,720 metres (5,640 ft) AHD, and the summit elevation of 2,054 metres (6,739 ft) at the top of Mount Perisher.','2016-03-28 04:40:27.810810','2016-03-28 04:40:27.810870',1);
INSERT INTO "email_collector_location" VALUES(2,'Thredbo','thredbo','Thredbo is a village and ski resort about 390km southwest of Sydney, in the Snowy Mountains of New South Wales, Australia.  It is about 500 kilometres south of Sydney, accessible by the Alpine Way via Cooma, Berridale, and Jindabyne. Jindabyne which is 30km away, has a population of around 4,400.

The village is built in the valley of the Thredbo River, also known as the Crackenback River, at the foot of the Ramshead Range.  Near to Thredbo is Australia''s largest mountain, Mount Kosciuszko (2219m).','2016-03-28 05:56:24.905855','2016-03-28 06:04:46.873045',1);
INSERT INTO "email_collector_location" VALUES(3,'Charlotte Pass','charlotte-pass','Charlotte Pass is situated in the heart of the NSW Snowy Mountains, about 10km away from Australia''s highest mountain, Mount Kosciuszko (2,228m).','2016-03-28 06:15:00.984812','2016-03-28 06:15:00.984864',1);
CREATE TABLE "email_collector_prospectiveuser" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "timestamp" datetime NOT NULL, "updated" datetime NOT NULL, "ip_address" char(39) NOT NULL, "email" varchar(254) NOT NULL UNIQUE);
INSERT INTO "email_collector_prospectiveuser" VALUES(1,'koitaki','2016-03-28 05:22:28.241272','2016-03-28 05:22:28.241328','0.0.0.0','koitaki@gmail.com');
INSERT INTO "email_collector_prospectiveuser" VALUES(9,'richie','2016-03-28 11:11:36.626096','2016-03-28 11:11:36.626172','0.0.0.0','richie@aol.com');
INSERT INTO "email_collector_prospectiveuser" VALUES(10,'barry','2016-03-28 11:21:15.802575','2016-03-28 11:21:15.802734','0.0.0.0','barry@judbar.com');
INSERT INTO "email_collector_prospectiveuser" VALUES(11,'joe','2016-03-28 11:42:23.223389','2016-03-28 11:42:23.223553','0.0.0.0','joe@aol.com');
INSERT INTO "email_collector_prospectiveuser" VALUES(12,'jack','2016-03-28 11:44:37.592728','2016-03-28 11:44:37.592844','0.0.0.0','jack@aol.com');
INSERT INTO "email_collector_prospectiveuser" VALUES(14,'luis','2016-03-28 12:22:12.779804','2016-03-28 12:22:12.779936','0.0.0.0','luis@aol.com');
INSERT INTO "email_collector_prospectiveuser" VALUES(17,'woot','2016-03-28 13:19:50.421503','2016-03-28 13:22:13.513109','127.0.0.1','woot@it.deal');
INSERT INTO "email_collector_prospectiveuser" VALUES(18,'pommy','2016-03-28 13:22:50.377495','2016-03-28 13:22:50.520553','127.0.0.1','pommy@it.deal');
INSERT INTO "email_collector_prospectiveuser" VALUES(20,'patch','2016-03-28 13:26:34.772316','2016-03-28 13:26:34.772443','127.0.0.1','patch@it.deal');
CREATE TABLE "email_collector_resort" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "slug" varchar(100) NOT NULL, "description" text NULL, "longitude" decimal NOT NULL, "latitude" decimal NOT NULL, "timestamp" datetime NOT NULL, "updated" datetime NOT NULL, "location_id" integer NOT NULL REFERENCES "email_collector_location" ("id"), "main_picture" varchar(100) NULL, "thumbnail_picture" varchar(100) NULL);
INSERT INTO "email_collector_resort" VALUES(1,'Perisher','perisher','Perisher is Australia''s largest ski resort, and also the largest in the Southern Hemisphere. The resort has some 250 snow guns 4.4 square kilometers (1.7 sq mi) of this area to artificially supplement the natural snowfall. Perisher was acquired by Vail Resorts, USA on March 30, 2015 for a sum of approximately AU$177 million.',148.3864,-36.4093,'2016-03-28 04:44:02.619015','2016-03-30 03:19:37.533460',1,'australia/perisher.jpg','australia/perisher_560x396.jpg');
INSERT INTO "email_collector_resort" VALUES(2,'Thredbo Alpine Village','thredbo','Thredbo is about 1450m above sea level, and during peak snow conditions, Thredbo has the longest ski runs in Australia. In summer, Thredbo is a hiking and summer sport destination, including rock climbing and abseiling, fishing and cross-country cycling, and hosts a blues music festival.  The town contains 4,000 tourist beds, but has a permanent population of only about 500 people.',148.31117,-36.49958,'2016-03-28 05:58:56.716954','2016-03-30 08:05:30.678433',2,'australia/thredbo.jpg','australia/thredbo_560x396.jpg');
INSERT INTO "email_collector_resort" VALUES(3,'Charlotte Pass','charlotte-pass','At 1765 metres, Charlotte Pass is Australia''s highest resort, and consequently receives some of the most consistent snowfalls delivering the best quality natural snow. The resort offers ski-in ski-out accommodation and facilities. Completely snowbound at the top of Australia, Charlotte Pass is only accessible by Oversnow Transport.  Whether you’re a beginner testing out your snow legs on Easy Starter, an intermediate carving up Kosi Coaster, an experienced skier looking for adventure on Sidewinder or a hardcore rider after an adrenalin rush at Guthrie’s Chutes.',148.3388,-36.431,'2016-03-28 06:15:10.388262','2016-03-30 03:19:11.804254',3,'australia/charlotte-pass.jpg','australia/charlotte-pass_560x396.jpg');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('django_migrations',19);
INSERT INTO "sqlite_sequence" VALUES('django_admin_log',28);
INSERT INTO "sqlite_sequence" VALUES('django_content_type',11);
INSERT INTO "sqlite_sequence" VALUES('auth_permission',33);
INSERT INTO "sqlite_sequence" VALUES('auth_user',1);
INSERT INTO "sqlite_sequence" VALUES('email_collector_location',3);
INSERT INTO "sqlite_sequence" VALUES('email_collector_country',1);
INSERT INTO "sqlite_sequence" VALUES('email_collector_region',3);
INSERT INTO "sqlite_sequence" VALUES('email_collector_prospectiveuser',20);
INSERT INTO "sqlite_sequence" VALUES('email_collector_resort',3);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
CREATE INDEX "email_collector_country_2dbcba41" ON "email_collector_country" ("slug");
CREATE INDEX "email_collector_region_2dbcba41" ON "email_collector_region" ("slug");
CREATE INDEX "email_collector_region_93bfec8a" ON "email_collector_region" ("country_id");
CREATE INDEX "email_collector_location_2dbcba41" ON "email_collector_location" ("slug");
CREATE INDEX "email_collector_location_0f442f96" ON "email_collector_location" ("region_id");
CREATE INDEX "email_collector_resort_2dbcba41" ON "email_collector_resort" ("slug");
CREATE INDEX "email_collector_resort_e274a5da" ON "email_collector_resort" ("location_id");
COMMIT;
