/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - multi_user
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`multi_user` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `multi_user`;

/*Table structure for table `downloads` */

DROP TABLE IF EXISTS `downloads`;

CREATE TABLE `downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `downloads` */

insert  into `downloads`(`id`,`filename`,`username`,`time`) values (1,'spam.txt','suresh','2021/04/23 16:11:32'),(2,'spam.txt','suresh','2021/04/23 21:10:50'),(3,'spam.txt','suresh','2021/04/23 21:11:06'),(4,'spam.txt','suresh','2021/04/23 21:11:14'),(5,'spam.txt','suresh','2021/04/23 21:11:23'),(6,'spam.txt','suresh','2021/04/23 21:11:40'),(7,'spam.txt','suresh','2021/04/23 21:12:06'),(8,'spam.txt','suresh','2021/04/23 21:22:19'),(9,'spam.txt','suresh','2021/04/23 21:24:32'),(10,'spam.txt','suresh','2021/04/23 21:24:58'),(11,'spam.txt','suresh','2021/04/23 21:25:07'),(12,'power bi.txt','shiva','2023/02/04 16:32:12');

/*Table structure for table `file_storage` */

DROP TABLE IF EXISTS `file_storage`;

CREATE TABLE `file_storage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) NOT NULL,
  `file` longblob NOT NULL,
  `block1` longblob NOT NULL,
  `block2` longblob NOT NULL,
  `block3` longblob NOT NULL,
  `username` varchar(45) NOT NULL,
  `up_time` varchar(45) NOT NULL,
  `mac1` varchar(45) NOT NULL,
  `mac2` varchar(45) NOT NULL,
  `mac3` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `file_storage` */

insert  into `file_storage`(`id`,`filename`,`file`,`block1`,`block2`,`block3`,`username`,`up_time`,`mac1`,`mac2`,`mac3`) values (1,'dengue.txt','efohvfagfwfsajtabanptrvjupacpsofauspqjdbmaejtfbtfadbvtfeaczauifaefohvfawjsvtatznqupntauzqjdbmmzacfhjoauisffaupagpvsuffoaebztabgufsajogfdujpoaaaaauijtanbzajodmvefabaijhiagfwfsaaifbebdifaawpnjujohaanvtdmfaboeakpjouaqbjotaaboeabadibsbdufsjtujdatljoasbtiasfdpwfszahfofsbmmzaublftauxpaupatfwfoaebztajoabatnbmmaqspqpsujpoapgadbtftaauifaejtfbtfaefwfmpqtajoupauifamjgfauisfbufojohaefohvfaifnpssibhjdagfwfsaasftvmujohajoacmffejohaampxamfwfmtapgacmppeaqmbufmfutaboeacmppeaqmbtnbamfblbhfaapsajoupaefohvfatipdlatzoespnfaaxifsfaebohfspvtmzampxacmppeaqsfttvsfapddvsta','efohvfagfwfsajtabanptrvjupacpsofauspqjdbmaejtfbtfadbvtfeaczauifaefohvfawjsvtatznqupntauzqjdbmmzacfhjoauisffaupagpvsuffoaebztabgufsajogfdujpoaaaaauijtanbzajodmvefabaijhiagfwfsaaifbebdif','aawpnjujohaanvtdmfaboeakpjouaqbjotaaboeabadibsbdufsjtujdatljoasbtiasfdpwfszahfofsbmmzaublftauxpaupatfwfoaebztajoabatnbmmaqspqpsujpoapgadbtftaauifaejtfbtfaefwfmpqtajoupauifamjgfauisfbuf','ojohaefohvfaifnpssibhjdagfwfsaasftvmujohajoacmffejohaampxamfwfmtapgacmppeaqmbufmfutaboeacmppeaqmbtnbamfblbhfaapsajoupaefohvfatipdlatzoespnfaaxifsfaebohfspvtmzampxacmppeaqsfttvsfapddvst','sandeep','2021/04/23 15:53:53','teu82n3pg6xow0lkfazy','xs2y8j3uck5p7g3rkv9i','gx8lz7hny4zoltbzfwtb'),(2,'spam.txt','jabtlfeazpvaupaepatpnfaxpslacvuacmbezavaibwfaepofatpnfapuifsatuvqjeaxpslazpvabsfavtfmfttasbtdbmboeatzdipabobmajaxjmmaljmmazpvajgavaepatbnfauijohaofyuaujnfaqmfbtfahpaupacvohaipmfa','jabtlfeazpvaupaepatpnfaxpslacvuacmbezavaibwfaepofatpnfapuifs','atuvqjeaxpslazpvabsfavtfmfttasbtdbmboeatzdipabobmajaxjmmal','jmmazpvajgavaepatbnfauijohaofyuaujnfaqmfbtfahpaupacvohaipmfa','sandeep','2021/04/23 15:54:53','zatuiv6drt26x2ew2s23','64ubcmbxb4ap8dc8tnum','bbat3bogsjaynpq0e5fq'),(3,'power bi.txt','trmaabewbodfeatrmarvfsjftqpxfsacjaab vfsaebubagbdupszaab vsfaaebubacsjdltaaebyaaqpxfsarvfszaaqpxfsaqjwpuaaebubaxbsfaipvtfaatopxagmblfaatusfbnamjufaafswjofqzuipo','trmaabewbodfeatrmarvfsjftqpxfsacjaab vfsaebubagbdupszaab ','vsfaaebubacsjdltaaebyaaqpxfsarvfszaaqpxfsaqjwpuaaebubaxbs','faipvtfaatopxagmblfaatusfbnamjufaafswjofqzuipo','shiva','2023/02/04 16:28:21','v0osnngot17wl66gqmnf','xnhmdugfnryjhaoa68co','skl2zynjt4xuv04bjpf7');

