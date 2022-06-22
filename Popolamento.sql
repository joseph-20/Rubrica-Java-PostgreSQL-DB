-- Generazione password area privata --
insert into area_privata
values('1234');

--Generazione gruppi --
insert into gruppo
values('Collaboratori');
insert into gruppo
values('Superiori');
insert into gruppo
values('Agenti');

-- Popolazione contatto -- 
insert into contatto (nome,cognome,security)
values ('Andrea','Pinto',false);
insert into contatto (nome,cognome,security)
values ('Sebastiano','Sannino',false);
insert into contatto (nome,cognome,security)
values ('Giuseppe','Longobardo',false);
insert into contatto (nome,cognome,security)
values ('Alberica','Manna',false);
insert into contatto (nome,cognome,security)
values ('Debora','Udinese',false);
insert into contatto (nome,cognome,security)
values ('Erminia','Pisano',false);
insert into contatto (nome,cognome,security)
values ('Ferruccio','Arcuri',true);
insert into contatto (nome,cognome,security)
values ('Delmina','Marino',true);
insert into contatto (nome,cognome,security)
values ('Dario','Loggia',false);
insert into contatto (nome,cognome,security)
values ('Editta','Pagnotto',false);
insert into contatto (nome,cognome,security)
values ('Edda','Baresi',false);
insert into contatto (nome,cognome,security)
values ('Quadrato','DeRose',true);
insert into contatto (nome,cognome,security)
values ('Italia','Romani',true);
insert into contatto (nome,cognome,security)
values ('Renato','Pagnotto',false);
insert into contatto (nome,cognome,security)
values ('Lelia','Calabrese',false);
insert into contatto (nome,cognome,security)
values ('Gennaro','Piccio',false);
insert into contatto (nome,cognome,security)
values ('Teodata','Mancini',false);
insert into contatto (nome,cognome,security)
values ('Felice','Mazzanti',false);
insert into contatto (nome,cognome,security)
values ('Jole','Greco',false);
insert into contatto (nome,cognome,security)
values ('Samuele','Folliero',false);
insert into contatto (nome,cognome,security)
values ('Carlo','Vinti',false);
insert into contatto (nome,cognome,security)
values ('Curzio','Romano',true);
insert into contatto (nome,cognome,security)
values ('Manuela','Bergamaschi',false);
insert into contatto (nome,cognome,security)
values ('Amedeo','Folliero',false);
insert into contatto (nome,cognome,security)
values ('Quarto','Fallaci',false);
insert into contatto (nome,cognome,security)
values ('Eufrosina','Padovano',false);
insert into contatto (nome,cognome,security)
values ('Mafalda','Trevisan',false);
insert into contatto (nome,cognome,security)
values ('Lelio','Conti',false);
insert into contatto (nome,cognome,security)
values ('Sante','Napolitano',true);
insert into contatto (nome,cognome,security)
values ('Viviana','Rizzo',true);

-- Popolazione email -- 

insert into email (username,dominio,id_contatto)
values ('andpnace','gmail.com',1);
insert into email (username,dominio,id_contatto)
values ('sebgab0002','gmail.com',2);
insert into email (username,dominio,id_contatto)
values ('giuslongobardo','gmail.com',3);
insert into email (username,dominio,id_contatto)
values ('albManna','icloud.com',4);
insert into email (username,dominio,id_contatto)
values ('udidebora','yahoo.com',5);
insert into email (username,dominio,id_contatto)
values ('ermi22','libero.it',6);
insert into email (username,dominio,id_contatto)
values ('Ferruccioacu21','gmail.com',7);
insert into email (username,dominio,id_contatto)
values ('maride00','gmail.com',8);
insert into email (username,dominio,id_contatto)
values ('loggiadario','icloud.com',9);
insert into email (username,dominio,id_contatto)
values ('edittapagnotto21','gmail.com',10);
insert into email (username,dominio,id_contatto)
values ('baresiedda','libero.it',11);
insert into email (username,dominio,id_contatto)
values ('deRoseQuadrato','hotmail.com',12);
insert into email (username,dominio,id_contatto)
values ('itaRomani','gmail.com',13);
insert into email (username,dominio,id_contatto)
values ('rePagnotto','icloud.com',14);
insert into email (username,dominio,id_contatto)
values ('leliaCal2','virgilio.it',15);
insert into email (username,dominio,id_contatto)
values ('GennaroPic','gmail.com',16);
insert into email (username,dominio,id_contatto)
values ('manciniTeodata','gmail.com',17);
insert into email (username,dominio,id_contatto)
values ('Felicemazz','icloud.com',18);
insert into email (username,dominio,id_contatto)
values ('GrecoJole','hotmail.com',19);
insert into email (username,dominio,id_contatto)
values ('Samu213','gmail.com',20);
insert into email (username,dominio,id_contatto)
values ('VintiCarlo2','gmail.com',21);
insert into email (username,dominio,id_contatto)
values ('RomanCurz','virgilio.it',22);
insert into email (username,dominio,id_contatto)
values ('bergmanu2','gmail.com',23);
insert into email (username,dominio,id_contatto)
values ('follieroeman1','icloud.com',24);
insert into email (username,dominio,id_contatto)
values ('fallQuart','gmail.com',25);
insert into email (username,dominio,id_contatto)
values ('pado2111','libero.it',26);
insert into email (username,dominio,id_contatto)
values ('maffff2','gmail.com',27);
insert into email (username,dominio,id_contatto)
values ('leConti66','gmail.com',28);
insert into email (username,dominio,id_contatto)
values ('napoli139','virgilio.it',29);
insert into email (username,dominio,id_contatto)
values ('rizzoVi','hotmail.com',30);

