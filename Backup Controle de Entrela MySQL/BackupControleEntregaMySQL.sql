CREATE DATABASE  IF NOT EXISTS `banco_agenda` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `banco_agenda`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: banco_agenda
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_contato`
--

DROP TABLE IF EXISTS `tbl_contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contato` (
  `id_contato` int(11) NOT NULL AUTO_INCREMENT,
  `id_fk_contato_dono_agenda` int(11) NOT NULL,
  `email_contato` varchar(50) NOT NULL,
  `celular_contato` varchar(50) NOT NULL,
  PRIMARY KEY (`id_contato`),
  KEY `email_contato` (`email_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contato`
--

LOCK TABLES `tbl_contato` WRITE;
/*!40000 ALTER TABLE `tbl_contato` DISABLE KEYS */;
INSERT INTO `tbl_contato` VALUES (10,10,'lojascentral@bol.mail.com.br','(65) 92547823'),(11,11,'','(52)11115252'),(12,11,'','(11)9999999'),(13,11,'','1111111');
/*!40000 ALTER TABLE `tbl_contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dono_agenda`
--

DROP TABLE IF EXISTS `tbl_dono_agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_dono_agenda` (
  `id_dono_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `nome_dono_agenda` varchar(50) NOT NULL DEFAULT 'dono',
  `foto_dono_agenda` mediumblob,
  `sexo_dono_agenda` int(9) DEFAULT '1' COMMENT '0 = feminino, 1 = masculino',
  PRIMARY KEY (`id_dono_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dono_agenda`
--

LOCK TABLES `tbl_dono_agenda` WRITE;
/*!40000 ALTER TABLE `tbl_dono_agenda` DISABLE KEYS */;
INSERT INTO `tbl_dono_agenda` VALUES (10,'Lojas Central','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0È,\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0âÆ1šxÈèMTIpy5!—9Çõ­2’-©8§oÇ8ªaÜã—2Ž£½G)¢™pN¸ç9úRù©ïTÆþr)ÊGàQÊ56Zó:Â¤YFsùUbSÖ”2ôÎ*lirrûCÇëHFz\ZnéëÚ—\'(¤`ôæ£8Ï½<œÿ\0õê2Nxýi¡1ÒŽÜu¤lô\"—+Ž”É\0Þôn#­ Á§\r´	\0Í=xç›qŒPTà{R-!wdŸJÔ‡#¥ ?þºVÏ}hãÒšHÝT„Ø1>¦›¸âyÏÒ›Ðg4Éb–0)¼£ñ¤Èôâ‚ãåýiØŽÃ¿­3Ê•ÜÂþ´Ìã üê¬Cbò2=ò)6qž~hÜ6ãùÓr:Œ~4\0åsè)A\'9—zhn;qB¸Éï@\r sIæ§LS½¸¦qÚ‹\nã›EFÉÏQô 6;Òÿ\0hÕÄ+Jg4íÝ>cMÍ . ©6î=M5[ã\'4Ýõ¤Á2Mˆ:¿à)Á£`þ&«ð~¹¥\nX¥\"Àlò	ühÉã5$gƒùÒn=MŠæ$þT ó€ÇŽÆ¢ÉÏjPø¢ÃR,;~ö\r(rHËñïP	~´õ—píøÑb¹‰0qÀÓ	Jq~?‡JnsÉÇçJÃ¸n#\0ÒîÏj?ýTÑþy¢ÁqÀÆ”`}h\n=ÍHbE&RÃ¥.HâðzgëN\0ãüjYhnO½\"œç‚(Úyç½\"‚{óMR:F|ú¨ù‡lšI})Ø.0¹\"šNáÖ‘‰sŠ`nÍUˆl÷æšzõ‰¦8ª!Ïji|öÅ(ÈïÆ)…Zd1r0Oµ79ãùSwœu¤ß‘ÜÐ+Žã×¥&î¤ñô ÿ\0õRs@¿Üâƒ!ÚWÖ“¥x Z‰¸zt¤%H<sžÔ œÓv¶01jŽi¤d÷¥*ri¤sÖš\'·4åBýÔæ!ìEHŠÊßxc¿˜’\Zñlc¹ÑŒg&§bzqZaLðíI×a ¤óïJGSš]¤ôð¥ØOl}hÁíGÔ~U ‰ˆ£ÊoQJèvc2QÏµ(a¶—Ë#?0 =sLv`N@Á¤êz\Z˜\n1H6öRhw\"Ãg¥H÷¤,s1Iæžr?:Z†„Ã=¿*vN:U_´ry•MÎÃå^êZ4Œ‘(>´¼TE¥<„º+G>•<¥sÛr~Ni:÷úT+r„r>”	Ð\0G¥;0æDÄ\\v¦zO8÷Z˜g‡4ìÁÉ\nÜæ¢lc¥<É¸qù\ZicÔŒŠ¤CdD¯\'R¹éO-× ¦Ò¨†Æ`¿­4ðrMJqÖ˜WÜ~tÈØóíLÏ¨4âËœ\ZBê\0sÛŠvÄãÒñéHŽ{ƒHä’I4X.<ç“y¯=éŽ)2<Ña\\M‘Îh.vdzÔE¤ßŽôì$Éù€ü©Öš\\ÓKûR°Ñ°­Ç4¡‡r* nû81ìiò‘Ì[ó¥NõP1ã&—qæ§”®rç˜Åbû{ÕMþç4„Œ3K”®rèzCpœƒT²)¤ÑÊ?hËfT/)Þv©nä`Ò‰XqO”JeÑ>\0ý3IöŽ‡iªÞs…ô	^…ó–|ò€ši‘˜“ó¨Íêi¦Võýhå919Ú?:wÏŒ£ñª¥˜ñŸÖ’ˆÒ°s\"ÖùTuÏ¾j2îy$}j,Ÿ_Ö™ÏcEÈ°_=Bši—·úT=Ç4`S°s2q6Ñ€F>”žyç‘QcÞšF{Ó²²F—®OåM/îj3ŸQM9õìCl¸÷¦—úÓ~céHsê?:vBÔ]Çéy4„}?:iî)€âOz7Jaô˜÷ i}\r.sÖ˜ãš9Ò\\.9Í4…ìOçLú“Hqêh°*;\ZŒ‚)Ùæ“š\r¦ŸÆM9Í\"Ñ]nfÀÄÏ×¦iÿ\0k¸S4çÑ€«¶:º„¦;k”áwo,cç~¼=ª_øF]Æè¯>BxÜ»©äW•õ´´Mò•ñ[îÿ\0€PKÉÁûêßP)Æúe8*žøÿ\0õÔ‹¡Êé+-Î3Œ¼,¹9Ç¥d‡8cŸZ¿®„hÒ©ðØÓû|Øà(ÿ\0€Ñý¡/M‰ù\ZÍ,HíFÆ=\r/®;•õXv4~ß&>êýpi¿lŸþzÅEgüÊ ãÔƒŠ¶zþ´þ¶ÃêÐ[\Z\"ò\\Ÿœß\"“ísÄŠ8Ï Uíž´y‡ûß¥RÅ]uÕã}‘t]ÏÐÈxô•o&ÏúÆý*†öïSÖCè(X„úáãÙ\Zþ^œ¨Å!¾rxùU!?¨Áö§	S¹üëEZû37B=‹¢øw ü)ßmOîœýjžAÁ(\n+ERFn”¿kCÎ?…i]¹Ãc8ê*¡†ŽÇãOÚ2=”_jð¿‰4¢à‡\'ÐÕQë¸~t€Ü~Õ÷+ÙDºnPTþtßµÇÎF9õª¦DÇÀS\ZDê¡¿*Ÿ¬>ãTb÷ž¤d)ÁúS|åô?¥g´Š;S|ÁØ~µ?[h¯ª¦jyÉŒnÇ©ÏÓšÍó}¹õ¤ó;úÐñ£X$_ûRqÿ\0JO´¡þý*ç¡¤óIíQõÉw/êqì_71¶?\nÌxà·åYÆB3Ç¡› sŠ—ŽŸAýN‰¼‰z–ÿ\0¾hûd$ýóùVf8­&ßASõú‘_S§ÝšMáC9ôÔGO$ÿ\0ß_ýj£ƒÚŒv¨–6«êRÂR]/ó.I3Ì-øIý¢‡¤Mø‘TOÒ“ð¥õÚÝÿ\0!ýR—bøÔ#=Q‡â\rH·0Ï›b¦³8ý)6ŠkUo¨ž“ÛC±¶µ¶¶¿2Ä	åDym¶åŠŽÒÃø×å\'¥[•Îç\rÔûÓyn3°müºô5COPjFKù$´g€4i4cws¸”Œ“ê0qƒZ\0)1Êó˜¡Þ¼¹Gœª8zW’Qæ“Ðà©)ìîTµŽ6º¿w+L8!˜uÄtªWÖö¶±\\;AlÐ‰Êª&Ä|q»q#³ëŒæ¶\nhöï;Í®¨H$e¬Ä08ÇLú\Z.m´½BÒEOB«,»Õ¬øŒmö¬xrèÎš*qšm;iÓÐäUÎáaUGbÈ¬w•2H\'j½ouih.>×\\Ú²4h!!g#	Îï÷O\\õ¶!Ð|<ûä,]Übãýì§=ÿ\0JIt=*4ÊxºÏÌl€M„ z¹šor¦vJqooÁÿ\0ë«¯	\\x…tí?I»}:B‘Á\'Û¤.ƒ’UwƒË•s’£dÔ7cJY®ÖËG†t²RvÉu4r¢)P]ƒ\0,çÉH<\n·k£èöÂm/îî¥ÓÛb—<:ƒ@p}ëfÏÃ\Z~©©XÙ.©2´øWždL¼–.‡A\0ð8Î2Fk$­©=<ïúþ‚…hórÛ—éc}OCwöŸ\rí»’PèúTTBÙ`8àg×8ã­§5œúp´‰§!n‹9Áedc¸€ŒTÚ	 ã¬šÒÒÆÌ\\ÁªÊ#šG*hÊÌëÀ.7n!NŽ}y<ÝAša{c!wbÖ8+¹²~ðÏ\'\'=úÖÑ§-Óüã#Mê¯÷ÿ\0—êr—z]¡íõ=(ÔÁNÎ\0xxðYq‘¸¶sórj–¡\r½¥Û*[¤¨YŠž]£°\\°Rq×§9ÕjÑ¼6²7—a¨,³Ë‚Ì+`ó¸­P°‰b¼ü7*¬€¢ˆÐI’O\0%}kKT‹Õ¿ÀÒ¥R7Œ?¯™Ž4ÍVhM¿ös»ª¬Ðù0ƒäg.¾ÀpÙÇ8\0æ&šmP­Ö‘ª.dù%,l pFÓ’OEz~—á!<V[YËK8†[Y¬V/,A.Ürz¿Å©›\r:Ú\0i\rÍÖ3°¨eÔ3€N03S*ª\nò—â½§Y´¹?¯¿î<âÏÂÉsom<ðÏco,ÀyÓMó\'áB‘Œ}ï›ÐVæ¡ð¯V²‰®­l.uP	\\æ7*	ù¶´|gåùrHç>Ú\ZÝÅ‘ºžá#M6k,Ã?™¶H$ÉvS	N1‚ví÷ÅT¶ñ\rDÛ_ø’æâÆO1ˆ†RÎ­°¬¤gð:cæ5ËWYÃšŸõ÷À;0ôawí5ô×ó9ýÂwZ‡ˆ!°¼Ò¯¬¢–c£)¦rc!x\'Žp}q]‰|¤ÚÏÒ¢¾è‚Df.êåYÈÞ2]‚\r£ßÓ].‰câj5i.mZydû:µóÊÒ	B’ƒ%OpÚéÅ4^Þj·—VÑý¡Õî\"a,{@F*VUÀÈlôÅÅ×“ß\'ý}Ç¡KFZ5ýVêyžŸáMBúîì;¨\"µÓ¢Ž7)<ŒÃíÍZ»ð„V¶ðK‹4æ’DC3°eÜ	$åxFê=+«þÏñŒ_O×æ7i´KrÌÌZ`<Ãéƒ÷ÉÉÁõ¤¾mGÄp6­«é×T]	¬áÉ‘ÁûÒàsÎO§©¬\'šÎ›|Ïn‰;þ]LjåÊ;GúüÏ/²Ó­u«“˜×Ë,’-•‚9f\\tð9<p9­uðí›_M§À<ùhÉ!WÊäîQêB“ÜW©è\ZGØ¼GisiºÞ0»!­­Ò(Ù6—‚29\'¹®^kýEÔÏsq3Lñ·È\'vˆÆã†9œçÓ¶+¦Ž6UcÎŸ—ÌáÄá]7y+.¶õ<èiÚt—‚1w0G¶ób Èù  pHáHÎhm)ç±¶°]EîîÁ1ÂöñáñÓc‡ù‰çŒqŒsšíuû›¤ZêX6ÉæŒ»þ]¸9\'Œsõæ³§º™!€¦£qo<#¹Û¸ÆrpqŽ>¦ºcRm\\âöêé/Ôãîô«:âKkè¦µºC‡·š\"²\'\0‚AìAã×ñ©àÒ-\ZØÏ{-Š°>I–Í™eo@AÏM¼ã¹ô­ÍKVÓÞ¬õ¤Ô5	Ì¦w¿`JèF2¶qÏ\'·˜§Ÿ¤}š)5	/m„ˆæn¶åã,H\'Nã’Å~îâÀªb”Néü™Ô£ÍªØÁžÞc;nY¥Ý\Z=ˆS%³œçŒtÏj?³çY£ŠU(Ò…Ù´o%›¢ã çƒŸÿ\0Uhÿ\0fMa­e·0^¬‹\ZÁvêH`÷0îã\\C^¯¥xwÃ:‡mõŠææãìá¤ºˆÜYB‚áŒi´`œ?\\\ZÆ®5SŠmþ_ð\n_’üà&°†¸•<Í±Ç\'–Îà)qòç9;zv«éñÏ§ÅrššïµíYŸÌ‰s÷ØíÛ·ñÏlgŠõÔÑ¼/eh†ìÍmû6ùäªƒ¸+#BÄ.òA*y#¸‰s¥ü<šþÜYê‘/›&ÛÃý¡(V	ÆL*1¸/côî0Y‡:¼o÷\"¬º¯ÄóË:k{¿³†YYC§“/˜$¦Ò>÷áßŽ¢¡6„ dš[nöXË1QŒ’p½»šÞñ+‹N}?E»†çOŽO´Es«H§n0&Ú¨›FIã½`Gx±H’,1*yAŸ›*T±Ánþ™ÆF+®8‡%t±¹7ö=ãK$h±HÈ.ta´.âÙÎ\nß>ÝxªÒXÞDÉiqÕÞwÆAÛýìqïO¦ýšqå\\}¡åÞF”mŠ<ò\\–8ôÇC×¥2=Fö\0‚éÂÄad *>w(ƒdä{ÓöÒ+–=HT;9DVv\0±\n3ÀäŸ¥;ó±æõÇ­\\²¼ºƒ6´o’+Ém‰6Üü¬ü¤gŒÎµy&¤n–êKf2I,~T…V~I@Nÿ\0«šŸm;ÚÈcË{•æµŠÏÛm³‚Š$>¹QJ–ÖÅ“P†2yÚÛõµìZöÆÕžÙäžÊrà2§B¯\ZÅp[ŒŽ¾µŸ<BäH­¯Y§—¼vm»NÜŒq“Š¿i+ØÉY­%ùvš®Ÿ§B©q½ôÃ9šåAcÀ\n9$à\0\0ö«Wž Ñ®t˜RÇF_Ir»¦IC3*ÆC\00 ãžkˆKx˜e¦ìGZØŠYaÒœ~Z†rþríÜAŒõŽÕ—\'´\\½½ŠƒrZ¶f\\ÜM4Åçàôäc…:ÞçÈ}ùÎ2@#§Ò›,ì2É\"¶üôÉýi‰m#Ä²®ÎOMÀøTòikHÐ³–WEŽ]ì[‘X³“Ð£±Æ¯Z³sÍa[$ÛŽF)¶z…Å…£X¤Rmwóã”ïWÆ7/`q‘ŸsN·¹\Zxi’ÖäÈ¤a¥9	ÎA/>ôÔ)/‹s	Ô«{¥ÿ\0ØÓ¯†›,²J\'Wxöñœÿ\0xÕ½£êö÷:ŠN·Ñ™,Û%¥ùpz\nàÞýBí¦&fi¢23ž¯ò’ØÎ½:ÕÛD‰µ…ŽÞUV,ÊAÆ\0<nRÜŽ¼ŠÏÚB:@Ât9Ÿ4ž¾F¾«}k•§‡ÔÌß¸m–Æ0,[?ìüÜg9â«Yø­–H\ZÞ9\0m‹\Z³©ˆt\' æ¬kr6«¢év×7\Zeœ¶Ë²-0óF2ªwªå¹:Õ™gáxj1çE¿ýÜªcýjcŠ‹V“·õæ—àk\"”voúò:ÏøE½£Õcž+ˆšÚÚ1æEs…%‘Áç8çÒºÉáÕ¯²áÖn4uŽu¹|BP²a˜ÆªT0%Ï×CáýwO¿EŽÆê¸Yf_™QÕ”ä0ÉìqÍoË‰žY¦·-f÷ð¶ˆnSîw,	.IÎNr{šŠµ¹Õ£$îwQ¥ìÒ+Zïò=ÃEÖ</e§ÛOm& ­w\n²–F–V\r•V#$n#9Æ\0é\\‘·Ž{›Å·¸}&€ÑMpuÅÛ‘ýÒ01”|¹9Îk…Òˆ4·‡Nº“N´ó¼ÉÃßÛmÀcœä;U›}sÄÚ>>¡o5´r4ð¬—‘(^NYXIÏCÇ$ŽµÄè94ù–EÓóÿ\0;p¯]r½z·ÿ\0óPðže´{K›ù¦›÷“$è²Øão\\s¸œq×­jØX<mö+HmfÒæ¸Iw\Z¢+¸ +˜8\nÁÉÏ5ˆúzÜjés©jKdŠž@òîãP—9\'æù³õô<lX_i\ZŒ¶ãÅigd¤–Ò™9ùYÔ`t\'8ôr§9Ís;¥¯õý$tP«EGšÖ;\\Å%×ÚìâòÖÀ \r³#æù°Ôž˜ô®cI²×b±»‹Q.°^\"Í´€nº¦?úõ¯s­Ùjº¦¡êVfÊCÇ\0lAëœzbº\rtÚÍáý3P¶ÓJÃ³È…YF\n£‘H\'8ïÚ²©ˆj¬Zè¾ë»|¼üŒg‰„jB1•—]N{«¨Ì<1ë*J†<©+Î ãÞ¨Å£Goj5+»ëX&žXgÏîŸ\0²¨œ“Œò@­h6¡w¹kÛ¶LfÊ’:ž3þ4’j&Ki&Ò†–]£k{ˆg‘s±;¸$0+ÇçÒº1úU¥¯ëõ:ã<4ãîÎÿ\0™Ñx2ò×Iµ±µ–ío0²”{‚ÂBAbÀpy	,:Öûx{Fñ—{i¬î!Í6‘4`,d¡Çq“Ð×Å}©Å$ñ^hÖ’[ ó’%¹FeÇÝ “óƒøÖ„Ú—ˆêì­j;hÀ\0¼òþøea¸gåÈÿ\0…c*ƒR…·»þ’ô9k:ƒ¼µí¯ë¡ÔÝx/T±¸ûŽ$‘Ø»5ÔRùj¸ÈNFO8Ç.+[Iøu>±¢[^Ï¨CÓ.Z²oUäŽì\rrW?u-3_»Šùnnì­çxÀÉ]Ç8ÁÁ\0€}ú\ZÂ—âö®ÈÐþñm£˜=°PT Ãu<GÓšÛ\r:Ò«%4ù,¬üõ¿_CÇÄa¨´§ëÔÉø‰¤O¡ø¾êÉØOIR\rŠãhl“È\'´n<NÚ¿Š\"¶¶{ïÞ;™™±#~égƒžøÍrÞ#Õ¤Ö¯¾Õ5äÅ’±,¨WhÉ<{ç5P±ñ,\02–\'+Ðƒ¿á]ªVW3•8Ê\n2[zÿ\0À:Ä‘Új›§ÒìVÖáÿ\0w }Åav\0`cƒÏ^1ê)_R´›Oó!Ö5Iãxñ-°šya=0%99ôëŠæ-ô˜¢°KØu{‹™-åÚFd€ØÄ¨\\AïÇzlwóè²=žm®¡™WÌ]ÄÆH\'JúS÷e+²eG’<´Ý¾ðæ”sY=Ò\\]Í«¬¦w©Œºã¹Çá]‡†5Ÿéö·°ëZLP¤¦kÙ\'\\°>Yr¸ÇÊ:ŽíØâ¸û[‹&ò£¹Ô–+†à$”\'$cvk©°6PhZŠ·¹šP©Í4‘’à NœzóŠÎ¤S^é>ÙBZþ¦§‡4O\0xƒ\\¼µŠ¤óm™£‚K}ÌXv1¶Ð£\ná‡9ã¥uÚ¯Â?Ï¢~ãÉ´DHÌ×¡Â.ÕV;˜ýÓÊxÇJâü)¬x„ß¯•{ˆšÞHÑÙpXƒèIû¾†¼ÇU¿Ô®§žÒñæXü÷”XÆäÃ±\'åL‘ß½Da.mJ„•W¡Ó_øsÁš^¡¨Xßkw	qjÀD!Òq»Ÿ˜·ŽG¯µÍÃ¤Úë3-¾…×ÚUYäK©ã\0 TñÏ·\'Ò«Ã£^ÜÚE=¬~pwhÌi÷£*3óÙ\0Ö||òW2ZèI¤iö•Ù¥s£_éì$¹ò¢ù¾]²+Ý¾PIˆ«²[km<PÞ[]É#®èÄÖÄ9SžUŠôÎ}¸®‹Ãþ0ðÖ›áÈ—TÐ%Ôu¼ÀÎ)ŽOÈXè‚väþ®‹AñN…¬É%Æs%ŽÈ„·‘&B¶pæ aŽµ’­;Ù«}äIKNdŸ™çÖ–¶ˆn5+6\n`>H22’ÛC:)<Ž3]Þ­áË9¼­\"Úýmö‚ÂkÔ\'|dŽ•×éÞŽÖæPÐÜÍ~«æZÇ%Ìo•,ÆJçÁé^uy­ë6w×K$PÌ’°’8­ãÚ­“0:UF½/jéÞítÛðÔS£V¤ùt}ÙÍcj~ZH–rº0áâÔý\næ“û>ø;‘Žþ[:Ô³ðÕé\'›ä9¶©!±œf´.4GN„Ë_Ï ä´sdcÜuü…mÈí®€ñ*öM3	4½^X¶-ÓG×˜ÎâjWþÓ´’çQöÚ¥Ð`{‘Òø‡Pqå¤¸\\œn˜sž§ëM“T¿š)#–îGWP¬§€r;zÒmw+÷—Õ\"Ý†¥,’2Ë3–1ÎI ž9ª÷º´Ó­Ä)pæÝœìÏ_B+;’Û™g““Ö®Gsl¡ó¦í,›CGpëŽ¹<ç9þ•œ’{¢ùlîGöë¸íÞÙ®Y¢tU(y\0W)¢‹‹‹‹©…Ìä3mòð¨©;|£¯½24µ{Þ´ÑÁ×€î=$VE¦šà‘©˜ÎNöÌ8íÊ“JÑNö+šÅyòðå‚daXä¯ýzè4\rnnïêÆÚdšØÅ,ÏQžû§Œ’ÇÐó“YÓiBkÖê.ÍÎûHàuÜZ·Ñï‘Ý£³v\0`¼²cŽ¿)Íg6¹u[™’@$ÔÖÝš5RÊÃ—E õÇ$ãð®÷RðNŸ>›KËÓ$P‘¸ØFFC1èŸÐõõÍq¿Ù‚9•æŽæ0\0%Z\0ŸÇñÿ\0&ºK+kO,*ñØ*Ã5É‰Är$Ó&Sz4RƒÃ˜åŠ=E\'q°H\r«€¹PN1ž0@\'Ô7(’‘qj˜ès\"úÿ\0y+@Û[Asp`&K‰æ9Üq´ãû÷¯CðŸ‡¶Ä×W²¼`¦÷,wmN¤Ÿðÿ\0\ZæX©§£nþ‹ô..RÙ~æy¾­áû¸5«çWUa3|¦E$~ô¬ù´;§LH¶ÎAùYePqÜ`¿ç½{ªYÅ¨]½Æm ,>éAÈ‚O¯­mÚiw2¶—zZ‚9-o¸þYGQ´ 9$ð_†‡ÛgšæDŽÎÚ5’u2íG†¶ï—\'óÆ+Õu­7FÖtí=.T¡òå†+vv‡Ë9r¹æ\\œq×‘Õ5í2}7ìžeÅœï$ãf€¬È:±FÉÛÎÞÝûU«ÈLºe¥¥Œ¦+¹ZW‚&¬ßt™È%¹IZòqu%ífêJÒ²î­ªí××ôžÖ<\ZïD¾ŠåáºƒÌ19W)uÜ§Cß‘Ö¡÷þR[ÇýåØ‡#ŒgÒ¾€Û$¿bðá\\Zy,½ˆ<ç úÖ\rï†Ä<ýŽÁT|¢+ÕUä’¾ß×™/š=?¯¸ñÅ±ÔU|ÑxD…¶à¡Ü1ÎO·<~5©¦èzÔö7°½ÕÅ¬8ó²§)žœþ^ÝkÔl¼;g©YÉ\Zz&¡ÌNwyˆO ð<ôõ¬}WIó´É•\"\0^4ˆ*JÝ8Æÿ\0=©WÅÎ1½÷3•Vµ·õ÷yâwÔí<Au›™‰.øÈ9ÁÒ«Áu´öžl³p%‘y\0w$àvæ½\nK}CW¹’O³›‰›™q\0bprXñÓ\'&³F´loÀ0Øà‰\"ÃbsŽ¿/=3Š!Žr²ŠØ#ˆÑ\'¼šËHÓ.4%´»Ð­\"•X<—QË¸Æ¸ÆÓ€G^õhèz4ñÛC\ZZG$R<Æâ5f•‹)XôÀíRÃâ‹¨ tŽØF“¦æòÝÐ8©=}iÄ®Ì|Æ¿váN1×ªÂ¡b´³Ž»îSÅ\'%÷êþý})´ÿ\0K£­¿Ú7G¶\"°”Ü6Ò3ÓúÖ¼Þacyen¶ƒÉ==ë¯Ñ—ÃúÏˆQ.dÔ<ùc£³Æl±9v1Œñ­(“áäs˜æ“TR¬AbÈW#ýÊÓëS“ÓO˜½´¯ucËµ/Ü[4Q«€þP8È9\'88êxöªk Í¥Â¸u?&I„p<õ¯xº?õë˜î.µ;‹‰œ\0ZQ.æ\0p8ÿ\0=kVÓÃ>¸IÙ©(¾{å‡ržq]ÄU·-Ó~¨¿i\'²_‰óMÜ&M>ÎÊÖÚØÏn]¥ž,ù³ ©s¸Œ(àtª©¥º¢³ÊñÉÔ…SÇã^µáŸ†^ûn²Ú¾©äX[Ý­f	š00Cg ÏNäŠÝ“á‘MskâyÜ6Ýí\Z8ö,¤V±Å{·Šºù5¶ŠûÙáI¦È¥¼»‰¶sŒŒ|U»cÓâ½ó¬íîÍÅ»@*1òXw¦\0à×°]ü<†\r0gk¶·— “\"HÂdçäàç®xúb¹+½;XÓŠ¼ÚQš RE6=OÊIÅdñ“–œºz¢]O#ƒþÏ˜iÊ W™›çB2BŒãý®žâ©­³\"Ü#G#|¡w È?0>œô®éuëR.tpÊ¤’¬Äuàà{ñJºï†fÂe\'‰Î§ëMcj-é7éoó\Z×o¿üŽ[IÔ¯ôõa¯eœ`,LFZ§<¯$òI%Ù–GbÏ#Fà±\'’x®â{­2PéWP1ëº@~E.«ig£OWPÓB³§–ñ¸ØÝ3€pxéSly¹½›Mù u¥k^ëúò9HüEy»£Kub¸áç [Ð\n—þ\\0\"h—1OÌÖŸü ócþBhxÀÍ³\'ü ×í1ùàßã^›œŽ/k†}¾ïø2.7\\M+Eo#ÊÅ›t9\0ž¸¹§HÛ¾Ïlƒ¸XxýMu+à›ðË³PµÇ«DÜ~ ðUÜXi5kEQÜ@ßãY»ßbÞ*—I_qÉ,@òc@;âqS¬!—@ãªÚ¯óÅuá¨Áùõ®?é¦?,µY‹Ã›U»”t\"¦ÍCNß×ÌOÿ\0Ÿùªˆ(û‡¶mùí«Q4r°O´.öìWòk¨mMgÝ)ÏŸ<¸÷û¿…[ƒF²hÂKelÊ@Ãy²³g¿_Óc8ÌŸ¬Eêsko,“,À›@8ãýÞ*Õ¹–ÒGy4D7%óømÅu0x{I³™qÕ˜¶~ æ´¡Ó¬‘Á\Zu²¾xýÐëùV2¡[¤¿3?os6úÕØ‹k_ÚÊ?é¬@ÿ\0|•þUuµØöµézmÆsÂ–RÃÛ*õÔÇk\0a!¶U“\"P@úõ­Û5˜í\'Oï·èJŸªâ[ßòÿ\0#jr¤Þÿ\0á¸,¯`Y‡-áf<y–ñ“cü«oV¾Aÿ\0ô·ÝdÊtwì3þÏóúUÍ{[±ðîž©lÍý¡8\"0ÌO–;¹öížÿ\0pñë˜*FÍÛs|Äû“Þ¹ªS•7Ê÷ëc¹Ô§ÚçSeqdŠÙ³€;WGo&ŒöøkP	ôùñ\\mˆ¡³<[Ÿô­‹oÄ±ábL·RHÅsÆrƒÙ~fÑ«µ—è.¯¤hÏ\ZyVW\'Ì`â-#©\0óËax=…giÒ=å¢Üé¢%ŽGQ/,s¿9ÉÜp¤ã±#\"®êºþ§v–«§ÍnU·ª•9ãïAž=k›‹Ä×m©ovI,UòŠIÁ9`\0åxõ5äb£UÊ|½zím»iåò×©”ç;Ì6šD·rÉ%¥ËÊÌK‚Å€lò9äsPÜ&—&;FÁ‚§‘éBxÈA)pðÈâ5Þc°3ÎqÖª\\øÖÖLÀ8ùºWª­È’wá³6U!»i|Ê_l[;Ä–Ð:ÉS‚N==¸\"ºkË]+ÅZT7íòžJÊcx[Ë¸`úqÜ}kŒ½ñ\\äÆI§=.âñ§ß¡¸\nÐHBÍÀ\\ðÞä,Ö”eËîÍhÿ\03U¦Ý®hM£XÚÈ~È\'PçË`—dnRAÆ8®CÄƒP¼ÒÚXãx®@e’}ÂPFBç=ˆÍu~5‡L¸ÚÊ-ÅÄjLD®e<àc<åX};×ßgºi­<1VVˆ¢ƒþÏ¨ç¯®Gj‰V6Ò…½*ŠÏFw/ è­¥„6ÿ\0h©É¸0ÁÈÇ-íúZç.¼?.âaTzXØÇ¬‚±«¸QÀ>õï2¡òÝ—ØŽ*£‹¤ôTíóÿ\0€a$ßRäš^©måÎ#è-ãñTs£º›|­¹G+Œ0xéY1j—žkG$˜aüŽö9çò«ë70¡o´Ì¼už~™­ã{8~#PšÙŽš÷]RwÝŸ”g\nÒ\0sèvãÖ°<K±s`—Ln rÌ»ó·ŒnëI5Û™Q	š@XŽrä\rmé:–—,7cUº¹\">BÇó\'PŽœU*žÊJJ\Z¢ãÌ™æþ½Ô»˜*¿ÙÔ7~?Ê»8MÜq˜Ôì„îÛä²‚{qÓ=«>ÔÇi\"\\Ãi²éA$‚C¼u#Ö‰Öî£?4lNHêOÂ«5VwKòI7-–ãYvá”ãá€ã¿¿çKw ÙL“¤É¿¡Y.â+,ø’BvÔ¨çñÅDu«’x B‹NËtbã.……ðÅÜÒôùÚíðq\\±Ç^Vª>ö­¹þæxõÏZ·câËÍ2à\\ÚºE6v‡HÔ78ô¨dñ-Ê’|•?D<{Ójrè_½a÷š¼Ú¹K½VÞRJHUà0*¢¶”Ê	B9ÇêK/Î°Å#¨\0’¥súõ®¢?j\Z•­½ð°Ò\'re‰[#Ç=e(rÊÎëÐ¤¤Ùˆôû…ýÜªÙþì‹Ÿçš³ý¥\0”™AîP×‡<èâÊìÅ?Âzóøgòª%Å¬Œ-Lð¨<¦àkÝX¨Tm&cõ:oág¨%õ›ôœƒéS†ILwG\0¯þ=kÌ\"×5ˆ\ryæ(ê%\\~df®Åâë¨Ïï¬,§ºoŒþ‡ÛìCÁIlzB*H:–Áç$õ§‹XÉUÏ¹¬=újÌÏµÜN2ßtžxSßÏ¨¶¬¿vi1èMfªÿ\0tç•\'fÍ8-Ô1ÈŒ¡þ\r£¯Ö¯E°|ˆÑ[Õpý+	Vdn$\'Ø®jäWW(1”#Ð¡¤ñQ]\Z³.ÎqtÓ6ãµ#ˆ‚îzœ€£ÜþF±%ñ,ÑäZZÅC$¸ç„ý+J=UÕZ)ìmå‰†Xd¨¨æµ²ÔFºtð°éäLHðšÂ¾&úÅ”â¶¶¦!ñN½8\nº“Ç“À…<}H\0þu·Ú‹nw×„÷G•¿×šÜ_ê³ 6q<Ùê’,NzÒ²¦±šÏœ…ç%‡ëÏjâ•Y_Þ¹¤£4®2ÎÒYØl77\\dŸþ¹­µ«c×¨š`@ PqøŸ®+•»ñŽœ[Ë™¥ rc;PMÇ‚~‚²%ñÞ½yòiO4jND¹\'ÛqþT}Gˆø}Ò©¤•Ú=.Ò[F|ËÄNrÙÀRjÍæ§áH`2^\\ÚoÎÑ´”\0{àá¿­x¬‰©ßo{íHÇæMÄýväþ´Õ²°²o2v7giàÇÇàXÿ\0JŸõ~-Þ®!ú\'oó5U¬¬¢ŸËþõ;Ÿü4xÐMup¥[.3\0ü´œò½ø=…f|?’v’cwå)ÙÂã€Öù°Ç9õà×¥¤Ù:É6áÆÊqú\Zëo¾1Üj\ZbiÏo¦ˆáˆÇ°é](Âò¨©KN¼Ì\\ÒzòþÐÄ_§Ù¯îã#\0G!È#þxüërÚûÂ7«‹K»izªÌ=ùÆ}?úÕä·šæ›víç[#.âI—Ÿ™j3¦Ø\\F¯x2»Õ¼°OÓ*Eg,%uZq~·ýÚ8ïÀõ›‹3‘XÐÆÿ\0ýoëT®4ÈV•\\®þH»[êqî+Íà‹X°xç²Ô÷ùE2yúãùÕõñ®¯fÌšœÊF2éÉ?ïõüóR²zðÖy—õêCq—C­Kûë%1[ßNŠ?å™\"Dÿ\0¾XKÿ\0	\rüÒ”YÜ>ì–»3øÆEcÁ¬ÙßÂ$ù`œ|Ì6“ìÝ?:¿k£jºÂCae4’¿*sŽ;œ“€=ë9BP|²2‹›v->¿m÷/tÖˆc“k8 }ÇþÍT¦Õt¶†F…œÑdˆ‚$Æ¶ÂßJ¾míåœlFíÎÒ0Ï²Œ~µq~\ZèÚ|>eýåÝûœ¦!‹Ô¶3Áçð®ˆáïñGð4”¯#†¸7Ñ ûLhç¾hR§Ðî_ëW’Î³®ýfÝò0v]Cþ çßÐÿ\0Â= ¤‚H´‹t*Û6çCžø\'2ãGÒ¥GUÓ,ÕñEVù5)Á+[C5([KœóèSËÊÏ«ü%f³ù04‡ÃÎ#VVl18\0ð{«Óu-:\r8yÓØBðÁ\"û§ý¡ž>½*¨‚ÂA¸ZÄyÈ\n?Ïë\\Îje¯ëÔ.·F•¯…¥¶ Ek1ÁÀàýsWµ˜V¸Å£Åf#ŒFc†&Úv’2}ÿ\0Ï5äéq¨2i“dq˜æ»ßH@‹¤5²ºÛßDÇ<yá{Ÿöiû³÷¬ÿ\0¯™I6·üŸðHA/mï<Qý‚¼mï÷OøU}7UƒIÕVå<Û˜­±!Šá·+q’	/LÕms]’ëRžâôe‘Ë ‘‚&}zU*r”¬®.Vú—dððp9Iç×>•^Mò¾j¯9ÆOóÅfA­Mæ=íò§Bc”’?2*ô7Å‰+®_®y ©ïõzÑÒœ7l9_r\'ÑdSò²ýw\Z,¦ÁÙÃ`sÐ`U†ší]D\ZÅÁCÜãÀ“š®òëÑHâ±p„ä8š$üÃ(\"®)KG/¼\\’îzo‡&ð¤žœßûVÃµË·NMØ\'Ðõã)ñ–nVMŠ­÷{qù*…¶¬Öí~q²c>¸Ïz[M>óÄ´Æ§\r<œ$CÓý£ì(¡„•:‰ô^[ë×»6zk-‘ŠÊ|ÀŠ»É8P ÇØWc xI0—z©bÊÚŒõsý+cJðí¦Œ7ÄL·$sq*ŒeÂ?ÎjÄò]4ÁT„‡ûêr/ð¯EÞZ-z˜®ovy¬&QT*/T``(kœ©îFk\"1#±_´LØ#éõ«	\rÐ`Ry$ôfàï¹Ë¢.B’yŒÆmàÿ\0Ï@xú`Š¿œÎI«g¡,êØ`Ô6ˆë1óíÇóÅk[:¯U<zP°ó›Ôj¢E½Jòæcw;Ê pAõÍvúgÙã $![¶l æ¹/b·.ìñ$h›¥o•@ç$×â?ˆ7šµ´–ZAkvËx¿$³zª‘Ê¯®9> WG°$›:©TOc¶ñïÄ?I¶›IÒ®çRbc˜Äß-¸î‡»`r=¸Ïj—÷ºqH`ŸŸ8f#&r}³ïU¼è-c	g\ZÆ¾¸ä}?»øsïM²µ¸¿œ¬L\0cóJù<ÿ\0ìÇÚ²r75œ¹µ+‹QÑÞ#q1lnŸç<öT/áÍv\Z?ÃýkZ*÷—ÙÖgEÀ,à³Æ?µsHþÏÑÔK\nî¸ ;à¹õÇ÷\nÑO˜Îß0ûóÚ¸«bkÉZ\Z/ëä8Êï=N»Bøcá]:$7I¨ÊH%î›å\'ýÅÂþyªž)ø3áYË>•i:‹d¤gÊfôhúcýÜ®1T´ïKwpEq°YØü¨£«óÉÀï]m¶¶‰%º#L…Ec“Œ÷õ\'©©£ZiÞ]ÈÊ›Wòuþ—w¢êwzmüF;«Yr&s‚;ƒÜ ÒYi“ßÜ,ìÌç·°÷®¯â\0:¦¯ayÍÅæõvþö Ÿ oÈ\nAZnœÅ\0ÙdŸöˆþ¦»©b}¥(Ínÿ\0áŒå[Ý\\½L«¹-4•[D²]mùä—œgóþUé>øYsªXÁ«xžöêiFû{d13)èÎGÝtQÏ#‘Ò¼»Â–‰ªø®Î+½¯wž`ç‰)‘”ývãñ¯~0–á0 ±äŒq\\ØÚÓ¥jpÝõ5NøÙwPøsá‰-„pÚ½žH\'lýHl†?^k€Õü	¨ibG°»[è6’T\0t9Vüÿ\0\në§ñ8a–nœg=j§öäO\"3KŸ›<ñ^]:¸˜K™?Ô™¼<ô<¢óK¶]çËxd?ÉHö(x?¥iøwÄšß….ÍÖ?ŸÎY0J8\'ÑõU?©âF¶Šù£1‰Îèå2PžHãµc^iÍdä¬‚X³òL£ñ«Ù¥‰sKœä÷£¡î^ø‹¢xÖar#²Õÿ\0YŸ*çþ™¿¾œn3V5tëOõ¾\\2rI1œu šùÍ¤YÕLãçÎåuá×ƒžÿ\0ÏÞ»m+Ç2Ë:v¿<“D¬>Í©gsFÝ„™ëõ?ŽzÖóJZÛR\'&ÑÐjš¦õÿ\0F‰¢ebk‡V\\øŠç‰•\\Ý[+°í\0ýo]Ú‰Cµïsó(dUÓ%khçU_ÜŽ6ˆÉ=k›•œRm³bˆî“k¢$¸ÁÈaìò¬‹‹7‚m™‰œ¦ì˜úvêGÐôª?hq&0ŠÀž3Èÿ\0\nÔ³Ôu1Nëæö,FÓ#kž®½ÑJM#.kkˆÁUšÏswbJƒÆª‹;»Li\"(ù]%GÐgŸÆµõ\"+œÏŽ;£ÕˆÂÈ}Ðû×3<ñÛÏ%½Í¼‘H\0ùX¨óŽ99¬6¶FðmìXž	RŸ2Ž›¶ãøETž×}Ã+Çò„^@ï“Ô~ö¡¶$Â·*HÚeŒn\0G­u£$Îe’ád!@ë†<ôÈÏ~†·JpW±­ÙRßOtœb9‘Ð¨ ÇWI®iZ\r·‡l.,µ/:êUÌðàâ<täsŸÇƒšÌ:‹«q4Àu‚pGü¨HF ÓâhÒàK’2¦FÕ\0~½ê’MŠÝÌÃx`€CÁMNºª0à~g™<.’p Lõ¨·Hœ\rËíšô=Œ$M\r;D‚Yµ %‘nÆ}Ž¿Aù×Ký´%Ž+uHac°£ðÆ(tYN\\¨‚!ŸåN¦EÄ1!b8ÌAsø×-5º9ªMOY‘oq^§î†ÿ\0ëT«Gm\ZÉxÞTdðO š«ªê:~ˆ¦Þ( ¹ÔqÊ•ùbÿ\0x÷>ÃñÅq·Ïw3K3ñ» ôŒ¥ð¢©ÑMmdvÇÆÚd|k¹qì«ýjÄ>;Ó[­/ûTãõ¯9!ºcŸ¥.o&³äKSW‚¤z‚xçHãq¹O÷¡ÿ\0V¿á5ÑÂdÝ:)îa`?^H%aÂ“Žüu©`žŸÌ™Ü³À>¦®ó[2Ÿ™Þk^ ]RE…ý™NV Hó=ý½ó¬§3îIŽÒ°¡ÔbIT²ÈN$ÎŸwª*@#„Ÿ1ú‘ü#Ö²œfÙJƒVŠ/\rFÂ=F8/E\'yˆggg¿åÍ[:õ¥¿ú›èå@¥UD„×qõÏ­q~[}å$ƒÈÏZz‡=Mh©¤Ž¯«Ç¹ÔÂAæ|ÁðOn˜ü)‹­¹“`QžXž\0®l©FiÛ‰Œ.:sùQìâú©C±ÚØx¶Fhbá¹yJŒ¹ƒ°ôZÒ_ÊŠ%˜ÊÈØ$Ž0¬qŸAÓç>[çpSÇ$ŽÕ£¤yÃY‚Ttyp~‚²Y²]4“eÛ=ÕÂËp²§Ùãù<Å#q8ö§w—sÀ |èTÇn)·úÁE?jÞB¨	žy9Ïò¬øõè˜á‘—ÉƒY¨ËtŽ{IÙ¤exvôéÚý¥Ó6Ð†>Çƒú^—w­i+b©\Zôs#cuÒ®Îùé\\S?[ƒS‚2\\îB½	<{õªW³Jš•ÁÝÉ·ä:Òt£V\\Ít:%Uêurë²·ÈpsZ¦úÃ4/ë\\³\\9bXú‚h.[v3Ó®hŽ\Z(¨Ð‚ØÛŸTg· ¿Ì¯Øu´ôÍJ{ˆb 4§_Ž8õÏ¶?Zã‰-ÆI?ZiQ×´t¢Õ†á+#©¾‘b¼[iPFò.äl§¶óUÆaÃ `C)û¿B;×0ÃëZÖW?jC®ÞbŽ~ðõúÑÉÊŒjQåWGg xˆÛ²ÿ\0ÑzG¼äÃìtýWé]Ož\Z=ãqœŽEy‚²¨û§+Üö5YöÈ3ÙÝKêèŽGâ*/©Ç,:›ÑØôÉí­¦v”‰7°Œm€}	÷ª·VIn&“yIÉ#ÔW‰5˜ÇÍxdÇüõ@ß©«¶Þ,ÕÌ‹\ZÃÁnùd}°j9\"~¯R=NÆÖövýÍÄ\0t<XØÿ\07SÓmµ6OÃ¨ÂL oOñÕÎŸOì¿Ò$ˆŸGeÏÐ0æ¬Gã\r5Î—1ÿ\0ÀU‡è¥c*sÝ\"=•Dî‘—s¦ÜÙHa¹¶I¤Ñôqê=ýAéY’E0ù[ÎDþ%‘7sùW\\úÖE-Û\';dŒí„z}AªËaªRÓW‚XÈáe`ÅG±ëùæ¥NQÝÆm|Hçà¹—n×Gp¼ÈU—èOQí@‹ÌVmŒèÒyãŒz×Gý‹z¨Z\'WÂRLÈãùÕVÓoaÞM´¨Äs$<þc\'4•xßBÕTÌc~i1†ES·ç¼Û#\rfÉwa±¤rÛžE]ºÒ£Xå¸¹ÄK¶1,$mÎ3Çäk,é¤ˆÎ=ë¾¦ö7‡\'sÔá´™°Òì1Ò±µ¿}œ5žœø|bKÐ{\'¿¿nÔQYJm»3ÏÃÁNMË¡ÅM PjÄõc­VñJÇª´Bvn”o=€ü¨¢¨¡O^”Ý€g¨¯=h¢„1ÁWq8çÖ¤TSÜ~Š)2d4<ç¯j< zQE&ÙLU¶’Y$\0»°E¤œÖ§¹D[™,Õ¶)ÄŒþ8ÏãEá«Ô¨I¶Ár¹Ö§…äŠ+¹a–HÞ8R§è¼~ÑET’4–¨¡q<÷\ZâY$`:ÈÙ5OÊŠ(D-,rI7 |Ê­ÊÒÏwï\"H\0d©ÇòÅP4ýâ±GÝ<zQuwRÁ[,qÜ~Y¢Š,¬h˜—V¿eºšÜ¶ñvoÄ`Ô$zE¢îŒ“viè@?…&Â¤2ü¤s‘EÂìy’eùK¸#±Ï‚y¸ýãþtQ@$»$aR¬ÄŒh¢•8¡Cö,qî)sƒœqïE¬CD‘1ÏÍœîœÓÃ²²•uVîAÏ×ÚŠ*æeÕ¾ŒŸ¾±°ã÷OŒUˆµmE>hod+èòdãñëEŒ¡¶3”ÿ\0	&¤S\0oím9ü…0ë×\'m„,øäð3ùƒEJœ;£ôGÿÙ',1),(11,'Armazem jujuca','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0È,\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0âÆ1šxÈèMTIpy5!—9Çõ­2’-©8§oÇ8ªaÜã—2Ž£½G)¢™pN¸ç9úRù©ïTÆþr)ÊGàQÊ56Zó:Â¤YFsùUbSÖ”2ôÎ*lirrûCÇëHFz\ZnéëÚ—\'(¤`ôæ£8Ï½<œÿ\0õê2Nxýi¡1ÒŽÜu¤lô\"—+Ž”É\0Þôn#­ Á§\r´	\0Í=xç›qŒPTà{R-!wdŸJÔ‡#¥ ?þºVÏ}hãÒšHÝT„Ø1>¦›¸âyÏÒ›Ðg4Éb–0)¼£ñ¤Èôâ‚ãåýiØŽÃ¿­3Ê•ÜÂþ´Ìã üê¬Cbò2=ò)6qž~hÜ6ãùÓr:Œ~4\0åsè)A\'9—zhn;qB¸Éï@\r sIæ§LS½¸¦qÚ‹\nã›EFÉÏQô 6;Òÿ\0hÕÄ+Jg4íÝ>cMÍ . ©6î=M5[ã\'4Ýõ¤Á2Mˆ:¿à)Á£`þ&«ð~¹¥\nX¥\"Àlò	ühÉã5$gƒùÒn=MŠæ$þT ó€ÇŽÆ¢ÉÏjPø¢ÃR,;~ö\r(rHËñïP	~´õ—píøÑb¹‰0qÀÓ	Jq~?‡JnsÉÇçJÃ¸n#\0ÒîÏj?ýTÑþy¢ÁqÀÆ”`}h\n=ÍHbE&RÃ¥.HâðzgëN\0ãüjYhnO½\"œç‚(Úyç½\"‚{óMR:F|ú¨ù‡lšI})Ø.0¹\"šNáÖ‘‰sŠ`nÍUˆl÷æšzõ‰¦8ª!Ïji|öÅ(ÈïÆ)…Zd1r0Oµ79ãùSwœu¤ß‘ÜÐ+Žã×¥&î¤ñô ÿ\0õRs@¿Üâƒ!ÚWÖ“¥x Z‰¸zt¤%H<sžÔ œÓv¶01jŽi¤d÷¥*ri¤sÖš\'·4åBýÔæ!ìEHŠÊßxc¿˜’\Zñlc¹ÑŒg&§bzqZaLðíI×a ¤óïJGSš]¤ôð¥ØOl}hÁíGÔ~U ‰ˆ£ÊoQJèvc2QÏµ(a¶—Ë#?0 =sLv`N@Á¤êz\Z˜\n1H6öRhw\"Ãg¥H÷¤,s1Iæžr?:Z†„Ã=¿*vN:U_´ry•MÎÃå^êZ4Œ‘(>´¼TE¥<„º+G>•<¥sÛr~Ni:÷úT+r„r>”	Ð\0G¥;0æDÄ\\v¦zO8÷Z˜g‡4ìÁÉ\nÜæ¢lc¥<É¸qù\ZicÔŒŠ¤CdD¯\'R¹éO-× ¦Ò¨†Æ`¿­4ðrMJqÖ˜WÜ~tÈØóíLÏ¨4âËœ\ZBê\0sÛŠvÄãÒñéHŽ{ƒHä’I4X.<ç“y¯=éŽ)2<Ña\\M‘Îh.vdzÔE¤ßŽôì$Éù€ü©Öš\\ÓKûR°Ñ°­Ç4¡‡r* nû81ìiò‘Ì[ó¥NõP1ã&—qæ§”®rç˜Åbû{ÕMþç4„Œ3K”®rèzCpœƒT²)¤ÑÊ?hËfT/)Þv©nä`Ò‰XqO”JeÑ>\0ý3IöŽ‡iªÞs…ô	^…ó–|ò€ši‘˜“ó¨Íêi¦Võýhå919Ú?:wÏŒ£ñª¥˜ñŸÖ’ˆÒ°s\"ÖùTuÏ¾j2îy$}j,Ÿ_Ö™ÏcEÈ°_=Bši—·úT=Ç4`S°s2q6Ñ€F>”žyç‘QcÞšF{Ó²²F—®OåM/îj3ŸQM9õìCl¸÷¦—úÓ~céHsê?:vBÔ]Çéy4„}?:iî)€âOz7Jaô˜÷ i}\r.sÖ˜ãš9Ò\\.9Í4…ìOçLú“Hqêh°*;\ZŒ‚)Ùæ“š\r¦ŸÆM9Í\"Ñ]nfÀÄÏ×¦iÿ\0k¸S4çÑ€«¶:º„¦;k”áwo,cç~¼=ª_øF]Æè¯>BxÜ»©äW•õ´´Mò•ñ[îÿ\0€PKÉÁûêßP)Æúe8*žøÿ\0õÔ‹¡Êé+-Î3Œ¼,¹9Ç¥d‡8cŸZ¿®„hÒ©ðØÓû|Øà(ÿ\0€Ñý¡/M‰ù\ZÍ,HíFÆ=\r/®;•õXv4~ß&>êýpi¿lŸþzÅEgüÊ ãÔƒŠ¶zþ´þ¶ÃêÐ[\Z\"ò\\Ÿœß\"“ísÄŠ8Ï Uíž´y‡ûß¥RÅ]uÕã}‘t]ÏÐÈxô•o&ÏúÆý*†öïSÖCè(X„úáãÙ\Zþ^œ¨Å!¾rxùU!?¨Áö§	S¹üëEZû37B=‹¢øw ü)ßmOîœýjžAÁ(\n+ERFn”¿kCÎ?…i]¹Ãc8ê*¡†ŽÇãOÚ2=”_jð¿‰4¢à‡\'ÐÕQë¸~t€Ü~Õ÷+ÙDºnPTþtßµÇÎF9õª¦DÇÀS\ZDê¡¿*Ÿ¬>ãTb÷ž¤d)ÁúS|åô?¥g´Š;S|ÁØ~µ?[h¯ª¦jyÉŒnÇ©ÏÓšÍó}¹õ¤ó;úÐñ£X$_ûRqÿ\0JO´¡þý*ç¡¤óIíQõÉw/êqì_71¶?\nÌxà·åYÆB3Ç¡› sŠ—ŽŸAýN‰¼‰z–ÿ\0¾hûd$ýóùVf8­&ßASõú‘_S§ÝšMáC9ôÔGO$ÿ\0ß_ýj£ƒÚŒv¨–6«êRÂR]/ó.I3Ì-øIý¢‡¤Mø‘TOÒ“ð¥õÚÝÿ\0!ýR—bøÔ#=Q‡â\rH·0Ï›b¦³8ý)6ŠkUo¨ž“ÛC±¶µ¶¶¿2Ä	åDym¶åŠŽÒÃø×å\'¥[•Îç\rÔûÓyn3°müºô5COPjFKù$´g€4i4cws¸”Œ“ê0qƒZ\0)1Êó˜¡Þ¼¹Gœª8zW’Qæ“Ðà©)ìîTµŽ6º¿w+L8!˜uÄtªWÖö¶±\\;AlÐ‰Êª&Ä|q»q#³ëŒæ¶\nhöï;Í®¨H$e¬Ä08ÇLú\Z.m´½BÒEOB«,»Õ¬øŒmö¬xrèÎš*qšm;iÓÐäUÎáaUGbÈ¬w•2H\'j½ouih.>×\\Ú²4h!!g#	Îï÷O\\õ¶!Ð|<ûä,]Übãýì§=ÿ\0JIt=*4ÊxºÏÌl€M„ z¹šor¦vJqooÁÿ\0ë«¯	\\x…tí?I»}:B‘Á\'Û¤.ƒ’UwƒË•s’£dÔ7cJY®ÖËG†t²RvÉu4r¢)P]ƒ\0,çÉH<\n·k£èöÂm/îî¥ÓÛb—<:ƒ@p}ëfÏÃ\Z~©©XÙ.©2´øWždL¼–.‡A\0ð8Î2Fk$­©=<ïúþ‚…hórÛ—éc}OCwöŸ\rí»’PèúTTBÙ`8àg×8ã­§5œúp´‰§!n‹9Áedc¸€ŒTÚ	 ã¬šÒÒÆÌ\\ÁªÊ#šG*hÊÌëÀ.7n!NŽ}y<ÝAša{c!wbÖ8+¹²~ðÏ\'\'=úÖÑ§-Óüã#Mê¯÷ÿ\0—êr—z]¡íõ=(ÔÁNÎ\0xxðYq‘¸¶sórj–¡\r½¥Û*[¤¨YŠž]£°\\°Rq×§9ÕjÑ¼6²7—a¨,³Ë‚Ì+`ó¸­P°‰b¼ü7*¬€¢ˆÐI’O\0%}kKT‹Õ¿ÀÒ¥R7Œ?¯™Ž4ÍVhM¿ös»ª¬Ðù0ƒäg.¾ÀpÙÇ8\0æ&šmP­Ö‘ª.dù%,l pFÓ’OEz~—á!<V[YËK8†[Y¬V/,A.Ürz¿Å©›\r:Ú\0i\rÍÖ3°¨eÔ3€N03S*ª\nò—â½§Y´¹?¯¿î<âÏÂÉsom<ðÏco,ÀyÓMó\'áB‘Œ}ï›ÐVæ¡ð¯V²‰®­l.uP	\\æ7*	ù¶´|gåùrHç>Ú\ZÝÅ‘ºžá#M6k,Ã?™¶H$ÉvS	N1‚ví÷ÅT¶ñ\rDÛ_ø’æâÆO1ˆ†RÎ­°¬¤gð:cæ5ËWYÃšŸõ÷À;0ôawí5ô×ó9ýÂwZ‡ˆ!°¼Ò¯¬¢–c£)¦rc!x\'Žp}q]‰|¤ÚÏÒ¢¾è‚Df.êåYÈÞ2]‚\r£ßÓ].‰câj5i.mZydû:µóÊÒ	B’ƒ%OpÚéÅ4^Þj·—VÑý¡Õî\"a,{@F*VUÀÈlôÅÅ×“ß\'ý}Ç¡KFZ5ýVêyžŸáMBúîì;¨\"µÓ¢Ž7)<ŒÃíÍZ»ð„V¶ðK‹4æ’DC3°eÜ	$åxFê=+«þÏñŒ_O×æ7i´KrÌÌZ`<Ãéƒ÷ÉÉÁõ¤¾mGÄp6­«é×T]	¬áÉ‘ÁûÒàsÎO§©¬\'šÎ›|Ïn‰;þ]LjåÊ;GúüÏ/²Ó­u«“˜×Ë,’-•‚9f\\tð9<p9­uðí›_M§À<ùhÉ!WÊäîQêB“ÜW©è\ZGØ¼GisiºÞ0»!­­Ò(Ù6—‚29\'¹®^kýEÔÏsq3Lñ·È\'vˆÆã†9œçÓ¶+¦Ž6UcÎŸ—ÌáÄá]7y+.¶õ<èiÚt—‚1w0G¶ób Èù  pHáHÎhm)ç±¶°]EîîÁ1ÂöñáñÓc‡ù‰çŒqŒsšíuû›¤ZêX6ÉæŒ»þ]¸9\'Œsõæ³§º™!€¦£qo<#¹Û¸ÆrpqŽ>¦ºcRm\\âöêé/Ôãîô«:âKkè¦µºC‡·š\"²\'\0‚AìAã×ñ©àÒ-\ZØÏ{-Š°>I–Í™eo@AÏM¼ã¹ô­ÍKVÓÞ¬õ¤Ô5	Ì¦w¿`JèF2¶qÏ\'·˜§Ÿ¤}š)5	/m„ˆæn¶åã,H\'Nã’Å~îâÀªb”Néü™Ô£ÍªØÁžÞc;nY¥Ý\Z=ˆS%³œçŒtÏj?³çY£ŠU(Ò…Ù´o%›¢ã çƒŸÿ\0Uhÿ\0fMa­e·0^¬‹\ZÁvêH`÷0îã\\C^¯¥xwÃ:‡mõŠææãìá¤ºˆÜYB‚áŒi´`œ?\\\ZÆ®5SŠmþ_ð\n_’üà&°†¸•<Í±Ç\'–Îà)qòç9;zv«éñÏ§ÅrššïµíYŸÌ‰s÷ØíÛ·ñÏlgŠõÔÑ¼/eh†ìÍmû6ùäªƒ¸+#BÄ.òA*y#¸‰s¥ü<šþÜYê‘/›&ÛÃý¡(V	ÆL*1¸/côî0Y‡:¼o÷\"¬º¯ÄóË:k{¿³†YYC§“/˜$¦Ò>÷áßŽ¢¡6„ dš[nöXË1QŒ’p½»šÞñ+‹N}?E»†çOŽO´Es«H§n0&Ú¨›FIã½`Gx±H’,1*yAŸ›*T±Ánþ™ÆF+®8‡%t±¹7ö=ãK$h±HÈ.ta´.âÙÎ\nß>ÝxªÒXÞDÉiqÕÞwÆAÛýìqïO¦ýšqå\\}¡åÞF”mŠ<ò\\–8ôÇC×¥2=Fö\0‚éÂÄad *>w(ƒdä{ÓöÒ+–=HT;9DVv\0±\n3ÀäŸ¥;ó±æõÇ­\\²¼ºƒ6´o’+Ém‰6Üü¬ü¤gŒÎµy&¤n–êKf2I,~T…V~I@Nÿ\0«šŸm;ÚÈcË{•æµŠÏÛm³‚Š$>¹QJ–ÖÅ“P†2yÚÛõµìZöÆÕžÙäžÊrà2§B¯\ZÅp[ŒŽ¾µŸ<BäH­¯Y§—¼vm»NÜŒq“Š¿i+ØÉY­%ùvš®Ÿ§B©q½ôÃ9šåAcÀ\n9$à\0\0ö«Wž Ñ®t˜RÇF_Ir»¦IC3*ÆC\00 ãžkˆKx˜e¦ìGZØŠYaÒœ~Z†rþríÜAŒõŽÕ—\'´\\½½ŠƒrZ¶f\\ÜM4Åçàôäc…:ÞçÈ}ùÎ2@#§Ò›,ì2É\"¶üôÉýi‰m#Ä²®ÎOMÀøTòikHÐ³–WEŽ]ì[‘X³“Ð£±Æ¯Z³sÍa[$ÛŽF)¶z…Å…£X¤Rmwóã”ïWÆ7/`q‘ŸsN·¹\Zxi’ÖäÈ¤a¥9	ÎA/>ôÔ)/‹s	Ô«{¥ÿ\0ØÓ¯†›,²J\'Wxöñœÿ\0xÕ½£êö÷:ŠN·Ñ™,Û%¥ùpz\nàÞýBí¦&fi¢23ž¯ò’ØÎ½:ÕÛD‰µ…ŽÞUV,ÊAÆ\0<nRÜŽ¼ŠÏÚB:@Ât9Ÿ4ž¾F¾«}k•§‡ÔÌß¸m–Æ0,[?ìüÜg9â«Yø­–H\ZÞ9\0m‹\Z³©ˆt\' æ¬kr6«¢év×7\Zeœ¶Ë²-0óF2ªwªå¹:Õ™gáxj1çE¿ýÜªcýjcŠ‹V“·õæ—àk\"”voúò:ÏøE½£Õcž+ˆšÚÚ1æEs…%‘Áç8çÒºÉáÕ¯²áÖn4uŽu¹|BP²a˜ÆªT0%Ï×CáýwO¿EŽÆê¸Yf_™QÕ”ä0ÉìqÍoË‰žY¦·-f÷ð¶ˆnSîw,	.IÎNr{šŠµ¹Õ£$îwQ¥ìÒ+Zïò=ÃEÖ</e§ÛOm& ­w\n²–F–V\r•V#$n#9Æ\0é\\‘·Ž{›Å·¸}&€ÑMpuÅÛ‘ýÒ01”|¹9Îk…Òˆ4·‡Nº“N´ó¼ÉÃßÛmÀcœä;U›}sÄÚ>>¡o5´r4ð¬—‘(^NYXIÏCÇ$ŽµÄè94ù–EÓóÿ\0;p¯]r½z·ÿ\0óPðže´{K›ù¦›÷“$è²Øão\\s¸œq×­jØX<mö+HmfÒæ¸Iw\Z¢+¸ +˜8\nÁÉÏ5ˆúzÜjés©jKdŠž@òîãP—9\'æù³õô<lX_i\ZŒ¶ãÅigd¤–Ò™9ùYÔ`t\'8ôr§9Ís;¥¯õý$tP«EGšÖ;\\Å%×ÚìâòÖÀ \r³#æù°Ôž˜ô®cI²×b±»‹Q.°^\"Í´€nº¦?úõ¯s­Ùjº¦¡êVfÊCÇ\0lAëœzbº\rtÚÍáý3P¶ÓJÃ³È…YF\n£‘H\'8ïÚ²©ˆj¬Zè¾ë»|¼üŒg‰„jB1•—]N{«¨Ì<1ë*J†<©+Î ãÞ¨Å£Goj5+»ëX&žXgÏîŸ\0²¨œ“Œò@­h6¡w¹kÛ¶LfÊ’:ž3þ4’j&Ki&Ò†–]£k{ˆg‘s±;¸$0+ÇçÒº1úU¥¯ëõ:ã<4ãîÎÿ\0™Ñx2ò×Iµ±µ–ío0²”{‚ÂBAbÀpy	,:Öûx{Fñ—{i¬î!Í6‘4`,d¡Çq“Ð×Å}©Å$ñ^hÖ’[ ó’%¹FeÇÝ “óƒøÖ„Ú—ˆêì­j;hÀ\0¼òþøea¸gåÈÿ\0…c*ƒR…·»þ’ô9k:ƒ¼µí¯ë¡ÔÝx/T±¸ûŽ$‘Ø»5ÔRùj¸ÈNFO8Ç.+[Iøu>±¢[^Ï¨CÓ.Z²oUäŽì\rrW?u-3_»Šùnnì­çxÀÉ]Ç8ÁÁ\0€}ú\ZÂ—âö®ÈÐþñm£˜=°PT Ãu<GÓšÛ\r:Ò«%4ù,¬üõ¿_CÇÄa¨´§ëÔÉø‰¤O¡ø¾êÉØOIR\rŠãhl“È\'´n<NÚ¿Š\"¶¶{ïÞ;™™±#~égƒžøÍrÞ#Õ¤Ö¯¾Õ5äÅ’±,¨WhÉ<{ç5P±ñ,\02–\'+Ðƒ¿á]ªVW3•8Ê\n2[zÿ\0À:Ä‘Új›§ÒìVÖáÿ\0w }Åav\0`cƒÏ^1ê)_R´›Oó!Ö5Iãxñ-°šya=0%99ôëŠæ-ô˜¢°KØu{‹™-åÚFd€ØÄ¨\\AïÇzlwóè²=žm®¡™WÌ]ÄÆH\'JúS÷e+²eG’<´Ý¾ðæ”sY=Ò\\]Í«¬¦w©Œºã¹Çá]‡†5Ÿéö·°ëZLP¤¦kÙ\'\\°>Yr¸ÇÊ:ŽíØâ¸û[‹&ò£¹Ô–+†à$”\'$cvk©°6PhZŠ·¹šP©Í4‘’à NœzóŠÎ¤S^é>ÙBZþ¦§‡4O\0xƒ\\¼µŠ¤óm™£‚K}ÌXv1¶Ð£\ná‡9ã¥uÚ¯Â?Ï¢~ãÉ´DHÌ×¡Â.ÕV;˜ýÓÊxÇJâü)¬x„ß¯•{ˆšÞHÑÙpXƒèIû¾†¼ÇU¿Ô®§žÒñæXü÷”XÆäÃ±\'åL‘ß½Da.mJ„•W¡Ó_øsÁš^¡¨Xßkw	qjÀD!Òq»Ÿ˜·ŽG¯µÍÃ¤Úë3-¾…×ÚUYäK©ã\0 TñÏ·\'Ò«Ã£^ÜÚE=¬~pwhÌi÷£*3óÙ\0Ö||òW2ZèI¤iö•Ù¥s£_éì$¹ò¢ù¾]²+Ý¾PIˆ«²[km<PÞ[]É#®èÄÖÄ9SžUŠôÎ}¸®‹Ãþ0ðÖ›áÈ—TÐ%Ôu¼ÀÎ)ŽOÈXè‚väþ®‹AñN…¬É%Æs%ŽÈ„·‘&B¶pæ aŽµ’­;Ù«}äIKNdŸ™çÖ–¶ˆn5+6\n`>H22’ÛC:)<Ž3]Þ­áË9¼­\"Úýmö‚ÂkÔ\'|dŽ•×éÞŽÖæPÐÜÍ~«æZÇ%Ìo•,ÆJçÁé^uy­ë6w×K$PÌ’°’8­ãÚ­“0:UF½/jéÞítÛðÔS£V¤ùt}ÙÍcj~ZH–rº0áâÔý\næ“û>ø;‘Žþ[:Ô³ðÕé\'›ä9¶©!±œf´.4GN„Ë_Ï ä´sdcÜuü…mÈí®€ñ*öM3	4½^X¶-ÓG×˜ÎâjWþÓ´’çQöÚ¥Ð`{‘Òø‡Pqå¤¸\\œn˜sž§ëM“T¿š)#–îGWP¬§€r;zÒmw+÷—Õ\"Ý†¥,’2Ë3–1ÎI ž9ª÷º´Ó­Ä)pæÝœìÏ_B+;’Û™g““Ö®Gsl¡ó¦í,›CGpëŽ¹<ç9þ•œ’{¢ùlîGöë¸íÞÙ®Y¢tU(y\0W)¢‹‹‹‹©…Ìä3mòð¨©;|£¯½24µ{Þ´ÑÁ×€î=$VE¦šà‘©˜ÎNöÌ8íÊ“JÑNö+šÅyòðå‚daXä¯ýzè4\rnnïêÆÚdšØÅ,ÏQžû§Œ’ÇÐó“YÓiBkÖê.ÍÎûHàuÜZ·Ñï‘Ý£³v\0`¼²cŽ¿)Íg6¹u[™’@$ÔÖÝš5RÊÃ—E õÇ$ãð®÷RðNŸ>›KËÓ$P‘¸ØFFC1èŸÐõõÍq¿Ù‚9•æŽæ0\0%Z\0ŸÇñÿ\0&ºK+kO,*ñØ*Ã5É‰Är$Ó&Sz4RƒÃ˜åŠ=E\'q°H\r«€¹PN1ž0@\'Ô7(’‘qj˜ès\"úÿ\0y+@Û[Asp`&K‰æ9Üq´ãû÷¯CðŸ‡¶Ä×W²¼`¦÷,wmN¤Ÿðÿ\0\ZæX©§£nþ‹ô..RÙ~æy¾­áû¸5«çWUa3|¦E$~ô¬ù´;§LH¶ÎAùYePqÜ`¿ç½{ªYÅ¨]½Æm ,>éAÈ‚O¯­mÚiw2¶—zZ‚9-o¸þYGQ´ 9$ð_†‡ÛgšæDŽÎÚ5’u2íG†¶ï—\'óÆ+Õu­7FÖtí=.T¡òå†+vv‡Ë9r¹æ\\œq×‘Õ5í2}7ìžeÅœï$ãf€¬È:±FÉÛÎÞÝûU«ÈLºe¥¥Œ¦+¹ZW‚&¬ßt™È%¹IZòqu%ífêJÒ²î­ªí××ôžÖ<\ZïD¾ŠåáºƒÌ19W)uÜ§Cß‘Ö¡÷þR[ÇýåØ‡#ŒgÒ¾€Û$¿bðá\\Zy,½ˆ<ç úÖ\rï†Ä<ýŽÁT|¢+ÕUä’¾ß×™/š=?¯¸ñÅ±ÔU|ÑxD…¶à¡Ü1ÎO·<~5©¦èzÔö7°½ÕÅ¬8ó²§)žœþ^ÝkÔl¼;g©YÉ\Zz&¡ÌNwyˆO ð<ôõ¬}WIó´É•\"\0^4ˆ*JÝ8Æÿ\0=©WÅÎ1½÷3•Vµ·õ÷yâwÔí<Au›™‰.øÈ9ÁÒ«Áu´öžl³p%‘y\0w$àvæ½\nK}CW¹’O³›‰›™q\0bprXñÓ\'&³F´loÀ0Øà‰\"ÃbsŽ¿/=3Š!Žr²ŠØ#ˆÑ\'¼šËHÓ.4%´»Ð­\"•X<—QË¸Æ¸ÆÓ€G^õhèz4ñÛC\ZZG$R<Æâ5f•‹)XôÀíRÃâ‹¨ tŽØF“¦æòÝÐ8©=}iÄ®Ì|Æ¿váN1×ªÂ¡b´³Ž»îSÅ\'%÷êþý})´ÿ\0K£­¿Ú7G¶\"°”Ü6Ò3ÓúÖ¼Þacyen¶ƒÉ==ë¯Ñ—ÃúÏˆQ.dÔ<ùc£³Æl±9v1Œñ­(“áäs˜æ“TR¬AbÈW#ýÊÓëS“ÓO˜½´¯ucËµ/Ü[4Q«€þP8È9\'88êxöªk Í¥Â¸u?&I„p<õ¯xº?õë˜î.µ;‹‰œ\0ZQ.æ\0p8ÿ\0=kVÓÃ>¸IÙ©(¾{å‡ržq]ÄU·-Ó~¨¿i\'²_‰óMÜ&M>ÎÊÖÚØÏn]¥ž,ù³ ©s¸Œ(àtª©¥º¢³ÊñÉÔ…SÇã^µáŸ†^ûn²Ú¾©äX[Ý­f	š00Cg ÏNäŠÝ“á‘MskâyÜ6Ýí\Z8ö,¤V±Å{·Šºù5¶ŠûÙáI¦È¥¼»‰¶sŒŒ|U»cÓâ½ó¬íîÍÅ»@*1òXw¦\0à×°]ü<†\r0gk¶·— “\"HÂdçäàç®xúb¹+½;XÓŠ¼ÚQš RE6=OÊIÅdñ“–œºz¢]O#ƒþÏ˜iÊ W™›çB2BŒãý®žâ©­³\"Ü#G#|¡w È?0>œô®éuëR.tpÊ¤’¬Äuàà{ñJºï†fÂe\'‰Î§ëMcj-é7éoó\Z×o¿üŽ[IÔ¯ôõa¯eœ`,LFZ§<¯$òI%Ù–GbÏ#Fà±\'’x®â{­2PéWP1ëº@~E.«ig£OWPÓB³§–ñ¸ØÝ3€pxéSly¹½›Mù u¥k^ëúò9HüEy»£Kub¸áç [Ð\n—þ\\0\"h—1OÌÖŸü ócþBhxÀÍ³\'ü ×í1ùàßã^›œŽ/k†}¾ïø2.7\\M+Eo#ÊÅ›t9\0ž¸¹§HÛ¾Ïlƒ¸XxýMu+à›ðË³PµÇ«DÜ~ ðUÜXi5kEQÜ@ßãY»ßbÞ*—I_qÉ,@òc@;âqS¬!—@ãªÚ¯óÅuá¨Áùõ®?é¦?,µY‹Ã›U»”t\"¦ÍCNß×ÌOÿ\0Ÿùªˆ(û‡¶mùí«Q4r°O´.öìWòk¨mMgÝ)ÏŸ<¸÷û¿…[ƒF²hÂKelÊ@Ãy²³g¿_Óc8ÌŸ¬Eêsko,“,À›@8ãýÞ*Õ¹–ÒGy4D7%óømÅu0x{I³™qÕ˜¶~ æ´¡Ó¬‘Á\Zu²¾xýÐëùV2¡[¤¿3?os6úÕØ‹k_ÚÊ?é¬@ÿ\0|•þUuµØöµézmÆsÂ–RÃÛ*õÔÇk\0a!¶U“\"P@úõ­Û5˜í\'Oï·èJŸªâ[ßòÿ\0#jr¤Þÿ\0á¸,¯`Y‡-áf<y–ñ“cü«oV¾Aÿ\0ô·ÝdÊtwì3þÏóúUÍ{[±ðîž©lÍý¡8\"0ÌO–;¹öížÿ\0pñë˜*FÍÛs|Äû“Þ¹ªS•7Ê÷ëc¹Ô§ÚçSeqdŠÙ³€;WGo&ŒöøkP	ôùñ\\mˆ¡³<[Ÿô­‹oÄ±ábL·RHÅsÆrƒÙ~fÑ«µ—è.¯¤hÏ\ZyVW\'Ì`â-#©\0óËax=…giÒ=å¢Üé¢%ŽGQ/,s¿9ÉÜp¤ã±#\"®êºþ§v–«§ÍnU·ª•9ãïAž=k›‹Ä×m©ovI,UòŠIÁ9`\0åxõ5äb£UÊ|½zím»iåò×©”ç;Ì6šD·rÉ%¥ËÊÌK‚Å€lò9äsPÜ&—&;FÁ‚§‘éBxÈA)pðÈâ5Þc°3ÎqÖª\\øÖÖLÀ8ùºWª­È’wá³6U!»i|Ê_l[;Ä–Ð:ÉS‚N==¸\"ºkË]+ÅZT7íòžJÊcx[Ë¸`úqÜ}kŒ½ñ\\äÆI§=.âñ§ß¡¸\nÐHBÍÀ\\ðÞä,Ö”eËîÍhÿ\03U¦Ý®hM£XÚÈ~È\'PçË`—dnRAÆ8®CÄƒP¼ÒÚXãx®@e’}ÂPFBç=ˆÍu~5‡L¸ÚÊ-ÅÄjLD®e<àc<åX};×ßgºi­<1VVˆ¢ƒþÏ¨ç¯®Gj‰V6Ò…½*ŠÏFw/ è­¥„6ÿ\0h©É¸0ÁÈÇ-íúZç.¼?.âaTzXØÇ¬‚±«¸QÀ>õï2¡òÝ—ØŽ*£‹¤ôTíóÿ\0€a$ßRäš^©måÎ#è-ãñTs£º›|­¹G+Œ0xéY1j—žkG$˜aüŽö9çò«ë70¡o´Ì¼už~™­ã{8~#PšÙŽš÷]RwÝŸ”g\nÒ\0sèvãÖ°<K±s`—Ln rÌ»ó·ŒnëI5Û™Q	š@XŽrä\rmé:–—,7cUº¹\">BÇó\'PŽœU*žÊJJ\Z¢ãÌ™æþ½Ô»˜*¿ÙÔ7~?Ê»8MÜq˜Ôì„îÛä²‚{qÓ=«>ÔÇi\"\\Ãi²éA$‚C¼u#Ö‰Öî£?4lNHêOÂ«5VwKòI7-–ãYvá”ãá€ã¿¿çKw ÙL“¤É¿¡Y.â+,ø’BvÔ¨çñÅDu«’x B‹NËtbã.……ðÅÜÒôùÚíðq\\±Ç^Vª>ö­¹þæxõÏZ·câËÍ2à\\ÚºE6v‡HÔ78ô¨dñ-Ê’|•?D<{Ójrè_½a÷š¼Ú¹K½VÞRJHUà0*¢¶”Ê	B9ÇêK/Î°Å#¨\0’¥súõ®¢?j\Z•­½ð°Ò\'re‰[#Ç=e(rÊÎëÐ¤¤Ùˆôû…ýÜªÙþì‹Ÿçš³ý¥\0”™AîP×‡<èâÊìÅ?Âzóøgòª%Å¬Œ-Lð¨<¦àkÝX¨Tm&cõ:oág¨%õ›ôœƒéS†ILwG\0¯þ=kÌ\"×5ˆ\ryæ(ê%\\~df®Åâë¨Ïï¬,§ºoŒþ‡ÛìCÁIlzB*H:–Áç$õ§‹XÉUÏ¹¬=újÌÏµÜN2ßtžxSßÏ¨¶¬¿vi1èMfªÿ\0tç•\'fÍ8-Ô1ÈŒ¡þ\r£¯Ö¯E°|ˆÑ[Õpý+	Vdn$\'Ø®jäWW(1”#Ð¡¤ñQ]\Z³.ÎqtÓ6ãµ#ˆ‚îzœ€£ÜþF±%ñ,ÑäZZÅC$¸ç„ý+J=UÕZ)ìmå‰†Xd¨¨æµ²ÔFºtð°éäLHðšÂ¾&úÅ”â¶¶¦!ñN½8\nº“Ç“À…<}H\0þu·Ú‹nw×„÷G•¿×šÜ_ê³ 6q<Ùê’,NzÒ²¦±šÏœ…ç%‡ëÏjâ•Y_Þ¹¤£4®2ÎÒYØl77\\dŸþ¹­µ«c×¨š`@ PqøŸ®+•»ñŽœ[Ë™¥ rc;PMÇ‚~‚²%ñÞ½yòiO4jND¹\'ÛqþT}Gˆø}Ò©¤•Ú=.Ò[F|ËÄNrÙÀRjÍæ§áH`2^\\ÚoÎÑ´”\0{àá¿­x¬‰©ßo{íHÇæMÄýväþ´Õ²°²o2v7giàÇÇàXÿ\0JŸõ~-Þ®!ú\'oó5U¬¬¢ŸËþõ;Ÿü4xÐMup¥[.3\0ü´œò½ø=…f|?’v’cwå)ÙÂã€Öù°Ç9õà×¥¤Ù:É6áÆÊqú\Zëo¾1Üj\ZbiÏo¦ˆáˆÇ°é](Âò¨©KN¼Ì\\ÒzòþÐÄ_§Ù¯îã#\0G!È#þxüërÚûÂ7«‹K»izªÌ=ùÆ}?úÕä·šæ›víç[#.âI—Ÿ™j3¦Ø\\F¯x2»Õ¼°OÓ*Eg,%uZq~·ýÚ8ïÀõ›‹3‘XÐÆÿ\0ýoëT®4ÈV•\\®þH»[êqî+Íà‹X°xç²Ô÷ùE2yúãùÕõñ®¯fÌšœÊF2éÉ?ïõüóR²zðÖy—õêCq—C­Kûë%1[ßNŠ?å™\"Dÿ\0¾XKÿ\0	\rüÒ”YÜ>ì–»3øÆEcÁ¬ÙßÂ$ù`œ|Ì6“ìÝ?:¿k£jºÂCae4’¿*sŽ;œ“€=ë9BP|²2‹›v->¿m÷/tÖˆc“k8 }ÇþÍT¦Õt¶†F…œÑdˆ‚$Æ¶ÂßJ¾míåœlFíÎÒ0Ï²Œ~µq~\ZèÚ|>eýåÝûœ¦!‹Ô¶3Áçð®ˆáïñGð4”¯#†¸7Ñ ûLhç¾hR§Ðî_ëW’Î³®ýfÝò0v]Cþ çßÐÿ\0Â= ¤‚H´‹t*Û6çCžø\'2ãGÒ¥GUÓ,ÕñEVù5)Á+[C5([KœóèSËÊÏ«ü%f³ù04‡ÃÎ#VVl18\0ð{«Óu-:\r8yÓØBðÁ\"û§ý¡ž>½*¨‚ÂA¸ZÄyÈ\n?Ïë\\Îje¯ëÔ.·F•¯…¥¶ Ek1ÁÀàýsWµ˜V¸Å£Åf#ŒFc†&Úv’2}ÿ\0Ï5äéq¨2i“dq˜æ»ßH@‹¤5²ºÛßDÇ<yá{Ÿöiû³÷¬ÿ\0¯™I6·üŸðHA/mï<Qý‚¼mï÷OøU}7UƒIÕVå<Û˜­±!Šá·+q’	/LÕms]’ëRžâôe‘Ë ‘‚&}zU*r”¬®.Vú—dððp9Iç×>•^Mò¾j¯9ÆOóÅfA­Mæ=íò§Bc”’?2*ô7Å‰+®_®y ©ïõzÑÒœ7l9_r\'ÑdSò²ýw\Z,¦ÁÙÃ`sÐ`U†ší]D\ZÅÁCÜãÀ“š®òëÑHâ±p„ä8š$üÃ(\"®)KG/¼\\’îzo‡&ð¤žœßûVÃµË·NMØ\'Ðõã)ñ–nVMŠ­÷{qù*…¶¬Öí~q²c>¸Ïz[M>óÄ´Æ§\r<œ$CÓý£ì(¡„•:‰ô^[ë×»6zk-‘ŠÊ|ÀŠ»É8P ÇØWc xI0—z©bÊÚŒõsý+cJðí¦Œ7ÄL·$sq*ŒeÂ?ÎjÄò]4ÁT„‡ûêr/ð¯EÞZ-z˜®ovy¬&QT*/T``(kœ©îFk\"1#±_´LØ#éõ«	\rÐ`Ry$ôfàï¹Ë¢.B’yŒÆmàÿ\0Ï@xú`Š¿œÎI«g¡,êØ`Ô6ˆë1óíÇóÅk[:¯U<zP°ó›Ôj¢E½Jòæcw;Ê pAõÍvúgÙã $![¶l æ¹/b·.ìñ$h›¥o•@ç$×â?ˆ7šµ´–ZAkvËx¿$³zª‘Ê¯®9> WG°$›:©TOc¶ñïÄ?I¶›IÒ®çRbc˜Äß-¸î‡»`r=¸Ïj—÷ºqH`ŸŸ8f#&r}³ïU¼è-c	g\ZÆ¾¸ä}?»øsïM²µ¸¿œ¬L\0cóJù<ÿ\0ìÇÚ²r75œ¹µ+‹QÑÞ#q1lnŸç<öT/áÍv\Z?ÃýkZ*÷—ÙÖgEÀ,à³Æ?µsHþÏÑÔK\nî¸ ;à¹õÇ÷\nÑO˜Îß0ûóÚ¸«bkÉZ\Z/ëä8Êï=N»Bøcá]:$7I¨ÊH%î›å\'ýÅÂþyªž)ø3áYË>•i:‹d¤gÊfôhúcýÜ®1T´ïKwpEq°YØü¨£«óÉÀï]m¶¶‰%º#L…Ec“Œ÷õ\'©©£ZiÞ]ÈÊ›Wòuþ—w¢êwzmüF;«Yr&s‚;ƒÜ ÒYi“ßÜ,ìÌç·°÷®¯â\0:¦¯ayÍÅæõvþö Ÿ oÈ\nAZnœÅ\0ÙdŸöˆþ¦»©b}¥(Ínÿ\0áŒå[Ý\\½L«¹-4•[D²]mùä—œgóþUé>øYsªXÁ«xžöêiFû{d13)èÎGÝtQÏ#‘Ò¼»Â–‰ªø®Î+½¯wž`ç‰)‘”ývãñ¯~0–á0 ±äŒq\\ØÚÓ¥jpÝõ5NøÙwPøsá‰-„pÚ½žH\'lýHl†?^k€Õü	¨ibG°»[è6’T\0t9Vüÿ\0\në§ñ8a–nœg=j§öäO\"3KŸ›<ñ^]:¸˜K™?Ô™¼<ô<¢óK¶]çËxd?ÉHö(x?¥iøwÄšß….ÍÖ?ŸÎY0J8\'ÑõU?©âF¶Šù£1‰Îèå2PžHãµc^iÍdä¬‚X³òL£ñ«Ù¥‰sKœä÷£¡î^ø‹¢xÖar#²Õÿ\0YŸ*çþ™¿¾œn3V5tëOõ¾\\2rI1œu šùÍ¤YÕLãçÎåuá×ƒžÿ\0ÏÞ»m+Ç2Ë:v¿<“D¬>Í©gsFÝ„™ëõ?ŽzÖóJZÛR\'&ÑÐjš¦õÿ\0F‰¢ebk‡V\\øŠç‰•\\Ý[+°í\0ýo]Ú‰Cµïsó(dUÓ%khçU_ÜŽ6ˆÉ=k›•œRm³bˆî“k¢$¸ÁÈaìò¬‹‹7‚m™‰œ¦ì˜úvêGÐôª?hq&0ŠÀž3Èÿ\0\nÔ³Ôu1Nëæö,FÓ#kž®½ÑJM#.kkˆÁUšÏswbJƒÆª‹;»Li\"(ù]%GÐgŸÆµõ\"+œÏŽ;£ÕˆÂÈ}Ðû×3<ñÛÏ%½Í¼‘H\0ùX¨óŽ99¬6¶FðmìXž	RŸ2Ž›¶ãøETž×}Ã+Çò„^@ï“Ô~ö¡¶$Â·*HÚeŒn\0G­u£$Îe’ád!@ë†<ôÈÏ~†·JpW±­ÙRßOtœb9‘Ð¨ ÇWI®iZ\r·‡l.,µ/:êUÌðàâ<täsŸÇƒšÌ:‹«q4Àu‚pGü¨HF ÓâhÒàK’2¦FÕ\0~½ê’MŠÝÌÃx`€CÁMNºª0à~g™<.’p Lõ¨·Hœ\rËíšô=Œ$M\r;D‚Yµ %‘nÆ}Ž¿Aù×Ký´%Ž+uHac°£ðÆ(tYN\\¨‚!ŸåN¦EÄ1!b8ÌAsø×-5º9ªMOY‘oq^§î†ÿ\0ëT«Gm\ZÉxÞTdðO š«ªê:~ˆ¦Þ( ¹ÔqÊ•ùbÿ\0x÷>ÃñÅq·Ïw3K3ñ» ôŒ¥ð¢©ÑMmdvÇÆÚd|k¹qì«ýjÄ>;Ó[­/ûTãõ¯9!ºcŸ¥.o&³äKSW‚¤z‚xçHãq¹O÷¡ÿ\0V¿á5ÑÂdÝ:)îa`?^H%aÂ“Žüu©`žŸÌ™Ü³À>¦®ó[2Ÿ™Þk^ ]RE…ý™NV Hó=ý½ó¬§3îIŽÒ°¡ÔbIT²ÈN$ÎŸwª*@#„Ÿ1ú‘ü#Ö²œfÙJƒVŠ/\rFÂ=F8/E\'yˆggg¿åÍ[:õ¥¿ú›èå@¥UD„×qõÏ­q~[}å$ƒÈÏZz‡=Mh©¤Ž¯«Ç¹ÔÂAæ|ÁðOn˜ü)‹­¹“`QžXž\0®l©FiÛ‰Œ.:sùQìâú©C±ÚØx¶Fhbá¹yJŒ¹ƒ°ôZÒ_ÊŠ%˜ÊÈØ$Ž0¬qŸAÓç>[çpSÇ$ŽÕ£¤yÃY‚Ttyp~‚²Y²]4“eÛ=ÕÂËp²§Ùãù<Å#q8ö§w—sÀ |èTÇn)·úÁE?jÞB¨	žy9Ïò¬øõè˜á‘—ÉƒY¨ËtŽ{IÙ¤exvôéÚý¥Ó6Ð†>Çƒú^—w­i+b©\Zôs#cuÒ®Îùé\\S?[ƒS‚2\\îB½	<{õªW³Jš•ÁÝÉ·ä:Òt£V\\Ít:%Uêurë²·ÈpsZ¦úÃ4/ë\\³\\9bXú‚h.[v3Ó®hŽ\Z(¨Ð‚ØÛŸTg· ¿Ì¯Øu´ôÍJ{ˆb 4§_Ž8õÏ¶?Zã‰-ÆI?ZiQ×´t¢Õ†á+#©¾‘b¼[iPFò.äl§¶óUÆaÃ `C)û¿B;×0ÃëZÖW?jC®ÞbŽ~ðõúÑÉÊŒjQåWGg xˆÛ²ÿ\0ÑzG¼äÃìtýWé]Ož\Z=ãqœŽEy‚²¨û§+Üö5YöÈ3ÙÝKêèŽGâ*/©Ç,:›ÑØôÉí­¦v”‰7°Œm€}	÷ª·VIn&“yIÉ#ÔW‰5˜ÇÍxdÇüõ@ß©«¶Þ,ÕÌ‹\ZÃÁnùd}°j9\"~¯R=NÆÖövýÍÄ\0t<XØÿ\07SÓmµ6OÃ¨ÂL oOñÕÎŸOì¿Ò$ˆŸGeÏÐ0æ¬Gã\r5Î—1ÿ\0ÀU‡è¥c*sÝ\"=•Dî‘—s¦ÜÙHa¹¶I¤Ñôqê=ýAéY’E0ù[ÎDþ%‘7sùW\\úÖE-Û\';dŒí„z}AªËaªRÓW‚XÈáe`ÅG±ëùæ¥NQÝÆm|Hçà¹—n×Gp¼ÈU—èOQí@‹ÌVmŒèÒyãŒz×Gý‹z¨Z\'WÂRLÈãùÕVÓoaÞM´¨Äs$<þc\'4•xßBÕTÌc~i1†ES·ç¼Û#\rfÉwa±¤rÛžE]ºÒ£Xå¸¹ÄK¶1,$mÎ3Çäk,é¤ˆÎ=ë¾¦ö7‡\'sÔá´™°Òì1Ò±µ¿}œ5žœø|bKÐ{\'¿¿nÔQYJm»3ÏÃÁNMË¡ÅM PjÄõc­VñJÇª´Bvn”o=€ü¨¢¨¡O^”Ý€g¨¯=h¢„1ÁWq8çÖ¤TSÜ~Š)2d4<ç¯j< zQE&ÙLU¶’Y$\0»°E¤œÖ§¹D[™,Õ¶)ÄŒþ8ÏãEá«Ô¨I¶Ár¹Ö§…äŠ+¹a–HÞ8R§è¼~ÑET’4–¨¡q<÷\ZâY$`:ÈÙ5OÊŠ(D-,rI7 |Ê­ÊÒÏwï\"H\0d©ÇòÅP4ýâ±GÝ<zQuwRÁ[,qÜ~Y¢Š,¬h˜—V¿eºšÜ¶ñvoÄ`Ô$zE¢îŒ“viè@?…&Â¤2ü¤s‘EÂìy’eùK¸#±Ï‚y¸ýãþtQ@$»$aR¬ÄŒh¢•8¡Cö,qî)sƒœqïE¬CD‘1ÏÍœîœÓÃ²²•uVîAÏ×ÚŠ*æeÕ¾ŒŸ¾±°ã÷OŒUˆµmE>hod+èòdãñëEŒ¡¶3”ÿ\0	&¤S\0oím9ü…0ë×\'m„,øäð3ùƒEJœ;£ôGÿÙ',1);
/*!40000 ALTER TABLE `tbl_dono_agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_endereco`
--

DROP TABLE IF EXISTS `tbl_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_endereco` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `id_fk_endereco_dono_agenda` int(11) NOT NULL,
  `cidade_endereco` varchar(50) NOT NULL,
  `estado_endereco` varchar(50) NOT NULL,
  `bairro_endereco` varchar(50) NOT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_endereco`
--

LOCK TABLES `tbl_endereco` WRITE;
/*!40000 ALTER TABLE `tbl_endereco` DISABLE KEYS */;
INSERT INTO `tbl_endereco` VALUES (10,10,'','26',''),(11,11,'','26',''),(12,11,'','26',''),(13,11,'Palmas','26','Norte');
/*!40000 ALTER TABLE `tbl_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estados_brasileiros`
--

DROP TABLE IF EXISTS `tbl_estados_brasileiros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estados_brasileiros` (
  `id_estado` int(11) NOT NULL,
  `nome_estado` varchar(50) NOT NULL,
  `sigla_estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estados_brasileiros`
--

LOCK TABLES `tbl_estados_brasileiros` WRITE;
/*!40000 ALTER TABLE `tbl_estados_brasileiros` DISABLE KEYS */;
INSERT INTO `tbl_estados_brasileiros` VALUES (0,'Acre','AC '),(1,'Alagoas','AL '),(2,'AmapÃ¡','AP'),(3,'Amazonas','AM '),(4,'Bahia','BA '),(5,'CearÃ¡ 	','CE'),(6,'Distrito Federal','DF'),(7,'EspÃ­rito Santo','ES '),(8,'GoiÃ¡s','GO'),(9,'MaranhÃ£o 	','MA'),(10,'Mato Grosso','MT'),(11,'Mato Grosso do Sul','MS'),(12,'Minas Gerais','MG'),(13,'ParanÃ¡','PR'),(14,'ParaÃ­ba 	','PB'),(15,'ParÃ¡ 	','PA'),(16,'Pernambuco 	','PE'),(17,'PiauÃ­','PI'),(18,'Rio de Janeiro','RJ'),(19,'Rio Grande do Norte','RN'),(20,'Rio Grande do Sul 	','RS'),(21,'Rondonia','RO'),(22,'Roraima','RR'),(23,'Santa Catarina','SC'),(24,'Sergipe 	','SE'),(25,'SÃ£o Paulo 	','SP'),(26,'Tocantins 	','TO');
/*!40000 ALTER TABLE `tbl_estados_brasileiros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-14 11:51:45
CREATE DATABASE  IF NOT EXISTS `vendas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vendas`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: vendas
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `itemnotafiscal`
--

DROP TABLE IF EXISTS `itemnotafiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemnotafiscal` (
  `numeroNotaFiscal` int(10) unsigned NOT NULL,
  `codigoProduto` int(10) unsigned NOT NULL,
  `quantidade` decimal(7,2) unsigned zerofill DEFAULT NULL,
  `valorUnitario` decimal(7,2) unsigned zerofill DEFAULT NULL,
  `valorTotal` decimal(7,2) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`numeroNotaFiscal`,`codigoProduto`) USING BTREE,
  KEY `FK_Produto` (`codigoProduto`),
  CONSTRAINT `FK_Nota` FOREIGN KEY (`numeroNotaFiscal`) REFERENCES `notafiscal` (`numero`),
  CONSTRAINT `FK_Produto` FOREIGN KEY (`codigoProduto`) REFERENCES `produto` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemnotafiscal`
--

LOCK TABLES `itemnotafiscal` WRITE;
/*!40000 ALTER TABLE `itemnotafiscal` DISABLE KEYS */;
INSERT INTO `itemnotafiscal` VALUES (1,1,00002.00,00003.00,00006.00),(1,2,00001.50,00002.00,00003.00),(1,4,00001.00,00002.50,00002.50),(2,3,00003.00,00004.25,00012.75);
/*!40000 ALTER TABLE `itemnotafiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notafiscal`
--

DROP TABLE IF EXISTS `notafiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notafiscal` (
  `numero` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente` varchar(45) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notafiscal`
--

LOCK TABLES `notafiscal` WRITE;
/*!40000 ALTER TABLE `notafiscal` DISABLE KEYS */;
INSERT INTO `notafiscal` VALUES (1,'Dom Pedro I','2014-04-01 00:00:00'),(2,'Tiradentes','2014-05-10 00:00:00');
/*!40000 ALTER TABLE `notafiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  `unidade` varchar(5) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'PÃ£o de Forma','Unid'),(2,'Tomate','Kg'),(3,'Chocolate','Unid'),(4,'Batata Palha','Unid');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-14 11:51:46
CREATE DATABASE  IF NOT EXISTS `controledeentregas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `controledeentregas`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: controledeentregas
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `entregas`
--

DROP TABLE IF EXISTS `entregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entregas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `idsituacao` int(11) NOT NULL,
  `datacriacao` date NOT NULL,
  `dataprevista` date NOT NULL,
  `dataentrega` date DEFAULT NULL,
  `descricao` varchar(100) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_entregas` (`idsituacao`),
  CONSTRAINT `fk_entregas` FOREIGN KEY (`idsituacao`) REFERENCES `situacoes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas`
--

LOCK TABLES `entregas` WRITE;
/*!40000 ALTER TABLE `entregas` DISABLE KEYS */;
INSERT INTO `entregas` VALUES (5,2,'2015-04-13','2015-04-13','2015-05-20','Armazem Jota Silva',42885.00),(7,5,'2015-04-14','2015-04-14','2015-05-01','Armazem jt',2398.99);
/*!40000 ALTER TABLE `entregas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ativo` tinyint(1) NOT NULL,
  `codigo` varchar(13) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_produtos_codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,1,'1',' TV SMARTV 4K  SAMSUNG',2859.00),(2,1,'2','CAMA BOX LUX',799.99),(3,1,'3','FREEZER 550LT BRASTEMP',1599.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtosxentregas`
--

DROP TABLE IF EXISTS `produtosxentregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtosxentregas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoentrega` int(11) NOT NULL,
  `idproduto` int(11) NOT NULL,
  `quantidade` decimal(18,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produtosxentregas_entregas` (`codigoentrega`),
  KEY `fk_produtosxentregas_produtos` (`idproduto`),
  CONSTRAINT `fk_produtosxentregas_entregas` FOREIGN KEY (`codigoentrega`) REFERENCES `entregas` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_produtosxentregas_produtos` FOREIGN KEY (`idproduto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtosxentregas`
--

LOCK TABLES `produtosxentregas` WRITE;
/*!40000 ALTER TABLE `produtosxentregas` DISABLE KEYS */;
INSERT INTO `produtosxentregas` VALUES (19,7,2,1.00),(20,7,3,1.00),(21,5,1,15.00);
/*!40000 ALTER TABLE `produtosxentregas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacoes`
--

DROP TABLE IF EXISTS `situacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ativo` tinyint(1) NOT NULL,
  `descricao` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_situacoes_descricao` (`descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacoes`
--

LOCK TABLES `situacoes` WRITE;
/*!40000 ALTER TABLE `situacoes` DISABLE KEYS */;
INSERT INTO `situacoes` VALUES (1,1,'ENTREGUE'),(2,1,'PRONTO PARA ENTREGA'),(3,1,'AGUARDANDO PAGAMENTO'),(5,1,'ENCAMINHADO');
/*!40000 ALTER TABLE `situacoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-14 11:51:46
CREATE DATABASE  IF NOT EXISTS `poo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `poo`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: poo
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contatos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `veiculo` varchar(50) NOT NULL,
  `placa` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (1,'Andre Santos','Rua C casa 06','6311111111','Corsa Azul sedan ano 2012','mmm9294'),(2,'Warley Pereira Silva','Predio Maria julia Ap 05','6399887766','WV Fusca ano 1968','JTT5643'),(3,'Felipe Dias Santos','casa1 setor c','6300000000','fiesta branco ano 2006','ETF9953');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerario`
--

DROP TABLE IF EXISTS `itinerario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itinerario` (
  `codigo_itinerario` int(11) NOT NULL,
  `sentido` varchar(50) DEFAULT NULL,
  `vigencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_itinerario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerario`
--

LOCK TABLES `itinerario` WRITE;
/*!40000 ALTER TABLE `itinerario` DISABLE KEYS */;
/*!40000 ALTER TABLE `itinerario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linha`
--

DROP TABLE IF EXISTS `linha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linha` (
  `codigo_linha` int(11) NOT NULL,
  `nome_linha` varchar(40) DEFAULT NULL,
  `codigo_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_linha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linha`
--

LOCK TABLES `linha` WRITE;
/*!40000 ALTER TABLE `linha` DISABLE KEYS */;
/*!40000 ALTER TABLE `linha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logradouro`
--

DROP TABLE IF EXISTS `logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logradouro` (
  `codigo_logradouro` int(11) NOT NULL,
  `nome_logradouro` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_logradouro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logradouro`
--

LOCK TABLES `logradouro` WRITE;
/*!40000 ALTER TABLE `logradouro` DISABLE KEYS */;
/*!40000 ALTER TABLE `logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quadro_horario`
--

DROP TABLE IF EXISTS `quadro_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quadro_horario` (
  `dia` int(11) NOT NULL,
  `vigencia` int(11) DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  PRIMARY KEY (`dia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quadro_horario`
--

LOCK TABLES `quadro_horario` WRITE;
/*!40000 ALTER TABLE `quadro_horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `quadro_horario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-14 11:51:47
CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-14 11:51:48
CREATE DATABASE  IF NOT EXISTS `agendadb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `agendadb`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: agendadb
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contatos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `endereco` varchar(30) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (4,'Nayron dos Anjos Seilert','409norte Alameda 05 casa 24','6392746951','nayron1002010@hotmail.com','m');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `ProdutoId` int(4) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Preco` varchar(10) NOT NULL,
  `Descricao` varchar(30) NOT NULL,
  `QtdEstoque` int(11) NOT NULL,
  PRIMARY KEY (`ProdutoId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Lg Option','LG','90','Smartphone','999.0','Celular com android 4.4.2 e 4G',6);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-14 11:51:48
CREATE DATABASE  IF NOT EXISTS `controle` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `controle`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: controle
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `ProdutoId` int(100) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Preco` varchar(10) NOT NULL,
  `Descricao` varchar(300) NOT NULL,
  `QtdEstoque` int(11) NOT NULL,
  PRIMARY KEY (`ProdutoId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Samsung Galaxy S5','Samsung','GT5313','004354','350.0','Aparelho celular Samsung com Android 4.4.2 e TV Digital',13),(2,'TV STI ','Semp Toshiba','STI 3304','043546','1799.0','SmartTV LED FULL HD 40 Polegadas. ',16),(3,'Tablet  Samsung GT','Samsung','TabPro 111','778855','999.0','Tablet Samsung Galaxy TabPro 16GB Tela 8.4 Wi-Fi\n',50),(4,'TV LED 32','Philips','Philips 32PFL3518','003245','1199.0','SmartTV LED 32\" Philips 32PFL3518 Full HD Entradas HDMI / USB 120Hz',40),(5,'Smart TV LED Philco 32','Philco','PH32S46DSG HD','013465','1399.0','Smart TV LED Philco 32\" PH32S46DSG HD 3 HDMI 2 USB DTV 60Hz',76),(6,'iPhone 4S','Apple','4S','345325','1099.0','iPhone 4S com IOS 7, Branco 8GB',5),(7,'Geladeira','Brastemp','Btp 56','904353','1099.0','Gelradeira FrostFree com duas portas, Consumo A.',20);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda` (
  `Data` date DEFAULT NULL,
  `NumVendas` int(11) DEFAULT NULL,
  `ValorVendido` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES ('2014-09-26',5,8645),('2014-09-27',1,1099),('2014-09-28',2,7196),('2014-09-29',1,1099);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-14 11:51:48
CREATE DATABASE  IF NOT EXISTS `cursosql` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cursosql`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: cursosql
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NOME` varchar(45) NOT NULL,
  `QUEM_INDICOU` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_QUEM_INDICOU` (`QUEM_INDICOU`),
  CONSTRAINT `FK_QUEM_INDICOU` FOREIGN KEY (`QUEM_INDICOU`) REFERENCES `clientes` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'ANDRE',NULL),(2,'SAMUEL',1),(3,'CARLOS',2),(4,'RAFAEL',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpfs`
--

DROP TABLE IF EXISTS `cpfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpfs` (
  `ID` int(10) unsigned NOT NULL,
  `CPF` varchar(14) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_CPF` FOREIGN KEY (`ID`) REFERENCES `funcionarios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpfs`
--

LOCK TABLES `cpfs` WRITE;
/*!40000 ALTER TABLE `cpfs` DISABLE KEYS */;
INSERT INTO `cpfs` VALUES (1,'111.111.111-11'),(2,'222.222.222-22'),(3,'333.333.333-33'),(4,'444.444.444-44');
/*!40000 ALTER TABLE `cpfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(45) NOT NULL,
  `QUANTIDADE` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,'TV',5),(2,'DVD PLAYES',3);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger T_LIMPA_PEDIDOS BEFORE INSERT ON ESTOQUE FOR EACH ROW
BEGIN 
CALL LIMPA_PEDIDOS();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NOME` varchar(45) NOT NULL,
  `SALARIO` double NOT NULL DEFAULT '0',
  `DEPARTAMENTO` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DEPARTAMENTOS` (`DEPARTAMENTO`),
  KEY `NOMES` (`NOME`(6))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Fernando',1650,'TI'),(2,'Guilherme',2850,'Juridico'),(3,'Fabio',1870.0000000000002,'TI'),(4,'Jose',1980.0000000000002,'Marketing');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `funcionarios_a`
--

DROP TABLE IF EXISTS `funcionarios_a`;
/*!50001 DROP VIEW IF EXISTS `funcionarios_a`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `funcionarios_a` (
  `ID` tinyint NOT NULL,
  `NOME` tinyint NOT NULL,
  `SALARIO` tinyint NOT NULL,
  `DEPARTAMENTO` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(45) NOT NULL,
  `VALOR` double NOT NULL DEFAULT '0',
  `PAGO` varchar(3) NOT NULL DEFAULT 'NÃƒO',
  `DATA` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'TV',2200,'NÃƒO','2014-06-09'),(2,'TV',2200,'NÃƒO','2014-06-08'),(3,'TV',2200,'NÃƒO','2014-06-07');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarios`
--

DROP TABLE IF EXISTS `salarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salarios` (
  `FAIXA` varchar(45) NOT NULL,
  `INICIO` double NOT NULL,
  `FIM` double NOT NULL,
  PRIMARY KEY (`FAIXA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarios`
--

LOCK TABLES `salarios` WRITE;
/*!40000 ALTER TABLE `salarios` DISABLE KEYS */;
INSERT INTO `salarios` VALUES ('Analista junior',1000,2000),('Analista pleno',2001,3000);
/*!40000 ALTER TABLE `salarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculos` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FUNCIONARIO_ID` int(10) unsigned DEFAULT NULL,
  `VEICULO` varchar(45) NOT NULL DEFAULT '',
  `PLACA` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `FK_VEICULOS_FUNCIONARIOS` (`FUNCIONARIO_ID`),
  CONSTRAINT `FK_VEICULOS_FUNCIONARIOS` FOREIGN KEY (`FUNCIONARIO_ID`) REFERENCES `funcionarios` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculos`
--

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` VALUES (1,1,'carro','sb-0001'),(2,4,'carro','sb-0002'),(3,NULL,'carro','sb-0003');
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `funcionarios_a`
--

/*!50001 DROP TABLE IF EXISTS `funcionarios_a`*/;
/*!50001 DROP VIEW IF EXISTS `funcionarios_a`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `funcionarios_a` AS select `funcionarios`.`ID` AS `ID`,`funcionarios`.`NOME` AS `NOME`,`funcionarios`.`SALARIO` AS `SALARIO`,`funcionarios`.`DEPARTAMENTO` AS `DEPARTAMENTO` from `funcionarios` where (`funcionarios`.`SALARIO` >= 1700) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-14 11:51:49