/*Table structure for table `file_view` */

DROP TABLE IF EXISTS `file_view`;

CREATE TABLE `file_view` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `mac1` varchar(45) NOT NULL,
  `mac2` varchar(45) NOT NULL,
  `mac3` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `file` longblob NOT NULL,
  `status` varchar(45) NOT NULL,
  `file_status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `file_view` */

insert  into `file_view`(`id`,`file_name`,`username`,`mac1`,`mac2`,`mac3`,`time`,`file`,`status`,`file_status`) values (1,'dengue.txt','sandeep','teu82n3pg6xow0lkfazy','xs2y8j3uck5p7g3rkv9i','gx8lz7hny4zoltbzfwtb','2021/04/23 15:53:53','efohvfagfwfsajtabanptrvjupacpsofauspqjdbmaejtfbtfadbvtfeaczauifaefohvfawjsvtatznqupntauzqjdbmmzacfhjoauisffaupagpvsuffoaebztabgufsajogfdujpoaaaaauijtanbzajodmvefabaijhiagfwfsaaifbebdifaawpnjujohaanvtdmfaboeakpjouaqbjotaaboeabadibsbdufsjtujdatljoasbtiasfdpwfszahfofsbmmzaublftauxpaupatfwfoaebztajoabatnbmmaqspqpsujpoapgadbtftaauifaejtfbtfaefwfmpqtajoupauifamjgfauisfbufojohaefohvfaifnpssibhjdagfwfsaasftvmujohajoacmffejohaampxamfwfmtapgacmppeaqmbufmfutaboeacmppeaqmbtnbamfblbhfaapsajoupaefohvfatipdlatzoespnfaaxifsfaebohfspvtmzampxacmppeaqsfttvsfapddvsta','Yes','Original File'),(2,'spam.txt','sandeep','zatuiv6drt26x2ew2s23','64ubcmbxb4ap8dc8tnum','bbat3bogsjaynpq0e5fq','2021/04/23 15:54:53','jabtlfeazpvaupaepatpnfaxpslacvuacmbezavaibwfaepofatpnfapuifsatuvqjeaxpslazpvabsfavtfmfttasbtdbmboeatzdipabobmajaxjmmaljmmazpvajgavaepatbnfauijohaofyuaujnfaqmfbtfahpaupacvohaipmfa','Yes','Original File'),(3,'power bi.txt','shiva','v0osnngot17wl66gqmnf','xnhmdugfnryjhaoa68co','skl2zynjt4xuv04bjpf7','2023/02/04 16:28:21','trmaabewbodfeatrmarvfsjftqpxfsacjaab vfsaebubagbdupszaab vsfaaebubacsjdltaaebyaaqpxfsarvfszaaqpxfsaqjwpuaaebubaxbsfaipvtfaatopxagmblfaatusfbnamjufaafswjofqzuipo','Yes','Original File');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gen` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `skey` varchar(45) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`name`,`pass`,`email`,`dob`,`gen`,`phone`,`state`,`country`,`status`,`skey`,`photo`) values (3,'shiva','shiva','shiva@gmail.com','2024-12-31','male','+91 81218-93257','ts','india','Yes','5647','shiva.jpg');

/*Table structure for table `userrequests` */

DROP TABLE IF EXISTS `userrequests`;

CREATE TABLE `userrequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `owner` varchar(200) DEFAULT NULL,
  `mac1` varchar(200) DEFAULT NULL,
  `mac2` varchar(200) DEFAULT NULL,
  `mac3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `userrequests` */

insert  into `userrequests`(`id`,`username`,`filename`,`status`,`owner`,`mac1`,`mac2`,`mac3`) values (1,'suresh','spam.txt','Yes','sandeep','zatuiv6drt26x2ew2s23','64ubcmbxb4ap8dc8tnum','bbat3bogsjaynpq0e5fq'),(2,'sandeep','power bi.txt','Yes','shiva','v0osnngot17wl66gqmnf','xnhmdugfnryjhaoa68co','skl2zynjt4xuv04bjpf7');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