-- Popolamento Indirizzo principale --

insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Bartolo Longo','55','Napoli','80147','Italia',1);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Benedetto Cozzolino','5','Napoli','80056','Italia',2);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Corso Vittorio Emanuele II','32','Cagliari','09024','Italia',3);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Vicolo del Sant Uffizio','74','Palermo','90133','Italia',4);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Falcone e Borsellino','1','Modena','41030','Italia',5);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via dei Priori','88','Perugia','06046','Italia',6);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via San Giovanni','66','Catanzaro','88046','Italia',7);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Piazza Angelo','75','Belluno','32035','Italia',8);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('contrada Lazazzara Longobardo','51','Bari','70029','Italia',9);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('via san Calorio','22','Salerno','84020','Italia',10);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Corso Roma','565','Cuneo','12038','Italia',11);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Pasquale Fornari','515','Milano','20146','Italia',12);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via del Fiume','53','Latina','04019','Italia',13);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Localita S.Filomena','77','Chieti','66100','Italia',14);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Valdaso','63828','Fermo','80147','Italia',15);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Principe di Piemonte','75','Avellino','83040','Italia',16);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via San Lazzaro','97','Bologna','40068','Italia',17);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Statale','111','Lecco','23852','Italia',18);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Cascinapiano','24','Parma','43013','Italia',19);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via XXV Aprile','34','La Spezia','19038','Italia',20);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Montalese','41','Prato','59013','Italia',21);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Roberto D Angio','65','Caserta','81055','Italia',22);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Viale Mario Gori','341','Caltanissetta','93015','Italia',23);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Frazione Margani','546','Macerata','62028','Italia',24);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Viale Europa','132','Siena','53047','Italia',26);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Catania','112','Catania','95027','Italia',27);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Localita Cortona','242','Udine','33050','Italia',28);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Via Gustavo Roccella','752','Enna','94015','Italia',29);
insert into indirizzo_principale (via,civico,citta,cap,nazione,id_contatto)
values('Piazza Principe Umberto','1443','Lecce','73030','Italia',30);

-- Popolamento Indirizzo secondario --

insert into indirizzo_secondario (via,civico,citta,cap,nazione,id_contatto)
values('Cala Bitta','1','Olbia-Tempio','07021','Italia',5);
insert into indirizzo_secondario (via,civico,citta,cap,nazione,id_contatto)
values('Via Circonvallazione','75','Ancona','60122','Italia',8);
insert into indirizzo_secondario (via,civico,citta,cap,nazione,id_contatto)
values('Via Donato Bramante','63828','Pesaro e Urbino','61049','Italia',15);;
insert into indirizzo_secondario (via,civico,citta,cap,nazione,id_contatto)
values('Via dell agricoltura','112','Matera','75100','Italia',27);
insert into indirizzo_secondario (via,civico,citta,cap,nazione,id_contatto)
values('Viale Giosue Carducci','1443','Forlì-Cesena','2742','Italia',30);


-- Popolamento numero mobile --

