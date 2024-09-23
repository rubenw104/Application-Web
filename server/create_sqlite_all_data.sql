BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"email"	TEXT,
	"name"	TEXT,
	"salt"	TEXT,
	"password"	TEXT,
	"locale"	INTEGER,
	"regionale"	INTEGER,
	"internazionale" INTEGER
);
CREATE TABLE IF NOT EXISTS "posti" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"F"	INTEGER,
	"P"	TEXT,
	"Aereo"	TEXT,
    "Occupato" INTEGER,
	"idUtente" INTEGER
);

INSERT INTO "users" VALUES (1,'enrico@test.com','Enrico', '123348dusd437840', 'bddfdc9b092918a7f65297b4ba534dfe306ed4d5d72708349ddadb99b1c526fb', 0,0,0); /* password='pwd' */
INSERT INTO "users" VALUES (2,'luigi@test.com','Luigi',   '7732qweydg3sd637', '498a8d846eb4efebffc56fc0de16d18905714cf12edf548b8ed7a4afca0f7c1c', 0,0,0);
INSERT INTO "users" VALUES (3,'alice@test.com','Alice',   'wgb32sge2sh7hse7', '09a79c91c41073e7372774fcb114b492b2b42f5e948c61d775ad4f628df0e160', 0,0,0);
INSERT INTO "users" VALUES (4,'harry@test.com','Harry',   'safd6523tdwt82et', '330f9bd2d0472e3ca8f11d147d01ea210954425a17573d0f6b8240ed503959f8', 0,0,0);
INSERT INTO "users" VALUES (5,'carol@test.com','Carol',   'ad37JHUW38wj2833', 'bbbcbac88d988bce98cc13e4c9308306d621d9e278ca62aaee2d156f898a41dd', 0,0,0);
INSERT INTO "posti" VALUES (1,1,'A','locale',0,0);
INSERT INTO "posti" VALUES (2,1,'B','locale',0,0);
INSERT INTO "posti" VALUES (3,1,'C','locale',0,0);
INSERT INTO "posti" VALUES (4,1,'D','locale',0,0);
INSERT INTO "posti" VALUES (5,2,'A','locale',0,0);
INSERT INTO "posti" VALUES (6,2,'B','locale',0,0);
INSERT INTO "posti" VALUES (7,2,'C','locale',0,0); 
INSERT INTO "posti" VALUES (8,2,'D','locale',0,0); 
INSERT INTO "posti" VALUES (9,3,'A','locale',0,0); 
INSERT INTO "posti" VALUES (10,3,'B','locale',0,0);
INSERT INTO "posti" VALUES (11,3,'C','locale',0,0);
INSERT INTO "posti" VALUES (12,3,'D','locale',0,0);
INSERT INTO "posti" VALUES (13,4,'A','locale',0,0);
INSERT INTO "posti" VALUES (14,4,'B','locale',0,0);
INSERT INTO "posti" VALUES (15,4,'C','locale',0,0);
INSERT INTO "posti" VALUES (16,4,'D','locale',0,0);
INSERT INTO "posti" VALUES (17,5,'A','locale',0,0);
INSERT INTO "posti" VALUES (18,5,'B','locale',0,0);
INSERT INTO "posti" VALUES (19,5,'C','locale',0,0);
INSERT INTO "posti" VALUES (20,5,'D','locale',0,0);
INSERT INTO "posti" VALUES (21,6,'A','locale',0,0);
INSERT INTO "posti" VALUES (22,6,'B','locale',0,0);
INSERT INTO "posti" VALUES (23,6,'C','locale',0,0);
INSERT INTO "posti" VALUES (24,6,'D','locale',0,0);
INSERT INTO "posti" VALUES (25,7,'A','locale',0,0);
INSERT INTO "posti" VALUES (26,7,'B','locale',0,0);
INSERT INTO "posti" VALUES (27,7,'C','locale',0,0);
INSERT INTO "posti" VALUES (28,7,'D','locale',0,0);
INSERT INTO "posti" VALUES (29,8,'A','locale',0,0);
INSERT INTO "posti" VALUES (30,8,'B','locale',0,0);
INSERT INTO "posti" VALUES (31,8,'C','locale',0,0);
INSERT INTO "posti" VALUES (32,8,'D','locale',0,0);
INSERT INTO "posti" VALUES (33,9,'A','locale',0,0);
INSERT INTO "posti" VALUES (34,9,'B','locale',0,0);
INSERT INTO "posti" VALUES (35,9,'C','locale',0,0);
INSERT INTO "posti" VALUES (36,9,'D','locale',0,0);
INSERT INTO "posti" VALUES (37,10,'A','locale',0,0);
INSERT INTO "posti" VALUES (38,10,'B','locale',0,0);
INSERT INTO "posti" VALUES (39,10,'C','locale',0,0);
INSERT INTO "posti" VALUES (40,10,'D','locale',0,0);
INSERT INTO "posti" VALUES (41,11,'A','locale',0,0);
INSERT INTO "posti" VALUES (42,11,'B','locale',0,0);
INSERT INTO "posti" VALUES (43,11,'C','locale',0,0);
INSERT INTO "posti" VALUES (44,11,'D','locale',0,0);
INSERT INTO "posti" VALUES (45,12,'A','locale',0,0);
INSERT INTO "posti" VALUES (46,12,'B','locale',0,0);
INSERT INTO "posti" VALUES (47,12,'C','locale',0,0);
INSERT INTO "posti" VALUES (48,12,'D','locale',0,0);
INSERT INTO "posti" VALUES (49,13,'A','locale',0,0);
INSERT INTO "posti" VALUES (50,13,'B','locale',0,0);
INSERT INTO "posti" VALUES (51,13,'C','locale',0,0);
INSERT INTO "posti" VALUES (52,13,'D','locale',0,0);
INSERT INTO "posti" VALUES (53,14,'A','locale',0,0);
INSERT INTO "posti" VALUES (54,14,'B','locale',0,0);
INSERT INTO "posti" VALUES (55,14,'C','locale',0,0);
INSERT INTO "posti" VALUES (56,14,'D','locale',0,0);
INSERT INTO "posti" VALUES (57,15,'A','locale',0,0);
INSERT INTO "posti" VALUES (58,15,'B','locale',0,0);
INSERT INTO "posti" VALUES (59,15,'C','locale',0,0);
INSERT INTO "posti" VALUES (60,15,'D','locale',0,0);
INSERT INTO "posti" VALUES (61,1,'A','regionale',0,0);
INSERT INTO "posti" VALUES (62,1,'B','regionale',0,0);
INSERT INTO "posti" VALUES (63,1,'C','regionale',0,0);
INSERT INTO "posti" VALUES (64,1,'D','regionale',0,0);
INSERT INTO "posti" VALUES (65,1,'E','regionale',0,0);
INSERT INTO "posti" VALUES (66,2,'A','regionale',0,0);
INSERT INTO "posti" VALUES (67,2,'B','regionale',0,0);
INSERT INTO "posti" VALUES (68,2,'C','regionale',0,0);
INSERT INTO "posti" VALUES (69,2,'D','regionale',0,0);
INSERT INTO "posti" VALUES (70,2,'E','regionale',0,0);
INSERT INTO "posti" VALUES (71,3,'A','regionale',0,0);
INSERT INTO "posti" VALUES (72,3,'B','regionale',0,0);
INSERT INTO "posti" VALUES (73,3,'C','regionale',0,0);
INSERT INTO "posti" VALUES (74,3,'D','regionale',0,0);
INSERT INTO "posti" VALUES (75,3,'E','regionale',0,0);
INSERT INTO "posti" VALUES (76,4,'A','regionale',0,0);
INSERT INTO "posti" VALUES (77,4,'B','regionale',0,0);
INSERT INTO "posti" VALUES (78,4,'C','regionale',0,0);
INSERT INTO "posti" VALUES (79,4,'D','regionale',0,0);
INSERT INTO "posti" VALUES (80,4,'E','regionale',0,0);
INSERT INTO "posti" VALUES (81,5,'A','regionale',0,0);
INSERT INTO "posti" VALUES (82,5,'B','regionale',0,0);
INSERT INTO "posti" VALUES (83,5,'C','regionale',0,0);
INSERT INTO "posti" VALUES (84,5,'D','regionale',0,0);
INSERT INTO "posti" VALUES (85,5,'E','regionale',0,0);
INSERT INTO "posti" VALUES (86,6,'A','regionale',0,0);
INSERT INTO "posti" VALUES (87,6,'B','regionale',0,0);
INSERT INTO "posti" VALUES (88,6,'C','regionale',0,0);
INSERT INTO "posti" VALUES (89,6,'D','regionale',0,0);
INSERT INTO "posti" VALUES (90,6,'E','regionale',0,0);
INSERT INTO "posti" VALUES (91,7,'A','regionale',0,0);
INSERT INTO "posti" VALUES (92,7,'B','regionale',0,0);
INSERT INTO "posti" VALUES (93,7,'C','regionale',0,0);
INSERT INTO "posti" VALUES (94,7,'D','regionale',0,0);
INSERT INTO "posti" VALUES (95,7,'E','regionale',0,0);
INSERT INTO "posti" VALUES (96,8,'A','regionale',0,0);
INSERT INTO "posti" VALUES (97,8,'B','regionale',0,0);
INSERT INTO "posti" VALUES (98,8,'C','regionale',0,0);
INSERT INTO "posti" VALUES (99,8,'D','regionale',0,0);
INSERT INTO "posti" VALUES (100,8,'E','regionale',0,0);
INSERT INTO "posti" VALUES (101,9,'A','regionale',0,0);
INSERT INTO "posti" VALUES (102,9,'B','regionale',0,0);
INSERT INTO "posti" VALUES (103,9,'C','regionale',0,0);
INSERT INTO "posti" VALUES (104,9,'D','regionale',0,0);
INSERT INTO "posti" VALUES (105,9,'E','regionale',0,0);
INSERT INTO "posti" VALUES (106,10,'A','regionale',0,0);
INSERT INTO "posti" VALUES (107,10,'B','regionale',0,0);
INSERT INTO "posti" VALUES (108,10,'C','regionale',0,0);
INSERT INTO "posti" VALUES (109,10,'D','regionale',0,0);
INSERT INTO "posti" VALUES (110,10,'E','regionale',0,0);
INSERT INTO "posti" VALUES (111,11,'A','regionale',0,0);
INSERT INTO "posti" VALUES (112,11,'B','regionale',0,0);
INSERT INTO "posti" VALUES (113,11,'C','regionale',0,0);
INSERT INTO "posti" VALUES (114,11,'D','regionale',0,0);
INSERT INTO "posti" VALUES (115,11,'E','regionale',0,0);
INSERT INTO "posti" VALUES (116,12,'A','regionale',0,0);
INSERT INTO "posti" VALUES (117,12,'B','regionale',0,0);
INSERT INTO "posti" VALUES (118,12,'C','regionale',0,0);
INSERT INTO "posti" VALUES (119,12,'D','regionale',0,0);
INSERT INTO "posti" VALUES (120,12,'E','regionale',0,0);
INSERT INTO "posti" VALUES (121,13,'A','regionale',0,0);
INSERT INTO "posti" VALUES (122,13,'B','regionale',0,0);
INSERT INTO "posti" VALUES (123,13,'C','regionale',0,0);
INSERT INTO "posti" VALUES (124,13,'D','regionale',0,0);
INSERT INTO "posti" VALUES (125,13,'E','regionale',0,0);
INSERT INTO "posti" VALUES (126,14,'A','regionale',0,0);
INSERT INTO "posti" VALUES (127,14,'B','regionale',0,0);
INSERT INTO "posti" VALUES (128,14,'C','regionale',0,0);
INSERT INTO "posti" VALUES (129,14,'D','regionale',0,0);
INSERT INTO "posti" VALUES (130,14,'E','regionale',0,0);
INSERT INTO "posti" VALUES (131,15,'A','regionale',0,0);
INSERT INTO "posti" VALUES (132,15,'B','regionale',0,0);
INSERT INTO "posti" VALUES (133,15,'C','regionale',0,0);
INSERT INTO "posti" VALUES (134,15,'D','regionale',0,0);
INSERT INTO "posti" VALUES (135,15,'E','regionale',0,0);
INSERT INTO "posti" VALUES (136,16,'A','regionale',0,0);
INSERT INTO "posti" VALUES (137,16,'B','regionale',0,0);
INSERT INTO "posti" VALUES (138,16,'C','regionale',0,0);
INSERT INTO "posti" VALUES (139,16,'D','regionale',0,0);
INSERT INTO "posti" VALUES (140,16,'E','regionale',0,0);
INSERT INTO "posti" VALUES (141,17,'A','regionale',0,0);
INSERT INTO "posti" VALUES (142,17,'B','regionale',0,0);
INSERT INTO "posti" VALUES (143,17,'C','regionale',0,0);
INSERT INTO "posti" VALUES (144,17,'D','regionale',0,0);
INSERT INTO "posti" VALUES (145,17,'E','regionale',0,0);
INSERT INTO "posti" VALUES (146,18,'A','regionale',0,0);
INSERT INTO "posti" VALUES (147,18,'B','regionale',0,0);
INSERT INTO "posti" VALUES (148,18,'C','regionale',0,0);
INSERT INTO "posti" VALUES (149,18,'D','regionale',0,0);
INSERT INTO "posti" VALUES (150,18,'E','regionale',0,0);
INSERT INTO "posti" VALUES (151,19,'A','regionale',0,0);
INSERT INTO "posti" VALUES (152,19,'B','regionale',0,0);
INSERT INTO "posti" VALUES (153,19,'C','regionale',0,0);
INSERT INTO "posti" VALUES (154,19,'D','regionale',0,0);
INSERT INTO "posti" VALUES (155,19,'E','regionale',0,0);
INSERT INTO "posti" VALUES (156,20,'A','regionale',0,0);
INSERT INTO "posti" VALUES (157,20,'B','regionale',0,0);
INSERT INTO "posti" VALUES (158,20,'C','regionale',0,0);
INSERT INTO "posti" VALUES (159,20,'D','regionale',0,0);
INSERT INTO "posti" VALUES (160,20,'E','regionale',0,0);
INSERT INTO "posti" VALUES (161,1,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (162,1,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (163,1,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (164,1,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (165,1,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (166,1,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (167,2,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (168,2,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (169,2,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (170,2,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (171,2,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (172,2,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (173,3,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (174,3,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (175,3,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (176,3,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (177,3,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (178,3,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (179,4,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (180,4,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (181,4,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (182,4,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (183,4,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (184,4,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (185,5,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (186,5,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (187,5,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (188,5,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (189,5,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (190,5,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (191,6,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (192,6,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (193,6,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (194,6,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (195,6,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (196,6,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (197,7,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (198,7,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (199,7,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (200,7,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (201,7,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (202,7,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (203,8,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (204,8,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (205,8,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (206,8,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (207,8,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (208,8,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (209,9,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (210,9,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (211,9,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (212,9,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (213,9,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (214,9,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (215,10,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (216,10,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (217,10,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (218,10,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (219,10,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (220,10,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (221,11,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (222,11,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (223,11,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (224,11,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (225,11,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (226,11,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (227,12,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (228,12,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (229,12,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (230,12,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (231,12,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (232,12,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (233,13,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (234,13,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (235,13,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (236,13,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (237,13,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (238,13,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (239,14,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (240,14,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (241,14,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (242,14,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (243,14,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (244,14,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (245,15,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (246,15,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (247,15,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (248,15,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (249,15,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (250,15,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (251,16,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (252,16,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (253,16,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (254,16,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (255,16,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (256,16,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (257,17,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (258,17,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (259,17,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (260,17,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (261,17,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (262,17,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (263,18,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (264,18,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (265,18,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (266,18,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (267,18,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (268,18,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (269,19,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (270,19,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (271,19,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (272,19,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (273,19,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (274,19,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (275,20,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (276,20,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (277,20,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (278,20,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (279,20,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (280,20,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (281,21,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (282,21,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (283,21,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (284,21,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (285,21,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (286,21,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (287,22,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (288,22,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (289,22,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (290,22,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (291,22,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (292,22,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (293,23,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (294,23,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (295,23,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (296,23,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (297,23,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (298,23,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (299,24,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (300,24,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (301,24,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (302,24,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (303,24,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (304,24,'F','internazionale',0,0);
INSERT INTO "posti" VALUES (305,25,'A','internazionale',0,0);
INSERT INTO "posti" VALUES (306,25,'B','internazionale',0,0);
INSERT INTO "posti" VALUES (307,25,'C','internazionale',0,0);
INSERT INTO "posti" VALUES (308,25,'D','internazionale',0,0);
INSERT INTO "posti" VALUES (309,25,'E','internazionale',0,0);
INSERT INTO "posti" VALUES (310,25,'F','internazionale',0,0);
COMMIT;
