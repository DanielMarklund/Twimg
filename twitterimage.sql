# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: twitterimage
# Generation Time: 2012-10-22 23:25:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tweets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tweets`;

CREATE TABLE `tweets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(150) DEFAULT NULL,
  `imageUrl` varchar(256) NOT NULL DEFAULT '',
  `profileUsername` varchar(60) NOT NULL DEFAULT '',
  `profileImageUrl` varchar(256) NOT NULL DEFAULT '',
  `date` varchar(200) NOT NULL DEFAULT '',
  `time` time NOT NULL,
  `t_id` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_id` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 MAX_ROWS=50000;

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;

INSERT INTO `tweets` (`id`, `text`, `imageUrl`, `profileUsername`, `profileImageUrl`, `date`, `time`, `t_id`)
VALUES
	(44213,'Good morning bragging don\'t do nun for ya ','http://distilleryimage3.instagram.com/60b9c5321c5711e2b46022000a1e9de2_7.jpg','teamKESA','http://a0.twimg.com/profile_images/2739506208/a3b78bde993b3b21f212504df8b4beaf_normal.jpeg','Oct 22, 2012','02:50:00','260392605450383361'),
	(44214,'It\'s been a good morning so far ','http://distilleryimage11.instagram.com/aa65940e1c5711e28393123138133f89_7.jpg','JustineRaburn','http://a0.twimg.com/profile_images/2625636019/image_normal.jpg','Oct 22, 2012','02:50:00','260392604292751361'),
	(44227,'The Truth in a Nutshell! Let the Lowkey fans talk lol! http://t.co/bALekd2l','http://distilleryimage1.instagram.com/7c7d6f441c5711e2b52122000a1fa4b5_7.jpg','iTweezy','http://a0.twimg.com/profile_images/2713262075/2fe358a134fdd40d64776cd2ae67d5fa_normal.jpeg','Oct 22, 2012','02:50:00','260392631689936896'),
	(44228,'@lefreakypanda and I off to school! :D #hair #swoopyhair #school #piercings #weird #haha #lol #funny #sister http://t.co/oiQIayDd','http://distilleryimage0.instagram.com/841ef34e1c5711e2bed91231381b5142_7.jpg','vivlawhatsrname','http://a0.twimg.com/profile_images/2523509836/image_normal.jpg','Oct 22, 2012','02:50:00','260392633388638209'),
	(44229,'#lol! #me #1 #ear-ring http://t.co/f3QnSPC2','http://distilleryimage1.instagram.com/bde9024a1c5711e2a63622000a1d0343_7.jpg','nathasyaresqy','http://a0.twimg.com/profile_images/2736402960/180c236be5192c23c6d97bb998c88c0d_normal.jpeg','Oct 22, 2012','02:50:00','260392628800086017'),
	(44230,'@itsmedlare018 @karenchristel  eto pla sinabi nya sa movie d ko tlaga naintindihan lol @ Robinsons Pioneer http://t.co/ImOGjfYp','http://distilleryimage1.instagram.com/90809cd21c5711e2a1b122000a1e9fa4_7.jpg','iamnotagenius','http://a0.twimg.com/profile_images/1729766566/41468_700352976_3657008_n_normal.jpg','Oct 22, 2012','02:50:00','260392634747588608'),
	(44231,'I just wanted to get spanked #vegas #spanked #public #drunk #badboy #dreamscometrue #morning #goodmorning #s http://t.co/oOiRGUlB','http://distilleryimage11.instagram.com/9915ff041c5711e2b05e1231381b445c_7.jpg','russellkuch','http://a0.twimg.com/profile_images/2331306399/image_normal.jpg','Oct 22, 2012','02:50:00','260392626086375425'),
	(44233,'Morning dolls #mickey_d`s !! #smooche`s http://t.co/lKv2FL0R','http://distilleryimage9.instagram.com/5035d6021c4c11e2b3ea12313813ffc5_7.jpg','tacaradash','http://a0.twimg.com/profile_images/2299196141/avatar_normal.JPEG','Oct 22, 2012','02:50:00','260392624811278336'),
	(44235,'Before work everyday my dad tells our dog he loves him &amp; says \"give me a kiss\" Wish he loved me this much ','http://distilleryimage1.instagram.com/4bde92281c5711e2880f22000a1e8aaf_7.jpg','T_Pleaseyy','http://a0.twimg.com/profile_images/2607434084/image_normal.jpg','Oct 22, 2012','02:50:00','260392622584119297'),
	(44239,'They keep me going they brought my BIRTHDAY in RIGHT LOL.. #LOVE #KISSES ','http://distilleryimage0.instagram.com/36769df41c5711e2877022000a9f1278_7.jpg','laysiaDIVA','http://a0.twimg.com/profile_images/2618285081/image_normal.jpg','Oct 22, 2012','02:50:00','260392617559330816'),
	(44241,'good morning!!!! http://t.co/Ed3F2W6b','http://distilleryimage1.instagram.com/be8239061c5711e2a5d322000a1f90e5_7.jpg','am_zadddy','http://a0.twimg.com/profile_images/2735877506/dd8876ee6bd697638d157d3dc9182650_normal.jpeg','Oct 22, 2012','02:50:00','260392614203904000'),
	(44244,'Good morning!!!  bored so I made this lol #faces #chilling http://t.co/RMEjQH9K','http://distilleryimage5.instagram.com/ac4d7d681c5711e2ab5722000a1f9684_7.jpg','Queen_TiekTiek','http://a0.twimg.com/profile_images/2723870046/045bfb206cf8cbe151e5b4e33efefab8_normal.jpeg','Oct 22, 2012','02:50:00','260392610886217730'),
	(44247,'Beautiful Canadian morning drive to school. #nofilter #canada #college #vancity #sun #breathtaking #beautifu http://t.co/rprLAjZ8','http://distilleryimage8.instagram.com/b860862c1c5711e2844022000a1f9adf_7.jpg','JakeeTylerr','http://a0.twimg.com/profile_images/2725091664/2d2b300897cad69d62c8881d19d2f666_normal.jpeg','Oct 22, 2012','02:50:00','260392662232866816'),
	(44249,'Hello New England #foliage #umass http://t.co/wuTXPL6A','http://distilleryimage6.instagram.com/bc2b04441c5711e2b0f4123138141c0a_7.jpg','swaggggs','http://a0.twimg.com/profile_images/2386841710/image_normal.jpg','Oct 22, 2012','02:50:00','260392656490881024'),
	(44252,'Morning. #Walk #View #Home http://t.co/teJL2ph3','http://distilleryimage6.instagram.com/c62c21bc1c5711e29f8e22000a1d0105_7.jpg','MichelleOLeary_','http://a0.twimg.com/profile_images/2747950237/12904599e5821fa29fb447c4ed4d69e4_normal.jpeg','Oct 22, 2012','02:50:00','260392654372753408'),
	(44254,'What I\'m working to do...man this is Gona take forever lol I\'m Gona be broke for the next 4 years http://t.co/VdmjXMSj','http://distilleryimage10.instagram.com/c0338a021c5711e2b09522000a1f9363_7.jpg','YoMamaBiotchh','http://a0.twimg.com/profile_images/2606019393/image_normal.jpg','Oct 22, 2012','02:50:00','260392654125285376'),
	(44255,'\"@Soouterspace: Lmao!!!! real shit http://t.co/Fp9aiEyT\" lol realist shit ever tweeted lol','http://distilleryimage6.instagram.com/7118e0b41c5411e28a2c22000a1d0378_7.jpg','SlimAkaF1','http://a0.twimg.com/profile_images/2672891608/d1f748a55f2bf834c649db0a97795bc1_normal.jpeg','Oct 22, 2012','02:50:00','260392647712182273'),
	(44258,'Simple &amp; Easy lol http://t.co/uCGi3DSZ','http://distilleryimage1.instagram.com/c6676c901c5711e29d8c22000a1fbd8b_7.jpg','Alimu11','http://a0.twimg.com/profile_images/2705195693/98ef2ab3eafbb36ab7aa3812fe60ac3f_normal.jpeg','Oct 22, 2012','02:50:00','260392643945713665'),
	(44262,'Wasted to the umpth degree!! Lol @damn_star @daunfuqwitable1 mr_bg37 http://t.co/jNy42I8G','http://distilleryimage1.instagram.com/cb3c6e641c5711e2a04e1231381b803b_7.jpg','JuicyJ_00','http://a0.twimg.com/profile_images/2649506039/1095d8f2fca917c3be482a3accdf3fd7_normal.png','Oct 22, 2012','02:50:00','260392685083443201'),
	(44263,'หล่อๆๆ aomjung69 @khumkhim @khunpii  #ทองก้อน #cat #catstagram #thailand #ไร่ของขวัญ http://t.co/WJR3DW2t','http://distilleryimage10.instagram.com/b2f7466c1c5711e2b1c722000a1fba7b_7.jpg','i_cannnn','http://a0.twimg.com/profile_images/1273451671/IMG00403-20110315-1811_normal.jpg','Oct 22, 2012','02:50:00','260392683456049153'),
	(44266,'Omgsh my heart is MELTING! Can\'t wait to get a puppy! So friggin cute! #dog #puppy #cute #cuddle #adorable # http://t.co/da6WIMRW','http://distilleryimage2.instagram.com/a9b75c5e1c5711e2a2e022000a1faf45_7.jpg','DeavensTooBuff','http://a0.twimg.com/profile_images/2522465317/5nhxqmptdhaq3c8hn99j_normal.jpeg','Oct 22, 2012','02:50:00','260392682696892417'),
	(44267,'My morning #projectalicia_selfie  yes everything is foggy before this cup @projectalicia http://t.co/NAftbO66','http://distilleryimage1.instagram.com/ad41562c1c5711e2979222000a1e9df0_7.jpg','Elliesworld','http://a0.twimg.com/profile_images/2270282696/u0xfju5f90z581m2wefi_normal.jpeg','Oct 22, 2012','02:50:00','260392680842985472'),
	(44271,'I have personally watched this cat grow from a, sometimes, overzealous kid...to  @ Wyndham Indianapolis West http://t.co/e4tlFt7h','http://distilleryimage2.instagram.com/0628e5d01c5711e29e9622000a1c9e07_7.jpg','WhoIsMoJey','http://a0.twimg.com/profile_images/2743537418/d7293110239b7910e3c0e2fa22570a4b_normal.png','Oct 22, 2012','02:50:00','260392674778038273'),
	(44272,'Am bringing the beautiful autumn inside ... All from dog walkies! (except from eucalyptus) http://t.co/89EzgoNz','http://distilleryimage7.instagram.com/aa2578421c5711e2be981231380fee6b_7.jpg','JodieMayMusic','http://a0.twimg.com/profile_images/1813443332/222939_219172874775642_146465352046395_948297_252242_n_normal.jpg','Oct 22, 2012','02:50:00','260392701504131072'),
	(44273,'Good Morning http://t.co/evWmxc7Y','http://distilleryimage7.instagram.com/b3df46c41c5711e28dfe22000a9e288f_7.jpg','PookieStayFly','http://a0.twimg.com/profile_images/2718603377/63afe7628e6f1bdf636dc9ed30897716_normal.jpeg','Oct 22, 2012','02:50:00','260392700405227520'),
	(44275,'GTFU! smh .. lol This alarm ain\'t no joke. http://t.co/3eNz8dK4','http://distilleryimage0.instagram.com/d045222a1c5711e2a3361231381b406c_7.jpg','RoderickMozee_','http://a0.twimg.com/profile_images/2730244704/aae1110f8ab7f53e09dc33f85184e72a_normal.jpeg','Oct 22, 2012','02:50:00','260392698127728640'),
	(44276,'@kayydrizz said it best, her morning statuses give me inspiration I love her &lt;3 Good Morning instaG http://t.co/JjbAbjXa','http://distilleryimage3.instagram.com/b1a3f7c41c5711e2952122000a1fbf2e_7.jpg','SoniiBadAssxoxo','http://a0.twimg.com/profile_images/2641725717/defeee3b27736b4b254d84c0ace7bff5_normal.jpeg','Oct 22, 2012','02:50:00','260392714053484544'),
	(44277,'Guess we won\'t be having drinks on the deck tonight... lol #ymm #northernliving http://t.co/n9BMVqHW','http://distilleryimage10.instagram.com/c0962da61c5711e2917a22000a1cf75c_7.jpg','april_stacey','http://a0.twimg.com/profile_images/2231112177/image_normal.jpg','Oct 22, 2012','02:50:00','260392709548826624'),
	(44278,'Morning IG#TrueStory http://t.co/mQDjYBkA','http://distilleryimage0.instagram.com/bf7277401c5711e29f0922000a1fb76f_7.jpg','DatRivvyChik','http://a0.twimg.com/profile_images/2705791536/9329f32cffa77862efa413e80d654609_normal.jpeg','Oct 22, 2012','02:50:00','260392715014000641'),
	(44279,'G\'Morning','http://distilleryimage3.instagram.com/c8f018401c5711e2ac5222000a1e9dcf_7.jpg','LiveLoveFLY_','http://a0.twimg.com/profile_images/2650059646/88866c77ad543005ade038fce2211ba7_normal.jpeg','Oct 22, 2012','02:50:00','260392717161492480'),
	(44281,'rainy monday morning #fall http://t.co/UZ0JEgQl','http://distilleryimage3.instagram.com/d4ba8b561c5711e2b60722000a9f09f0_7.jpg','charMae712','http://a0.twimg.com/profile_images/1740310962/image_normal.jpg','Oct 22, 2012','02:50:00','260392718327492608'),
	(44282,'Good morning. Promising myself today will be good. http://t.co/0gBEad5K','http://distilleryimage8.instagram.com/c72a54a81c5711e28dba22000a1f97e5_7.jpg','ItsAminaBitch','http://a0.twimg.com/profile_images/2653857151/13cb63acfea57111803ee501a13b0baa_normal.jpeg','Oct 22, 2012','02:50:00','260392709360066561'),
	(44283,'I\'m addicted to pic stitch lol http://t.co/i4bKKFij','http://distilleryimage4.instagram.com/bc03071e1c5711e2b60722000a9f09f0_7.jpg','Brown_Eyes_2729','http://a0.twimg.com/profile_images/2735479941/ea2d401b44ac115e67b713ffb01b495a_normal.jpeg','Oct 22, 2012','02:50:00','260392720428855298'),
	(44286,'I\'m sorry but I love my cat. ','http://distilleryimage7.instagram.com/15d48a6c1bfc11e2b46022000a1fb37a_7.jpg','Ameliiiaaaa','http://a0.twimg.com/profile_images/2564439924/image_normal.jpg','Oct 22, 2012','02:50:00','260392708496056322'),
	(44288,'my perfect morning :) #snuggle #lazy #babygirls http://t.co/qrvm6UQ6','http://distilleryimage3.instagram.com/9cac816a1c5711e28a3522000a1c86c8_7.jpg','nessababyxo','http://a0.twimg.com/profile_images/2669670042/5ac601a4cb8135879f8cc90e7047d04e_normal.jpeg','Oct 22, 2012','02:50:00','260392723394228225'),
	(44291,'Good morning #vancouver http://t.co/xkDz9w8X','http://distilleryimage10.instagram.com/c560c44a1c5711e2914322000a1f984e_7.jpg','crossesallover','http://a0.twimg.com/profile_images/2742345189/4a04fa61e2df44d982bb828ef56eb2ff_normal.png','Oct 22, 2012','02:50:00','260392729777946624'),
	(44292,'Morning stroll trough these Goodland streets http://t.co/0mpDknhv','http://distilleryimage7.instagram.com/d020ca921c5711e2a9d822000a9e29af_7.jpg','GWICKS1','http://a0.twimg.com/profile_images/2650621416/a7e7cdb06815492fdf7c0d22bef4013c_normal.jpeg','Oct 22, 2012','02:50:00','260392737843580928'),
	(44293,'#love #cat #happy #happiness #cute #sweet http://t.co/wwlcH04K','http://distilleryimage4.instagram.com/c7c1ecdc1c5711e2bb0f22000a1cfde9_7.jpg','NKimberlie','http://a0.twimg.com/profile_images/2709247275/7a52914040b5e31358a2f89d4769cc68_normal.jpeg','Oct 22, 2012','02:50:00','260392729534681088'),
	(44294,'Good morning IGers... Let\'s seize the day! #california #Palos_verde #instagood #sky #lights #umbrellas http://t.co/B4ZkIulc','http://distilleryimage0.instagram.com/79e7b2261c5711e2998822000a1fbc5d_7.jpg','thruandislens','http://a0.twimg.com/profile_images/1138439513/FBButton_normal.jpg','Oct 22, 2012','02:50:00','260392739542294529'),
	(44296,'','http://distilleryimage3.instagram.com/cd176fd61c5711e29c6822000a1f9688_7.jpg','CbRihTrueLove','http://a0.twimg.com/profile_images/2671595881/32a5733c780a62c19c329c67dc5a5bbe_normal.jpeg','Oct 22, 2012','02:50:00','260392735729647616'),
	(44297,'So excited during this #early #morning #workout http://t.co/WlhgzXft','http://distilleryimage8.instagram.com/cb4deca21c5711e2ba6922000a1fb733_7.jpg','I4ImagePhotos','http://a0.twimg.com/profile_images/2424167769/dqa46j105doefcjk2a0h_normal.jpeg','Oct 22, 2012','02:50:00','260392726648983553'),
	(44298,'#LOL #blue #tongue #bored #M&amp;M #bluem&amp;m #yolo #blond #hair #le #me #KBYE http://t.co/KYIfhxJm','http://distilleryimage1.instagram.com/9ffcb15a1c5711e2b62322000a9f12da_7.jpg','DatBieberKisses','http://a0.twimg.com/profile_images/2737882937/94949c2749688b27582170f970930c8d_normal.png','Oct 22, 2012','02:50:00','260392738569195520'),
	(44300,'Really? this old school cat red from head to toe http://t.co/siV5Rzop','http://distilleryimage10.instagram.com/b2fb223c1c5711e2b2c322000a1f9804_7.jpg','Mango_love88','http://a0.twimg.com/profile_images/2560739633/image_normal.jpg','Oct 22, 2012','02:50:00','260392735654158337'),
	(44302,'Guy on xbox lol http://t.co/SQ8EgWMq','http://distilleryimage9.instagram.com/d855d7c01c5711e2a9d522000a1e8965_7.jpg','Alex_Sieh','http://a0.twimg.com/profile_images/2121365577/kristenn_normal.jpg','Oct 22, 2012','02:50:00','260392738443386882'),
	(44305,'I can do it all lol. Finally finished building my tv stand. ☺ http://t.co/q0Q4oEjM','http://distilleryimage10.instagram.com/a12d2b361c5711e2a2ce22000a1fa411_7.jpg','JusCallme_B','http://a0.twimg.com/profile_images/2629184608/cb448e56ff3cbbe696f815c279cd5b40_normal.jpeg','Oct 22, 2012','02:50:00','260392749147226112'),
	(44306,'Beautiful morning. #ldnont http://t.co/VaeNmO0v','http://distilleryimage1.instagram.com/d06acd7c1c5711e283fe22000a1fa511_7.jpg','M_Trevithick','http://a0.twimg.com/profile_images/2180495971/469684_2901582150207_1580041994_31962863_1273328463_o_wm_small_normal.JPG','Oct 22, 2012','02:50:00','260392751726739457'),
	(44307,'Lol yup http://t.co/dnCMlDKS','http://distilleryimage11.instagram.com/cb600a221c5711e2b8e822000a1fbcc7_7.jpg','HeSmoothWitIt','http://a0.twimg.com/profile_images/2647213538/6c05c7ae677106714c63c6edf88308b2_normal.jpeg','Oct 22, 2012','02:50:00','260392747616313345'),
	(44309,'My aunt\'s view on pregnancy. Lol! http://t.co/CcSXxRt3','http://distilleryimage1.instagram.com/c5beabfa1c5711e2a7d622000a1d0360_7.jpg','duckiesaysrawr','http://a0.twimg.com/profile_images/2700722193/0f2d248c6c65f8e7dc37f42171ecb73a_normal.jpeg','Oct 22, 2012','02:50:00','260392750090969088'),
	(44311,'Yeaaaa Romney!! Lol http://t.co/zVcPM3XP','http://distilleryimage11.instagram.com/d3469b661c5711e2914322000a1f984e_7.jpg','_KinkyEyesss','http://a0.twimg.com/profile_images/2747295551/7629115e4a0ab678e8fc8d8ae98634c5_normal.jpeg','Oct 22, 2012','02:50:00','260392754197168128'),
	(44312,'Cat Eastwood.\n#cat http://t.co/n1FVrVFJ','http://distilleryimage1.instagram.com/cc0d49941c5711e2a57122000a1fbe0e_7.jpg','mannulp1991','http://a0.twimg.com/profile_images/2654192375/5e50f67fd8a9d6e2707a7b20c1033577_normal.jpeg','Oct 22, 2012','02:50:00','260392747117182976'),
	(44315,'Scarowinds with the scaredy cat lover #halloween #panthers http://t.co/oCRdPvae','http://distilleryimage9.instagram.com/bfa1a4d41c5711e282a722000a1e8aa6_7.jpg','CaseyTouFueYang','http://a0.twimg.com/profile_images/2513829144/image_normal.jpg','Oct 22, 2012','02:50:00','260392753878409216'),
	(44316,'Early morning workout.... On my sex symbol shit http://t.co/QaEFKoeT','http://distilleryimage9.instagram.com/c8eab2561c5711e2b2c322000a1f9804_7.jpg','lilNipples','http://a0.twimg.com/profile_images/2586624071/profile_normal.jpg','Oct 22, 2012','02:50:00','260392744688689152'),
	(44317,'@abbyyboltt likes hello kitty http://t.co/LucyzTMU','http://distilleryimage4.instagram.com/d5b5a7de1c5711e28a6422000a1fc312_7.jpg','Lindseyhughes18','http://a0.twimg.com/profile_images/2713753806/2ceeaa4ccdeed80a09cebe2b38bb12e5_normal.jpeg','Oct 22, 2012','02:50:00','260392743858233344'),
	(44334,'#lol #what! http://t.co/YTfYeaoj','http://distilleryimage9.instagram.com/cda1f2b41c5711e2918122000a9f0a12_7.jpg','momageed','http://a0.twimg.com/profile_images/2720303957/98fb76226e0b8a63dfac5b0d778ebd94_normal.jpeg','Oct 22, 2012','02:50:00','260392775151931393'),
	(44336,'I love this song.. Don\'t judge me lol http://t.co/SNm6WWVJ','http://distilleryimage0.instagram.com/d3bf002e1c5711e28ddc22000a9f15db_7.jpg','amorecherrie','http://a0.twimg.com/profile_images/2643665793/23e5b1f2aeca2fa0ed842ed215cf495f_normal.jpeg','Oct 22, 2012','02:50:00','260392771259625473'),
	(44337,'Kicking it old school this morning. #relientk #theliningissilver http://t.co/0Nd1wTjZ','http://distilleryimage11.instagram.com/c8d140001c5711e292ea12313d21cdf7_7.jpg','sam_may5','http://a0.twimg.com/profile_images/2723465282/df6fe93023df3f9abd17ec6ec222929e_normal.jpeg','Oct 22, 2012','02:50:00','260392774514401280'),
	(44339,'Morning loves http://t.co/EMGcj1kg','http://distilleryimage10.instagram.com/dc2167481c5711e2ac3022000a1de7aa_7.jpg','Bonita_Amore','http://a0.twimg.com/profile_images/2401829736/image_normal.jpg','Oct 22, 2012','02:50:00','260392766654263296'),
	(44340,'ladypena88\'s photo kinda gay but whatever lol I liked it ','http://distilleryimage9.instagram.com/c4cb1cac1c4211e29e6f22000a1e8b8a_7.jpg','MikeCedenoToGo','http://a0.twimg.com/profile_images/2653643634/e33877dd0e12de5acf67be4532d82904_normal.jpeg','Oct 22, 2012','02:50:00','260392764963971072'),
	(44341,'Bout to get my morning started ','http://distilleryimage5.instagram.com/d93621181c5711e2a3aa22000a1f97a4_7.jpg','itsmewannie','http://a0.twimg.com/profile_images/2525482392/image_normal.jpg','Oct 22, 2012','02:50:00','260392784060616704'),
	(44342,'I find Statler in the exact same place every morning. He\'s not very good at hide and seek. #catsofinstagram http://t.co/hrmN1Xty','http://distilleryimage8.instagram.com/ae0d0cd61c5711e2b7ea22000a1faf3c_7.jpg','MollyAlgernon','http://a0.twimg.com/profile_images/2740412346/b00ca3e568bcbafbb1cd040fb42104ae_normal.jpeg','Oct 22, 2012','02:50:00','260392762476724224'),
	(44344,'Had a fun time this weekend.!!was turn tf up.!!lol http://t.co/ynpmfrLv','http://distilleryimage3.instagram.com/cefbfbf01c5711e2ab3b22000a9f14cb_7.jpg','ii_HATE_qERKx','http://a0.twimg.com/profile_images/2656406611/64ecd4bcada2eb73c7635517dfaee2ae_normal.jpeg','Oct 22, 2012','02:50:00','260392788384964608'),
	(44345,'#me #and #cat #cute #love #outside #dutch #girl http://t.co/4bFhiXAE','http://distilleryimage11.instagram.com/af19fba21c5711e2a58122000a1e87bc_7.jpg','saskiamulderx','http://a0.twimg.com/profile_images/2638669737/16121239f15109f3c6ed408cdffbaddb_normal.jpeg','Oct 22, 2012','02:50:00','260392782810730496'),
	(44346,'This was me this morning.. the struggle http://t.co/90uFEOcU','http://distilleryimage3.instagram.com/d663e2b81c5711e2829522000a1fa769_7.jpg','a_monae','http://a0.twimg.com/profile_images/2724350560/1557d02458a5b5ed97010ea0553f0284_normal.jpeg','Oct 22, 2012','02:50:00','260392761268785153'),
	(44347,'My mama got a \"A\" today at Dialysis... Lol http://t.co/tlwnNDMW','http://distilleryimage6.instagram.com/cb2beba21c5711e2b70422000a9d0df6_7.jpg','MsGeniaG','http://a0.twimg.com/profile_images/2626131683/3Vb1jOjc_normal','Oct 22, 2012','02:50:00','260392789395767296'),
	(44348,'My morning hairrr http://t.co/aCcioIlS','http://distilleryimage7.instagram.com/d5fbfb581c5711e29447123138140da1_7.jpg','Semmy_jo','http://a0.twimg.com/profile_images/2741722436/9e2dffb6e6191bb239481f72ef82af09_normal.jpeg','Oct 22, 2012','02:50:00','260392782357725184'),
	(44349,'Good Morning Los Angeles.  @ Griffith Park Trail http://t.co/byh8mA87','http://distilleryimage10.instagram.com/cf5cf4461c5711e28a3522000a1c86c8_7.jpg','BillyHawn','http://a0.twimg.com/profile_images/1885195649/BillyHawn_normal.jpg','Oct 22, 2012','02:50:00','260392778574471168'),
	(44350,'All campus fire drill test this morning. http://t.co/wuxA0mcE','http://distilleryimage8.instagram.com/bc33b81e1c5711e29a8c22000a1c9e37_7.jpg','awhitis','http://a0.twimg.com/profile_images/2198813859/andrew2012_normal.jpg','Oct 22, 2012','02:50:00','260392799197855744'),
	(44352,'Happy anniversary to this cool cat http://t.co/ScvursC9','http://distilleryimage9.instagram.com/dae3e8381c5711e2a95722000a9f09e9_7.jpg','kristineross','http://a0.twimg.com/profile_images/1012377810/summer2010_023_normal.JPG','Oct 22, 2012','02:50:00','260392803538984961'),
	(44354,'@minkme2010  LOL &gt;&gt; http://t.co/4IcG2SV6','http://distilleryimage8.instagram.com/34a783c01bef11e2ae5f12313810466a_7.jpg','MEECHIEBWOI','http://a0.twimg.com/profile_images/2580331499/c464di05m59ejz8xchve_normal.jpeg','Oct 22, 2012','02:50:00','260392799176896513'),
	(44355,'This morning was gorgeous. http://t.co/aDCENaY2','http://distilleryimage8.instagram.com/dd802e261c5711e2ac3022000a1de7aa_7.jpg','kaylaaasaurus','http://a0.twimg.com/profile_images/2727725383/8e3e4723b38ba163bbb8b848b189478c_normal.jpeg','Oct 22, 2012','02:50:00','260392805896159232'),
	(44356,'Morning #traffic (cc @jihanerou ) http://t.co/eq2o057W','http://distilleryimage2.instagram.com/b3b87b5c1c5711e2a82b22000a1e9e07_7.jpg','AnesAmir','http://a0.twimg.com/profile_images/2745459388/ff027fd6afad0b013fdeb1eeb855708a_normal.jpeg','Oct 22, 2012','02:50:00','260392805225070594'),
	(44357,'LOL, what I found in health. @ Joliet Central High School http://t.co/Ozw25aeM','http://distilleryimage1.instagram.com/bad3b7bc1c5711e2bbd822000a1cf772_7.jpg','TrippyMexicano','http://a0.twimg.com/profile_images/2748765442/7fb2975ca75f73fb954fd32e165406a9_normal.jpeg','Oct 22, 2012','02:50:00','260392796794548224'),
	(44363,'Pre-entreno #kanye #runaway #music #motivation #gym http://t.co/DsHu2bRq','http://distilleryimage0.instagram.com/cda553641c5711e28a5c22000a1f8acf_7.jpg','cat_tarsis','http://a0.twimg.com/profile_images/2624591045/qmvwvunc12gbw0py1yvo_normal.png','Oct 22, 2012','02:50:00','260392810069495808'),
	(44365,'umm when did @jayesduhbullyou change his name to \"Jason\"??? Lol http://t.co/TqDSam4P','http://distilleryimage0.instagram.com/c2f780a41c5711e28d1822000a1f8cf0_7.jpg','iShine252','http://a0.twimg.com/profile_images/2721944115/b79f1e08b1d2adda9426a0117bcff14c_normal.jpeg','Oct 22, 2012','02:50:00','260392809889161216'),
	(44366,'Bored so I put curls in my hair, lol ','http://distilleryimage10.instagram.com/bb8d474a1c5711e28ed022000a1fbc58_7.jpg','JazzyREAL_xo','http://a0.twimg.com/profile_images/2715220293/d2dead37b1508d4891e3da96e1523f6e_normal.jpeg','Oct 22, 2012','02:50:00','260392814091837440'),
	(44367,'Have you seen this, @jaredleto? #LOL http://t.co/ChdmGev2','http://distilleryimage8.s3.amazonaws.com/15058dd21a8211e29c0312313813fb3e_7.jpg','its_lalae','http://a0.twimg.com/profile_images/2674059098/ccbb99426083aa4045e81882ace90fd4_normal.jpeg','Oct 22, 2012','02:50:00','260392809129988097'),
	(44368,'Had to prop her feet up! Such a hard life lol #sassy #booatthezoo #minniemouse #babygirl #love http://t.co/ex551KAn','http://distilleryimage6.instagram.com/cd39d60c1c5711e2a24f123138106064_7.jpg','kristina_jolie','http://a0.twimg.com/profile_images/2721987179/9410c3cccbfb8d9b5155c34613e7b2ec_normal.jpeg','Oct 22, 2012','02:50:00','260392813068447745'),
	(44370,'Good morning world... http://t.co/j0ngD8Vx','http://distilleryimage3.instagram.com/e1e90ac81c5711e281d822000a1f9682_7.jpg','NardoTheSinger','http://a0.twimg.com/profile_images/2742117396/660a961c68eda65f6b1fb3b3c941d63f_normal.jpeg','Oct 22, 2012','02:50:00','260392808341454849'),
	(44373,'Zoe\'s work station lol... Buzz Lightyear, #jays , a chopper, a book and a Cadillac Escalade http://t.co/7I4GzaqX','http://distilleryimage9.instagram.com/84f21c921c5711e2ba8122000a1de2e1_7.jpg','YungReno405','http://a0.twimg.com/profile_images/2678986386/baee800c27588465beced50279cfcac7_normal.jpeg','Oct 22, 2012','02:50:00','260392808089780224'),
	(44379,'Hangin w CS Lewis this morning.  @ Cozumel Palace http://t.co/QNKYAZfE','http://distilleryimage7.instagram.com/bba449901c5711e29b9b22000a1f96c5_7.jpg','JSMITHONUMD','http://a0.twimg.com/profile_images/2603221180/mpqsnybs243won92l4ry_normal.jpeg','Oct 22, 2012','02:51:00','260392825907183620'),
	(44381,'Dre taking a hit lol http://t.co/conx54u8','http://distilleryimage8.instagram.com/35c3127a1c5711e28096123138190974_7.jpg','WildMoneySkinny','http://a0.twimg.com/profile_images/2557384603/Pt0vk1dN_normal','Oct 22, 2012','02:51:00','260392821255729152'),
	(44383,'Been playing this all morning http://t.co/cAnDkchZ','http://distilleryimage8.instagram.com/dadd333a1c5711e2984f22000a1fb895_7.jpg','I_rock_retros','http://a0.twimg.com/profile_images/2655261512/edc4765029fcf4c3c3a2249cd20735b7_normal.jpeg','Oct 22, 2012','02:51:00','260392836678172672'),
	(44384,'Bored lol. Least it\'s nice outside. http://t.co/k8rzeAOu','http://distilleryimage2.instagram.com/e0253d1a1c5711e2b95b22000a1fab39_7.jpg','stepha4135','http://a0.twimg.com/profile_images/2624139573/R88Sle67_normal','Oct 22, 2012','02:51:00','260392841124143105'),
	(44386,'cecilepierronn #dead in #bobst lol @ Bobst Library (NYU) http://t.co/fUcOkXlv','http://distilleryimage7.instagram.com/d886f04e1c5711e2ba8122000a1fc2ee_7.jpg','BayanTalgat','http://a0.twimg.com/profile_images/2228704811/bw2w_normal.jpg','Oct 22, 2012','02:51:00','260392845196804096'),
	(44387,'LOL JAJAJAJAJ dont parking in here!!! #car #parking #dark #tomorrow #epic #jj_forum #nice #goodcar #black #l http://t.co/rwU7qidU','http://distilleryimage3.instagram.com/e5268b521c5711e2a1fa22000a1c8697_7.jpg','ChrismaMia','http://a0.twimg.com/profile_images/2733202107/d4a02180845fe0210d5ad8a93109ec71_normal.jpeg','Oct 22, 2012','02:51:00','260392850326441985'),
	(44388,'Morning, getting a hold of it http://t.co/G9yWmjjz','http://distilleryimage1.instagram.com/e62e2b4a1c5711e2bbd422000a1f9ab2_7.jpg','dersuf','http://a0.twimg.com/profile_images/2282389975/image_normal.jpg','Oct 22, 2012','02:51:00','260392843791708160'),
	(44389,'My view from Bruff this morning #palmtree #tropical http://t.co/1EEd5WEV','http://distilleryimage8.instagram.com/dd2da94e1c5711e2ba6922000a1fb733_7.jpg','chickenjroth','http://a0.twimg.com/profile_images/2525581584/huc1ooa74vj8jrcx0yep_normal.jpeg','Oct 22, 2012','02:51:00','260392849344958464'),
	(44390,'Mr. Player=Best sub ever!!!!! #lol #leggo #player @evan_hicks #Mr.Player @evan_hicks http://t.co/Xoaz6VdE','http://distilleryimage1.instagram.com/d8dc4e161c5411e28d2722000a1f8fa0_7.jpg','Spoole1003','http://a0.twimg.com/profile_images/2660947212/e278ef3903a4dbe0f6800736aa9b6110_normal.jpeg','Oct 22, 2012','02:51:00','260392849290436608'),
	(44391,'#goodmorning #running #fishing #bigfish early morning run and this guy pulls out this big ass fish out of th http://t.co/92VIv3cC','http://distilleryimage7.instagram.com/a06d66de1c5711e2aaa822000a1fb0dd_7.jpg','BUGATTIE1','http://a0.twimg.com/profile_images/2563194532/image_normal.jpg','Oct 22, 2012','02:51:00','260392860468277250'),
	(44392,'Part 1 Of My Mom And Lil Brother D\'arius Notes From Saturday Lol http://t.co/6CV3LCxK','http://distilleryimage2.instagram.com/c336eafa1c5711e283e622000a1fb86d_7.jpg','ILoveMy062611','http://a0.twimg.com/profile_images/2242391291/404972_322913367772046_100001601558961_890678_1576635222_a_normal.jpg','Oct 22, 2012','02:51:00','260392860065611777'),
	(44393,'Can I hit it in the morning?&lt;3\nSun rising while you moaning. ;) http://t.co/zWuxvLeU','http://distilleryimage6.instagram.com/cb617e981c5711e2a1fa22000a1c8697_7.jpg','_itsjusterinn','http://a0.twimg.com/profile_images/2638165658/8bd0835cc76ecf9db5f4ec0a72c8dcfb_normal.jpeg','Oct 22, 2012','02:51:00','260392867179139074'),
	(44394,'Good morning instagram!! Omw 2 school http://t.co/OGht5WnT','http://distilleryimage2.instagram.com/ddc7cb821c5711e2a77722000a9e0b2a_7.jpg','Mini_Snowflake','http://a0.twimg.com/profile_images/2698399861/91019d7027a5f4aba0f5d0e5beda321e_normal.png','Oct 22, 2012','02:51:00','260392858123657216'),
	(44395,'Monday morning ain\'t got nothing on me @swedishousemfia #UntilNow #BangBang ✌ http://t.co/1a4rK3Nw','http://distilleryimage7.instagram.com/c72fbb001c5711e2a95722000a9f09e9_7.jpg','Naddddiiiiaaaa','http://a0.twimg.com/profile_images/2656894193/b0eb89419d362ae684ccbdf6f240bb6a_normal.jpeg','Oct 22, 2012','02:51:00','260392870614274048'),
	(44397,'Don\'t I miss Kyn Hollering Ass being in . Lol the love you grow for your doctor ! http://t.co/Nkb7r94K','http://distilleryimage3.instagram.com/c866f2901c5711e2974222000a1c076c_7.jpg','_GorqeousKi','http://a0.twimg.com/profile_images/2734825513/8fb463c9c180be5b1a9ed5571d59e9a8_normal.jpeg','Oct 22, 2012','02:51:00','260392866294165505'),
	(44398,'Just one of those days. Good Morning http://t.co/LdlGF2yd','http://distilleryimage7.instagram.com/e55415cc1c5711e2a0d822000a1c42d1_7.jpg','DrunkOn_Lust','http://a0.twimg.com/profile_images/2705397676/2ea2dbe226ecea8aa6bb2ce3fc740975_normal.jpeg','Oct 22, 2012','02:51:00','260392873642565633'),
	(44399,'Spending my morning with Taylor Swift before work❤','http://distilleryimage2.instagram.com/d526e8321c5711e2a0c8123138105dba_7.jpg','rikki_nicole','http://a0.twimg.com/profile_images/2616634837/image_normal.jpg','Oct 22, 2012','02:51:00','260392857075081216'),
	(44400,'@Nynja_Cat , i dk too !!! @Adelinnniiieee http://t.co/yzNfm4AR','http://distilleryimage5.instagram.com/dd74ac9a1c5711e2a50222000a1fb870_7.jpg','bielieber_swagg','http://a0.twimg.com/profile_images/2750206366/35e4ebd76498da60aa2017adf019df4a_normal.jpeg','Oct 22, 2012','02:51:00','260392865878925312'),
	(44402,'Good morning world!! #morning #stillsleepy #hair #big #bighairdontcare #pompadour #tattoo #playitwithlove #g http://t.co/S1pk6q2e','http://distilleryimage8.instagram.com/e9e5433e1c5411e28ac522000a9f141e_7.jpg','rossinak21','http://a0.twimg.com/profile_images/2222943929/image_normal.jpg','Oct 22, 2012','02:51:00','260392856705957890'),
	(44403,'I\'m Bruno Mars and I Know it ;) #bruno #mars #lol #lunch #d\'cost #maybe #likeforlike #amazing #followforfoll http://t.co/JGqK6NvY','http://distilleryimage4.instagram.com/bb61e1541c5711e2ae7122000a9f0a14_7.jpg','rivannfahrezaa','http://a0.twimg.com/profile_images/2737356045/17a5d02a9be2ab77ec4ef176fcd368da_normal.jpeg','Oct 22, 2012','02:51:00','260392865505632256');

/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