insert into numero_mobile (prefisso,numero,id_contatto)
values ('366','2186629',1);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('333','4285821',2);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('336','5827152',3);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('333','2141242',4);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('366','1919829',5);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('388','5381221',6);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('333','5351353',7);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('331','362293',8);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('333','5735738',9);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('331','7537585',10);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('338','1235774',11);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('338','7568963',12);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('339','3578979',13);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('333','322862',14);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('399','3542755',15);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('388','3674758',16);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('331','1385135',17);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('333','5324132',18);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('337','4341342',19);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('331','34386',20);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('343','931257',21);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('363','8663213',22);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('364','8351344',23);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('322','110476',24);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('363','710123',25);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('336','3627884',26);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('335','4785532',27);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('313','2136478',28);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('338','9625898',29);
insert into numero_mobile (prefisso,numero,id_contatto)
values ('336','96135',30);

-- Popolamento numero fisso --

insert into numero_fisso (prefisso,numero,id_contatto)
values ('081','9964353',1);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('082','978245',2);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('088','3265758',3);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('080','8695342',4);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('090','861332',5);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('091','1354788',6);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('099','4365383',7);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('031','365822',8);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('091','145341',9);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('091','3264743',10);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('099','316230',11);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('092','322268',12);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('081','325219',13);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('099','308542',14);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('082','326304',15);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('095','363305',16);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('099','235145',17);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('012','3658532',18);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('088','1356894',19);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('082','261454',20);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('088','3263582',21);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('091','6879784',22);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('092','6424131',23);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('042','5325642',24);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('072','710123',25);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('083','2141233',26);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('077','3413432',27);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('083','3414314',28);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('083','513211',29);
insert into numero_fisso (prefisso,numero,id_contatto)
values ('012','5325233',30);

-- Popolazione gruppi --

insert into partecipazione (id_contatto,nome_gruppo)
values(1,'Superiori');
insert into partecipazione (id_contatto,nome_gruppo)
values(2,'Superiori');
insert into partecipazione (id_contatto,nome_gruppo)
values(3,'Superiori');
insert into partecipazione (id_contatto,nome_gruppo)
values(4,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(5,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(6,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(7,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(8,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(9,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(10,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(11,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(12,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(13,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(14,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(15,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(16,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(17,'Collaboratori');
insert into partecipazione (id_contatto,nome_gruppo)
values(18,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(19,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(20,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(21,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(22,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(23,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(24,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(25,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(26,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(27,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(28,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(29,'Agenti');
insert into partecipazione (id_contatto,nome_gruppo)
values(30,'Agenti');

-- Popolazione reindirizzamenti --

insert into reindirizzamento (prefisso_fisso,numero_fisso,id_contatto_fisso,prefisso_mobile,numero_mobile)
values ('081','9964353',1,'366','2186629');
insert into reindirizzamento (prefisso_fisso,numero_fisso,id_contatto_fisso,prefisso_mobile,numero_mobile)
values ('081','9964353',12,'366','2186629');
insert into reindirizzamento (prefisso_fisso,numero_fisso,id_contatto_fisso,prefisso_mobile,numero_mobile)
values ('088','1356894',19,'337','4341342');
insert into reindirizzamento (prefisso_fisso,numero_fisso,id_contatto_fisso,prefisso_mobile,numero_mobile)
values ('088','3263582',21,'343','931257');
insert into reindirizzamento (prefisso_fisso,numero_fisso,id_contatto_fisso,prefisso_mobile,numero_mobile)
values ('012','5325233',30,'336','96135');

-- Popolazione sistema di messaging --

insert into sistema_di_messaging (username,servizio,stato,email_username,email_dominio,id_contatto)
values ('Andpn8','Telegram','Disponibile','andpnace00','gmail.com',1);
insert into sistema_di_messaging (username,servizio,stato,email_username,email_dominio,id_contatto)
values ('Edipagn','WeChat','Occupata','edittapagnotto21','gmail.com',10);
insert into sistema_di_messaging (username,servizio,stato,email_username,email_dominio,id_contatto)
values ('Qudra2','Messenger','A lavoro','deRoseQuadrato','hotmail.com',12);
insert into sistema_di_messaging (username,servizio,stato,email_username,email_dominio,id_contatto)
values ('Feli2','Whatsapp','In Chiamata','Felicemazz','icloud.com',18);
