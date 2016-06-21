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
INSERT INTO `tbl_dono_agenda` VALUES (10,'Lojas Central','����\0JFIF\0\0\0\0\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0�,\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��1�x��MTIpy5!�9���2�-�8�o�8�a���2���G)��pN��9�R���T��r)�G�Q�56Z�:¤YFs�UbS֔2��*lirr��C��HFz\Zn��ڗ\'(�`��8Ͻ<��\0��2Nx�i�1Ҏ�u�l�\"�+���\0��n#� ��\r�	\0�=x��q�PT�{R-!wd�J�ԇ#� ?��V�}h�ҚH�T��1>���␐y�қ�g4�b�0)���������i؁��ÿ�3ʕ��������Cb�2=�)6q�~�h�6���r:�~4\0�s�)A\'9�zhn;qB���@\r�sI�LS���qڋ\n�EF��Q��6;��\0h��+�Jg4��>cM� .���6�=M5[�\'4����2M�:��)��`�&��~��\nX�\"�l�	�h��5$g���n=�M��$�T��ǎƢ��jP���R,;~�\r(rH���P	~���p���b��0q���	Jq~?�Jns���Jøn#\0���j?�T��y��q��Ɣ`}h\n=�HbE&Rå.H��zg�N\0��jYhnO�\"��(�y�\"�{�MR:F|����l�I})�.0�\"�N�֑�s�`n�U�l��z���8�!��ji|��(���)��Zd1r0O�79��Sw�u�ߑ��+��ץ&�����\0�Rs@���!�W֓�x�Z��zt�%H<s�� ��v�01j�i�d��*ri�sց�\'�4�B���!�EH���xc���\Z�lc�ьg&�bzq�ZaL��I�a����JGS�]����Ol}h��G�~U ����oQJ�vc2Qϵ(a���#?0�=sLv`N@���z\Z�\n1H6�Rhw\"�g�H��,s�1I�r?:Z���=�*vN:U_�ry�M���^��Z4��(>��TE�<��+�G>�<�s�r~Ni:��T+r�r>�	�\0G�;0�D�\\v��zO8�Z�g��4���\n��lc�<ɸq�\ZicԌ��CdD�\'R��O-נ�Ҩ��`��4�rMJq֘W�~t����LϨ4�˜\ZB�\0sۊv�����H�{��H�I4X.<��y�=鍎)2<�a\\�M��h.vdz�E��ߎ��$������֚\\�K�R�Ѱ��4��r*�n��81�i��[��N�P1�&�q槔�r瘝�b�{�M��4��3K��r�zCp��T�)���?h�fT/�)�v�n�`҉XqO�Je�>\0�3I���i��s��	^��|���i������i�V��h�919�?:wό�񪥘�֐��Ұs\"��TuϾj2�y$}j,�_֙�cE�Ȱ_=B�i���T=�4`S�s2q6рF>��y�QcޚF{Ӳ�F��O�M/�j3�QM9��Cl�������~c�Hs�?:vB�]��y4�}?:i�)��Oz7Ja����i}\r.s֘�9�\\.9�4��O�L��Hq�h�*;\Z��)�據\r��ƝM9�\"�]nf���צi�\0k�S�4�р��:���;k��wo�,c�~�=�_�F]��>Bxܻ���W����M���[��\0�PK�����P)��e8*���\0�ԋ���+-�3��,�9��d�8c�Z���hҩ����|��(�\0����/M��\Z�,H�F�=\r/�;��Xv4~�&>��pi�l��z�Eg�� �ԃ��z�������[\Z\"�\\���\"��sĊ8� Uힴy��ߥR�]u��}�t]���x��o&����*���S�C�(X������\Z�^���!�rx�U!?����	S���EZ�37B=���w �)�mO��j�A�(\n+ERFn��kC�?�i]��c8�*������O�2=�_j�4���\'��Q�~t���~��+�D�nPT�tߵ��F9���D��S\ZD꡿*��>�Tb���d)��S|��?�g��;S|��~�?[h���jyɌnǝ��Ӛ��}����;���X$_�Rq�\0JO����*��硤�I�Q��w/�q�_71�?\n�x��Y�B3��� s����A�N���z��\0�h�d$���Vf8�&�AS����_S�ݚM�C9��GO$�\0�_�j��ڌv��6��R�R]/�.�I3�-�I����M��TOғ�����\0!�R�b��#=Q��\rH��0ϛ�b��8�)6�kUo����C������2�	��Dym�劎������\'�[���\r���yn3�m���5COPjFK�$�g�4i4cws������0q�Z\0)1�����G��8�zW�Q���)��T��6��w+L8!��u��t�W����\\;AlЉʪ&�|q��q#���\nh��;ͮ�H$e��08�L�\Z.m��B�EOB�,�Ս���m���xr�Κ*q�m;i���U��aUGbȬw��2H\'�j�ouih.>�\\ڲ4h!!g#	���O\\��!�|<��,]�b����=�\0JIt=*4�x���l�M��z����or�vJqoo��\0�뫯	\\x�t�?I�}:B��\'ۤ.��Uw���s��d�7cJY���G�t�Rv�u4r�)P]�\0,��H<\n�k����m/�����b�<:�@p}�f��\Z~��X�.�2��W�dL��.�A\0�8�2Fk$��=<�����h�r���c�}OCw��\r�P��TTB�`8�g�8���5���p���!n�9�edc���T�	�㬚����\\���#�G*h����.7n!N�}y�<�A�a{c!wb�8+��~��\'\'=��ѧ-���#M���\0��r�z]���=(��N�\0xx�Yq���s�rj��\r���*[��Y��]��\\�Rqק9�jѼ6�7�a�,��˂�+`��P��b��7*�����I�O\0%}kKT�տ���R7�?���4�VhM��s�����0���g.��p��8\0�&�mP�֑�.d�%,l pFӒOEz~��!<V[Y�K8�[Y�V/,A.�rz�ũ�\r:�\0i\r��3��e�3�N03�S*�\n���Y��?���<����som<��co,�y�M�\'�B��}��V��V����l.uP	\\�7*	���|g��rH�>�\Z�ő���#M6k,�?��H$�vS	N1�v���T��\rD�_�����O1��Rέ����g�:c�5�WYÚ����;0�aw�5���9��wZ��!��ү���c�)�rc!x\'�p}q]�|���Ң��Df.��Y��2]�\r��Ӂ].�c�j5i.mZyd�:����	B��%Op���4^�j��V������\"a,{@F*VU��l���ד�\'�}ǡKFZ5�V�y���MB���;�\"����7)<����Z���V��K�4�DC3�e�	$�xF�=+�����_O��7i�Kr��Z`<���������mG�p6����T]	��ɑ����s�O���\'�Λ|�n�;�]Lj��;G���/�ӭu�����,�-��9f\\t�9<p9�u��_M���<�h��!W���Q�B��W��\ZGؼGisi��0�!���(�6���29\'��^k�E��sq3L��\'v���9��Ӷ+��6UcΟ�����]7y+.��<�i�t��1w0G��b ��� ��pH�H�hm)籶�]E���1������c����q�s��u����Z�X6�����]�9\'�s�泧��!���qo<#��۸�rpq�>��cRm\\����/������:�Kk覵�C���\"�\'\0�A�A�����-\Z��{-��>I�͙eo@A�M�����KV������5	̦w�`J�F2�q�\'�����}�)5	/m���n���,H\'N��~����b�N���ԣͪ����c;nY�ݐ\Z=�S%���t�j?��Y��U(҅ٴo%��� 烟�\0Uh�\0fMa�e�0^��\Z�v�H`��0��\\�C^��xw�:��m������᤺��YB��i�`�?\\\ZƮ5S�m�_�\n_���&����<ͱ�\'���)q��9;zv���ϧ�r������Y�̉s���۷��lg���Ѽ/eh���m��6�����+#B�.�A*y#��s��<���Y�/�&����(V	�L*1�/c��0Y�:�o�\"�����ˍ:k{���YYC��/�$��>��ߎ��6��d�[n�X�1Q��p�����+�N}?E���O�O�Es�H�n0&���FI�`Gx�H�,1*yA��*T��n���F+�8�%t��7�=�K$h�H�.ta�.���\n��>�x��X�D�iq��w�A���q�O���q�\\}���F�m�<�\\�8��Cץ2=F�\0���ďad *>w(�d�{���+�=HT;9DVv\0�\n3�䟥;���ǭ\\����6��o�+�m�6�����g��Ν�y&�n��Kf2I,~T�V~I@N�\0���m;��c�{�浊��m����$>�QJ����P�2y�����Z��՞���r��2�B�\Z�p[�����<B�H��Y���vm�N܌q���i+��Y�%�v����B�q���9��Ac�\n9$�\0\0��W� Ѯt�R�F_Ir��IC3*�C\00 �k�Kx�e��GZ؊Yaҍ�~Z�r�r��A���՗\'�\\����rZ�f\\�M4�����c�:���}��2@#�қ,�2�\"�����i�m#Ĳ��OM��T�ikHг�WE�]�[�X�������Z�s�a[$ێF)�z�Ņ�X�Rmw���W�7/`q��sN��\Zxi���Ȥa�9	�A/>��)/�s	ԫ{��\0�ӯ��,�J\'Wx����\0xս����:�N�љ,�%��pz\n���B�&fi�23������:��D�����UV,�A�\0<nR܎�����B:@�t9�4��F��}k�����߸m���0,[?���g9�Y���H\Z�9\0m�\Z���t\' �kr6���v�7\Ze��˲-0�F2�w��:ՙg�xj1�E��ܪc�jc��V�����k\"�vo��:���E����c�+����1�Es�%���8�Һ��կ���n4u�u�|BP�a�ƪT0%�׏C��wO�E����Yf_�QՔ�0��q�o���Y��-f����nS�w,	.I�Nr{����գ$�wQ��ҏ+Z��=�E�</e��Om&��w\n��F�V\r�V#$n#9�\0�\\���{�ŷ�}&��Mpu�����01��|�9�k���4��N��N������m�c��;U�}s��>�>�o5�r4𬗑(^NYXI�C�$����94���E���\0;p�]r�z��\0�P�e�{K������$貐��o\\s��q׭j�X<m�+Hmf��Iw\Z�+� +��8\n���5��z�j�s�jKd��@���P��9\'�����<lX_i\Z����igd����9�Y�`t\'8�r�9�s;����$tP�EG��;�\\�%������� \r�#���Ԟ���cI��b���Q.�^\"���n����?���s��j����Vf�C�\0lA�zb�\rt����3P��Jó��YF\n���H\'8�ڲ��j�Z��|���g��jB1��]N{���<1��*J�<�+� �ިţGoj5+��X&�Xg��\0������@�h6�w�k��Lf��:�3�4�j&Ki&҆�]�k{�g�s��;�$0+��Һ1�U����:�<4����\0��x2��I�����o0��{��BAb�py	,:��x{F��{i��!�6�4`,d��q��׍�}��$�^h֒[ �%�Fe�� ����քڗ���j;h�\0����e�a�g���\0�c*�R������9k:�������x/T����$�ػ5�R�j��NFO8�.+[I�u>��[^ϨC�.Z�oU��\rrW?u-3_���nn��x��]�8��\0��}�\Z�������m��=�PT��u<�GӚ�\r:ҫ%4�,����_C��a���������O������OIR\r��hl��\'�n<Nڿ�\"��{��;���#~�g����r�#դ֯��5�Œ�,�Wh�<{�5P��,\02�\'+����]�VW3�8�\n2[z�\0�:�đ�j����V���\0w }�av\0`c��^1�)_R��O�!�5I�x�-��ya=0%99���-����K�u{��-��Fd��Ĩ\\A��zlw��=�m���W�]��H\'J�S�e+�eG�<�ݾ��sY=�\\]ͫ��w�������]��5������ZLP��k�\'\\�>Yr���:�����[�&�Ԗ+���$�\'$cvk��6PhZ����P��4����N�z�ΤS^�>�BZ����4O\0x�\\�����m���K}�Xv1�У\n�9�uگ�?Ϣ~�ɴDH�ס�.�V;��ӝ�x�J��)��x�߯�{���H��pX��I�����U�Ԯ�����X���X����\'�L���Da.mJ��W��_�s��^��X�kw	qj�D!�q�����G���ä��3-����UY�K��\0�T�Ϸ\'ҫã^��E=�~pwh�i��*3��\0�||�W�2Z�I�i��٥s�_��$����]�+ݾPI���[km<P�[]�#�����9S�U���}�����0�֛�ȗT�%�u���)�O�X��v����A�N���%��s%�Ȅ��&B�p� a����;٫}�IKNd�������n5+6\n`>H22��C:)<�3]ޭ��9��\"��m���k�\'|d��������P���~��Z�%�o�,��J���^uy��6w�K$P̒��8��ڭ��0:UF�/j���t���S�V��t}��cj~ZH�r�0����\n��>�;���[:Գ���\'��9��!��f�.4�GN��_� �sdc�u��m���*�M3	4�^X�-��Gט��jW�Ӵ��Q�ڥ�`{�Ґ��Pq夸\\�n�s���M�T��)#��GWP���r;z�mw+���\"݆�,�2�3�1�I �9����ӭ�)p�ݜ��_B+;�ۙg��֮Gsl���,�CGp뎹<�9����{��l�G����ٮY�tU(y\0W)���������3m�𨩐;|���24�{�޴�����=$VE�������N��8�ʓJ�N�+��y����daX��z�4\rnn����d���,�Q���������Y�iBk��.���H�u�Z���ݣ�v\0`��c��)�g6�u[��@$��ݚ5Rʁ×E���$���R�N�>�K��$P���FFC1菟����q�ق9���0\0%Z\0����\0&�K+kO,*��*���5ɉ�r$�&Sz4R�Ð��=E\'q�H\r���PN1�0@\'�7(��qj��s\"��\0y+@�[Asp`&K��9�q�����C🇶��W��`��,wmN����\0\Z�X���n���..R�~�y�����5��WUa3|�E$~�����;�LH��A�YePq�`��{�YŨ]��m�,>�A��O��m�iw2��zZ�9-o��YGQ���9$��_���g��D���5�u2�G���\'��+�u�7F�t�=.T���+vv��9r��\\�qב�5�2}7�eŜ�$�f���:�F������U��L�e����+�ZW�&��t��%�IZ�qu%�f�JҲ������<\Z�D���ẃ�19W)u��Cߑ֡��R[���؇#�gҾ��$�b��\\�Zy,��<� ��\r��<���T|�+�U䒾�י/�=?���ű�U|�xD����1�O�<~5���z��7���Ŭ8�)���^�k�l�;g�Y�\Zz&��Nwy�O��<���}WI�ɕ\"\0^4�*J�8��\0=�W��1��3�V����y�w��<Au���.��9�ҫ�u���l�p%�y\0w$�v�\nK}CW��O�����q\0bprX��\'&�F�lo�0���\"�bs��/=3�!�r���#��\'���H�.4%��Э\"�X<�Q˸Ƹ�ӀG^�h�z4��C\ZZG$R<��5f��)X���R�⋨�t��F������8�=}iĮ�|ƿ�v�N1ת�¡b�����S�\'%����})��\0K����7G�\"���6�3��ּ�acye�n���==�ї��ψQ.d�<�c���l�9v1��(���s��TR�Ab�W#����S��O����uc˵/�[4Q���P8�9\'88�x��k���¸u?&I�p<��x�?���.�;���\0ZQ.�\0p8�\0=kV��>�I��(�{�r�q]�U�-�~��i\'�_��M�&M>������n]��,�� �s��(�t���������ԅS��^�ំ^�n�ھ��X[��f	�00Cg��N�ݓ��Msk�y�6��\Z8�,�V��{����5�����I�ȥ����s���|U�c������Ż@�*1�X�w�\0�װ]�<�\r0gk��� �\"H�d����x�b�+�;Xӊ��Q� RE6=O�I�d񓖜�z�]O#��Ϙi� W���B2B������⩭�\"�#G#|�w �?0>����u�R.tpʤ���u���{�J��fe\'�����Mcj-�7�o�\Z��o���[Iԯ��a�e�`,LFZ�<�$�I%ٖGb�#F�\'�x��{�2P�WP1�@~�E.�ig�OWP�B������3�px�Sly���M� u�k^���9H�Ey��Kub���[�\n���\\0\"h�1O�֟� �c�Bhx�ͳ�\'� ���1�����^���/k�}���2.7\\M+Eo#�śt9\0����H۾�l��Xx�Mu+���˳P�ǫD�~ �U�Xi5kEQ�@��Y��b�*�I_q�,@�c@;�qS�!�@�گ��u�����?靦?,�Y����U��t\"��C�N���O�\0����(���m��Q4r�O�.��W�k�mM�g�)ϟ<�����[�F�h�Kel�@�y��g�_��c8̟�E�sko,�,��@8���*չ��Gy4D7%��m�u0x{I���q՘�~�洡Ӭ��\Zu��x����V2�[��3?os6��؋k_��?�@�\0|��Uu������zm�sR��*���k\0a!�U�\"P@����5���\'O��J���[���\0#jr���\0���,�`Y�-�f<y��c���oV�A�\0���d�tw�3����U�{[��l���8\"0�O�;����\0�p���*F��s|���޹�S�7���c�ԧ��Seqd�ٳ�;WGo&���kP	���\\m����<[����oı�bL�RH�s�r��~fѫ���.��h�\ZyVW\'�`�-#�\0��ax=�gi�=卢��%�GQ/,s�9��p��#\"����v����nU���9��A�=k����m�ovI,U�I�9`\0�x�5�b�U�|�z�m�i��ש��;��6�D�r�%����K�ŀl�9�sP�&�&;F�����Bx�A)p���5�c�3�q֪\\���L��8��W��Ȓw�6U!�i|�_l[;Ė�:�S�N==�\"�k�]+�ZT7��J�cx[�˸`�q�}k���\\��I�=.���ߡ�\n�HB��\\���,֔e���h�\03U�ݮhM�X��~�\'P��`�dnRA�8�C��P���X�x�@e�}�PFB�=��u~5�L���-��jLD�e<�c<�X};��g�i�<1VV����Ϩ篮Gj�V�6҅�*��Fw/�譥�6�\0h�ɸ0���-��Z�.�?.�a�TzX�������Q�>��2��ݗ؎*����T���\0�a$�R�^�m��#�-��Ts����|��G+�0x�Y1j��kG$�a���9���70�o�̼u�~���{8~#P�َ��]Rwݟ�g\n�\0s�v�ְ<K�s`�Ln r̻�n�I5ۙQ	�@X�r�\rm�:��,7cU��\">B��\'P��U*��JJ\Z��̙������*���7~?ʻ8M�q�����䲂{q�=�>��i\"\\�i��A$�C�u#։��?4lNH�O«5VwK�I7-��Yv����㿿�Kw��L��ɏ��Y.�+,��Bv�Ԩ���Du��x B�N�tb�.�����������q\\��^V�>�����x��Z�c���2�\\ںE6v�H�78��d�-ʒ|�?D<{�jr�_�a���ڹK�V�R�J�HU�0*����	B9��K/ΰ��#�\0��s����?j\Z����ҝ\'�re�[#��=�e(r���Ф�ٝ�����ܪ��싟皳��\0��A�P��<�����?�z��g�%Ŭ�-L�<���k�X�Tm&c�:o�g�%������S�ILwG\0��=k�\"�5�\ry�(�%�\\~df������,��o�����C�IlzB*H:���$���X�UϹ�=�j����N2�t�xS������vi1�Mf��\0t�\'f�8-�1Ȍ��\r��֯E�|��[�p�+	Vdn$\'خj�WW(1�#С��Q]\Z��.�qt�6�#���z�����F�%�,��ZZ�C$���+J=U�Z)�m剆Xd��浲�F�t���LH��¾&�ŝ�ⶶ�!�N�8\n��Ǔ��<}H\0�u�ڋnwׄ�G��ך�_� 6q<��,�NzҲ���Ϝ��%���j�Y_޹��4�2��Y�l�77\\d�������cר�`@�Pq���+�����[˙� rc;PMǂ~��%�޽y�iO4jND�\'�q�T}G��}ҩ���=.�[F|��Nr��Rj���H`2^\\�o�Ѵ�\0{�῭x����o{�H��M��v���ղ��o2v7gi����X�\0J��~-ޮ!�\'o�5U�������;��4x�Mup�[.�3\0�����=�f|?�v�cw�)��������9������:�6���q�\Z�o�1�j\Zbi�o���ǰ�](��KN��\\�z��Џ�_�ٯ��#\0G!�#�x��r���7��K�iz���=��}?��䷚�v��[#.�I���j3��\\F�x2�ռ�O�*Eg,�%uZq~���8�����3�X����\0�o�T�4�V�\\��H�[�q�+���X�x����E2y������f̚��F2��?����R�z��y���Cq�C�K��%1[�N�?�\"D�\0�XK�\0	\r���Y�>얻3��Ec�����$�`�|�6���?:�k�j���Cae4��*s�;���=�9BP|�2��v->�m�/tֈc�k8 }���T��t��F���d��$ƶ��J�m�卜lF���0ϲ�~�q~\Z��|>e������!���3������G�4��#��7Ѡ�Lh琾hR���_�W�����f��0v]C� ����\0�=���H��t*�6�C��\'�2�GҥGU�,Տ�EV�5)�+[C5([K���S�����%f���04���#VVl18\0�{��u-:\r8y��B���\"�����>�*���A�Z�y�\n?��\\�je���.�F����� Ek1����sW��V�ţ�f#�Fc�&�v�2}�\0�5���q�2i�dq����H�@��5����D�<y�{��i�����\0��I6�����HA/m��<Q���m��O�U}7U�I�V�<ۘ��!��+q�	/L�ms]��R���e�����&}zU*r���.V��d��p9�I��>�^M�j�9�O��fA�M�=��Bc��?2*�7ŉ+�_�y ���z�Ҝ7l9_r\'�dS��w\Z�,����`s�`U���]D\Z��C���������H��p��8�$��(\"�)KG/�\\��zo�&����Võ��NM�\'���)��nVM���{q�*�����~q��c>��z[M>���Ƨ\r<�$C����(���:��^[�׻6zk-���|����8P����Wc�xI0�z�b�ڌ��s�+cJ��7�L�$sq*��e�?�j��]4�T����r/�E�Z-z��ovy�&�QT*/T``(k���Fk\"1#�_�L�#���	\r�`Ry$��f��ˢ.B�y��m��\0�@x�`����I�g�,��`�6��1�����k[:�U<zP���j�E�J��cw;ʠpA��v�g�� $![�l���/b�.��$h���o�@�$��?�7����ZAkv�x�$�z��ʯ�9>�WG��$�:�TOc���č?I��IҮ�Rbc���-����`r=�ύj�����qH`���8f#&r}���U��-c	g\Zƾ��}?��s�M������L\0c�J�<�\0��ڲr�75����+�Q��#q1ln��<�T/��v\Z?��kZ*����gE�,���?�sH����K\n� �;����\n�O���0��ڸ�bk�Z\Z/��8ʝ�=N�B�c�]:$7I��H%��\'����y��)�3�Y�>�i:�d��g�f�h�c���1T��Kwp�Eq�Y���������]m���%�#L�Ec����\'���Zi�]�ʛW��u��w��wzm�F;�Yr&s�;����Yi���,��緰����\0:��ay����v�� ��o�\nAZn��\0�d�������b}�(�n�\0��[�\\�L��-4�[D�]m�䗝�g��U�>�Ys�X��x���iF�{d13)��G�tQ�#�Ҽ������+��w�`�)���v��~0��0 ��q\\��ӥjp��5N��wP�s�-�pڽ�H\'l�Hl�?^k���	�ibG��[�6�T\0��t9V��\0\n��8a�n�g=j���O\"3K���<�^]:��K�?ԙ�<�<��K�]��xd?�H�(x?�i�wĚ߅.�֝?��Y0J8\'���U?���F�����1����2P�H�c^i�d䬂X��L���٥�sK������^���x�ar#���\0�Y�*������n3V5t�O��\\2rI1�u ��ͤY�L����u�����\0�޻m+�2�:v�<�D�>ͩgsF݄���?�z��JZ�R\'&��j����\0F��ebk�V\\��牕\\�[+��\0�o]ډC��s�(dU�%kh�U_��6��=k���Rm�b��k�$���a�򬋋7�m������v�G���?hq&0���3��\0\nԳ�u1N���,F�#k����JM#.kk��U��swbJ��ƪ�;��Li\"(�]%G�g�Ƶ�\"+���;�Ո��}���3<���%�ͼ�H\0�X��99�6�F�m�X�	R�2�����ET��}�+��^@��~���$·*H�e�n\0G�u�$�e��d!@�<���~��JpW���R�Ot�b9�Ш ��WI�iZ\r��l.,�/:�U����<t�s��ǃ��:��q4�u�pG��HF���h��K��2�F�\0~��M����x`��C�MN��0�~g�<.�p�L���H�\r���=�$�M\r;D�Y� %�n��}��A��K��%�+uH�ac�����(tYN\\��!��N�E�1!b8�As��-5�9�MOY�oq^���\0�T��Gm\Z�x�Td�O�����:~���( ��qʕ�b�\0x�>���q��w3K3�������эMmdv���d|k�q��j�>;�[�/�T���9!�c��.o&��KSW��z�x�H�q�O���\0V��5��d�:)�a`?^H%a��u�`��̙���>���[2���k^ ]RE���NV H�=��󬧐3�I�Ұ��bIT��N$�Οw�*@#��1���#ֲ�f�J�V�/\rF�=F8/E�\'y�ggg���[:�������@�UD��q�ϭq~[}�$���Zz�=Mh�����ǹ��A�|��On��)����`Q�X�\0�l�Fiۉ�.:s�Q����C���x�Fhb�yJ������Z�_��%����$�0�q��A��>[�pS�$�գ�y�Y�Ttyp~���Y�]4�e�=���p�����<�#q8��w�s��|�T�n)���E?j�B�	�y9�����ᑗ��Y��t�{I٤exv������6Џ�>ǃ�^�w�i+b�\Z�s#cuҮ���\\S�?[�S�2\\�B�	<{��W�J����ɐ���:�t�V\\�t:%U�ur벷�ps�Z����4/�\\�\\9bX��h.[v3Ӯh�\Z(�Ђ�۟Tg� �̯�u���J{�b 4�_�8�϶?Z�-�I?ZiQ��t�Ն�+#���b�[iPF�.�l����U�a� `C)��B;�0��Z�W?jC��b�~�����ʌjQ�WGg�x�����\0�zG����t�W�]O�\Z=�q��Ey�����+��5Y��3��K��G�*/��,:������v��7��m�}	���VIn&�yI�#�W�5���xd���@ߩ���,�̋\Z��n�d}�j9\"~�R=N���v���\0t<X��\0�7S�m�6Oè�L�oO��ΟO��$��Ge��0�G�\r5�Η1�\0�U���c*s�\"=�Ds���Ha��I���q�=�A�Y�E0�[�D�%�7s�W\\�֍E-�\';d���z}A��a�R�W�X��e`�G����NQ��m|H�๗n�Gp��U��OQ�@��Vm���y�z�G��z�Z\'W�RL�����V�oa�M���s$<�c\'4�x�B�T�c~i1�ES�����#�\rf�wa��r۞E]�ҝ�X帹�K�1,$m�3��k,���=���7�\'s�ᴙ���1ұ��}�5���|bK��{\'��n�QYJm�3���NMˡ�M Pj��c��V�JǪ�Bvn�o=������O^�݀g��=h��1�Wq8�֤TS�~�)2d4<�j<�zQE&�LU��Y$\0��E��֧�D[�,ն)���8��E�ԨI��r�֧��+�a�H�8�R��~�ET�4���q<�\Z�Y$`:��5Oʊ(D-,rI7 �|�ʭ���w��\"�H\0d����P4��G�<zQuwR�[,q�~Y��,�h��V�e��ܶ�vo�`�$zE�vi�@?�&¤2��s�E��y�e�K�#���y����tQ@$�$aR�Čh���8�C�,q�)s��q�E�CD�1�͜��ò��uV�A��ڊ*�eվ�������O�U��mE>hod+��d���E���3��\0	&�S\0o�m9��0��\'m�,���3��EJ�;��G��',1),(11,'Armazem jujuca','����\0JFIF\0\0\0\0\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0�,\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��1�x��MTIpy5!�9���2�-�8�o�8�a���2���G)��pN��9�R���T��r)�G�Q�56Z�:¤YFs�UbS֔2��*lirr��C��HFz\Zn��ڗ\'(�`��8Ͻ<��\0��2Nx�i�1Ҏ�u�l�\"�+���\0��n#� ��\r�	\0�=x��q�PT�{R-!wd�J�ԇ#� ?��V�}h�ҚH�T��1>���␐y�қ�g4�b�0)���������i؁��ÿ�3ʕ��������Cb�2=�)6q�~�h�6���r:�~4\0�s�)A\'9�zhn;qB���@\r�sI�LS���qڋ\n�EF��Q��6;��\0h��+�Jg4��>cM� .���6�=M5[�\'4����2M�:��)��`�&��~��\nX�\"�l�	�h��5$g���n=�M��$�T��ǎƢ��jP���R,;~�\r(rH���P	~���p���b��0q���	Jq~?�Jns���Jøn#\0���j?�T��y��q��Ɣ`}h\n=�HbE&Rå.H��zg�N\0��jYhnO�\"��(�y�\"�{�MR:F|����l�I})�.0�\"�N�֑�s�`n�U�l��z���8�!��ji|��(���)��Zd1r0O�79��Sw�u�ߑ��+��ץ&�����\0�Rs@���!�W֓�x�Z��zt�%H<s�� ��v�01j�i�d��*ri�sց�\'�4�B���!�EH���xc���\Z�lc�ьg&�bzq�ZaL��I�a����JGS�]����Ol}h��G�~U ����oQJ�vc2Qϵ(a���#?0�=sLv`N@���z\Z�\n1H6�Rhw\"�g�H��,s�1I�r?:Z���=�*vN:U_�ry�M���^��Z4��(>��TE�<��+�G>�<�s�r~Ni:��T+r�r>�	�\0G�;0�D�\\v��zO8�Z�g��4���\n��lc�<ɸq�\ZicԌ��CdD�\'R��O-נ�Ҩ��`��4�rMJq֘W�~t����LϨ4�˜\ZB�\0sۊv�����H�{��H�I4X.<��y�=鍎)2<�a\\�M��h.vdz�E��ߎ��$������֚\\�K�R�Ѱ��4��r*�n��81�i��[��N�P1�&�q槔�r瘝�b�{�M��4��3K��r�zCp��T�)���?h�fT/�)�v�n�`҉XqO�Je�>\0�3I���i��s��	^��|���i������i�V��h�919�?:wό�񪥘�֐��Ұs\"��TuϾj2�y$}j,�_֙�cE�Ȱ_=B�i���T=�4`S�s2q6рF>��y�QcޚF{Ӳ�F��O�M/�j3�QM9��Cl�������~c�Hs�?:vB�]��y4�}?:i�)��Oz7Ja����i}\r.s֘�9�\\.9�4��O�L��Hq�h�*;\Z��)�據\r��ƝM9�\"�]nf���צi�\0k�S�4�р��:���;k��wo�,c�~�=�_�F]��>Bxܻ���W����M���[��\0�PK�����P)��e8*���\0�ԋ���+-�3��,�9��d�8c�Z���hҩ����|��(�\0����/M��\Z�,H�F�=\r/�;��Xv4~�&>��pi�l��z�Eg�� �ԃ��z�������[\Z\"�\\���\"��sĊ8� Uힴy��ߥR�]u��}�t]���x��o&����*���S�C�(X������\Z�^���!�rx�U!?����	S���EZ�37B=���w �)�mO��j�A�(\n+ERFn��kC�?�i]��c8�*������O�2=�_j�4���\'��Q�~t���~��+�D�nPT�tߵ��F9���D��S\ZD꡿*��>�Tb���d)��S|��?�g��;S|��~�?[h���jyɌnǝ��Ӛ��}����;���X$_�Rq�\0JO����*��硤�I�Q��w/�q�_71�?\n�x��Y�B3��� s����A�N���z��\0�h�d$���Vf8�&�AS����_S�ݚM�C9��GO$�\0�_�j��ڌv��6��R�R]/�.�I3�-�I����M��TOғ�����\0!�R�b��#=Q��\rH��0ϛ�b��8�)6�kUo����C������2�	��Dym�劎������\'�[���\r���yn3�m���5COPjFK�$�g�4i4cws������0q�Z\0)1�����G��8�zW�Q���)��T��6��w+L8!��u��t�W����\\;AlЉʪ&�|q��q#���\nh��;ͮ�H$e��08�L�\Z.m��B�EOB�,�Ս���m���xr�Κ*q�m;i���U��aUGbȬw��2H\'�j�ouih.>�\\ڲ4h!!g#	���O\\��!�|<��,]�b����=�\0JIt=*4�x���l�M��z����or�vJqoo��\0�뫯	\\x�t�?I�}:B��\'ۤ.��Uw���s��d�7cJY���G�t�Rv�u4r�)P]�\0,��H<\n�k����m/�����b�<:�@p}�f��\Z~��X�.�2��W�dL��.�A\0�8�2Fk$��=<�����h�r���c�}OCw��\r�P��TTB�`8�g�8���5���p���!n�9�edc���T�	�㬚����\\���#�G*h����.7n!N�}y�<�A�a{c!wb�8+��~��\'\'=��ѧ-���#M���\0��r�z]���=(��N�\0xx�Yq���s�rj��\r���*[��Y��]��\\�Rqק9�jѼ6�7�a�,��˂�+`��P��b��7*�����I�O\0%}kKT�տ���R7�?���4�VhM��s�����0���g.��p��8\0�&�mP�֑�.d�%,l pFӒOEz~��!<V[Y�K8�[Y�V/,A.�rz�ũ�\r:�\0i\r��3��e�3�N03�S*�\n���Y��?���<����som<��co,�y�M�\'�B��}��V��V����l.uP	\\�7*	���|g��rH�>�\Z�ő���#M6k,�?��H$�vS	N1�v���T��\rD�_�����O1��Rέ����g�:c�5�WYÚ����;0�aw�5���9��wZ��!��ү���c�)�rc!x\'�p}q]�|���Ң��Df.��Y��2]�\r��Ӂ].�c�j5i.mZyd�:����	B��%Op���4^�j��V������\"a,{@F*VU��l���ד�\'�}ǡKFZ5�V�y���MB���;�\"����7)<����Z���V��K�4�DC3�e�	$�xF�=+�����_O��7i�Kr��Z`<���������mG�p6����T]	��ɑ����s�O���\'�Λ|�n�;�]Lj��;G���/�ӭu�����,�-��9f\\t�9<p9�u��_M���<�h��!W���Q�B��W��\ZGؼGisi��0�!���(�6���29\'��^k�E��sq3L��\'v���9��Ӷ+��6UcΟ�����]7y+.��<�i�t��1w0G��b ��� ��pH�H�hm)籶�]E���1������c����q�s��u����Z�X6�����]�9\'�s�泧��!���qo<#��۸�rpq�>��cRm\\����/������:�Kk覵�C���\"�\'\0�A�A�����-\Z��{-��>I�͙eo@A�M�����KV������5	̦w�`J�F2�q�\'�����}�)5	/m���n���,H\'N��~����b�N���ԣͪ����c;nY�ݐ\Z=�S%���t�j?��Y��U(҅ٴo%��� 烟�\0Uh�\0fMa�e�0^��\Z�v�H`��0��\\�C^��xw�:��m������᤺��YB��i�`�?\\\ZƮ5S�m�_�\n_���&����<ͱ�\'���)q��9;zv���ϧ�r������Y�̉s���۷��lg���Ѽ/eh���m��6�����+#B�.�A*y#��s��<���Y�/�&����(V	�L*1�/c��0Y�:�o�\"�����ˍ:k{���YYC��/�$��>��ߎ��6��d�[n�X�1Q��p�����+�N}?E���O�O�Es�H�n0&���FI�`Gx�H�,1*yA��*T��n���F+�8�%t��7�=�K$h�H�.ta�.���\n��>�x��X�D�iq��w�A���q�O���q�\\}���F�m�<�\\�8��Cץ2=F�\0���ďad *>w(�d�{���+�=HT;9DVv\0�\n3�䟥;���ǭ\\����6��o�+�m�6�����g��Ν�y&�n��Kf2I,~T�V~I@N�\0���m;��c�{�浊��m����$>�QJ����P�2y�����Z��՞���r��2�B�\Z�p[�����<B�H��Y���vm�N܌q���i+��Y�%�v����B�q���9��Ac�\n9$�\0\0��W� Ѯt�R�F_Ir��IC3*�C\00 �k�Kx�e��GZ؊Yaҍ�~Z�r�r��A���՗\'�\\����rZ�f\\�M4�����c�:���}��2@#�қ,�2�\"�����i�m#Ĳ��OM��T�ikHг�WE�]�[�X�������Z�s�a[$ێF)�z�Ņ�X�Rmw���W�7/`q��sN��\Zxi���Ȥa�9	�A/>��)/�s	ԫ{��\0�ӯ��,�J\'Wx����\0xս����:�N�љ,�%��pz\n���B�&fi�23������:��D�����UV,�A�\0<nR܎�����B:@�t9�4��F��}k�����߸m���0,[?���g9�Y���H\Z�9\0m�\Z���t\' �kr6���v�7\Ze��˲-0�F2�w��:ՙg�xj1�E��ܪc�jc��V�����k\"�vo��:���E����c�+����1�Es�%���8�Һ��կ���n4u�u�|BP�a�ƪT0%�׏C��wO�E����Yf_�QՔ�0��q�o���Y��-f����nS�w,	.I�Nr{����գ$�wQ��ҏ+Z��=�E�</e��Om&��w\n��F�V\r�V#$n#9�\0�\\���{�ŷ�}&��Mpu�����01��|�9�k���4��N��N������m�c��;U�}s��>�>�o5�r4𬗑(^NYXI�C�$����94���E���\0;p�]r�z��\0�P�e�{K������$貐��o\\s��q׭j�X<m�+Hmf��Iw\Z�+� +��8\n���5��z�j�s�jKd��@���P��9\'�����<lX_i\Z����igd����9�Y�`t\'8�r�9�s;����$tP�EG��;�\\�%������� \r�#���Ԟ���cI��b���Q.�^\"���n����?���s��j����Vf�C�\0lA�zb�\rt����3P��Jó��YF\n���H\'8�ڲ��j�Z��|���g��jB1��]N{���<1��*J�<�+� �ިţGoj5+��X&�Xg��\0������@�h6�w�k��Lf��:�3�4�j&Ki&҆�]�k{�g�s��;�$0+��Һ1�U����:�<4����\0��x2��I�����o0��{��BAb�py	,:��x{F��{i��!�6�4`,d��q��׍�}��$�^h֒[ �%�Fe�� ����քڗ���j;h�\0����e�a�g���\0�c*�R������9k:�������x/T����$�ػ5�R�j��NFO8�.+[I�u>��[^ϨC�.Z�oU��\rrW?u-3_���nn��x��]�8��\0��}�\Z�������m��=�PT��u<�GӚ�\r:ҫ%4�,����_C��a���������O������OIR\r��hl��\'�n<Nڿ�\"��{��;���#~�g����r�#դ֯��5�Œ�,�Wh�<{�5P��,\02�\'+����]�VW3�8�\n2[z�\0�:�đ�j����V���\0w }�av\0`c��^1�)_R��O�!�5I�x�-��ya=0%99���-����K�u{��-��Fd��Ĩ\\A��zlw��=�m���W�]��H\'J�S�e+�eG�<�ݾ��sY=�\\]ͫ��w�������]��5������ZLP��k�\'\\�>Yr���:�����[�&�Ԗ+���$�\'$cvk��6PhZ����P��4����N�z�ΤS^�>�BZ����4O\0x�\\�����m���K}�Xv1�У\n�9�uگ�?Ϣ~�ɴDH�ס�.�V;��ӝ�x�J��)��x�߯�{���H��pX��I�����U�Ԯ�����X���X����\'�L���Da.mJ��W��_�s��^��X�kw	qj�D!�q�����G���ä��3-����UY�K��\0�T�Ϸ\'ҫã^��E=�~pwh�i��*3��\0�||�W�2Z�I�i��٥s�_��$����]�+ݾPI���[km<P�[]�#�����9S�U���}�����0�֛�ȗT�%�u���)�O�X��v����A�N���%��s%�Ȅ��&B�p� a����;٫}�IKNd�������n5+6\n`>H22��C:)<�3]ޭ��9��\"��m���k�\'|d��������P���~��Z�%�o�,��J���^uy��6w�K$P̒��8��ڭ��0:UF�/j���t���S�V��t}��cj~ZH�r�0����\n��>�;���[:Գ���\'��9��!��f�.4�GN��_� �sdc�u��m���*�M3	4�^X�-��Gט��jW�Ӵ��Q�ڥ�`{�Ґ��Pq夸\\�n�s���M�T��)#��GWP���r;z�mw+���\"݆�,�2�3�1�I �9����ӭ�)p�ݜ��_B+;�ۙg��֮Gsl���,�CGp뎹<�9����{��l�G����ٮY�tU(y\0W)���������3m�𨩐;|���24�{�޴�����=$VE�������N��8�ʓJ�N�+��y����daX��z�4\rnn����d���,�Q���������Y�iBk��.���H�u�Z���ݣ�v\0`��c��)�g6�u[��@$��ݚ5Rʁ×E���$���R�N�>�K��$P���FFC1菟����q�ق9���0\0%Z\0����\0&�K+kO,*��*���5ɉ�r$�&Sz4R�Ð��=E\'q�H\r���PN1�0@\'�7(��qj��s\"��\0y+@�[Asp`&K��9�q�����C🇶��W��`��,wmN����\0\Z�X���n���..R�~�y�����5��WUa3|�E$~�����;�LH��A�YePq�`��{�YŨ]��m�,>�A��O��m�iw2��zZ�9-o��YGQ���9$��_���g��D���5�u2�G���\'��+�u�7F�t�=.T���+vv��9r��\\�qב�5�2}7�eŜ�$�f���:�F������U��L�e����+�ZW�&��t��%�IZ�qu%�f�JҲ������<\Z�D���ẃ�19W)u��Cߑ֡��R[���؇#�gҾ��$�b��\\�Zy,��<� ��\r��<���T|�+�U䒾�י/�=?���ű�U|�xD����1�O�<~5���z��7���Ŭ8�)���^�k�l�;g�Y�\Zz&��Nwy�O��<���}WI�ɕ\"\0^4�*J�8��\0=�W��1��3�V����y�w��<Au���.��9�ҫ�u���l�p%�y\0w$�v�\nK}CW��O�����q\0bprX��\'&�F�lo�0���\"�bs��/=3�!�r���#��\'���H�.4%��Э\"�X<�Q˸Ƹ�ӀG^�h�z4��C\ZZG$R<��5f��)X���R�⋨�t��F������8�=}iĮ�|ƿ�v�N1ת�¡b�����S�\'%����})��\0K����7G�\"���6�3��ּ�acye�n���==�ї��ψQ.d�<�c���l�9v1��(���s��TR�Ab�W#����S��O����uc˵/�[4Q���P8�9\'88�x��k���¸u?&I�p<��x�?���.�;���\0ZQ.�\0p8�\0=kV��>�I��(�{�r�q]�U�-�~��i\'�_��M�&M>������n]��,�� �s��(�t���������ԅS��^�ំ^�n�ھ��X[��f	�00Cg��N�ݓ��Msk�y�6��\Z8�,�V��{����5�����I�ȥ����s���|U�c������Ż@�*1�X�w�\0�װ]�<�\r0gk��� �\"H�d����x�b�+�;Xӊ��Q� RE6=O�I�d񓖜�z�]O#��Ϙi� W���B2B������⩭�\"�#G#|�w �?0>����u�R.tpʤ���u���{�J��fe\'�����Mcj-�7�o�\Z��o���[Iԯ��a�e�`,LFZ�<�$�I%ٖGb�#F�\'�x��{�2P�WP1�@~�E.�ig�OWP�B������3�px�Sly���M� u�k^���9H�Ey��Kub���[�\n���\\0\"h�1O�֟� �c�Bhx�ͳ�\'� ���1�����^���/k�}���2.7\\M+Eo#�śt9\0����H۾�l��Xx�Mu+���˳P�ǫD�~ �U�Xi5kEQ�@��Y��b�*�I_q�,@�c@;�qS�!�@�گ��u�����?靦?,�Y����U��t\"��C�N���O�\0����(���m��Q4r�O�.��W�k�mM�g�)ϟ<�����[�F�h�Kel�@�y��g�_��c8̟�E�sko,�,��@8���*չ��Gy4D7%��m�u0x{I���q՘�~�洡Ӭ��\Zu��x����V2�[��3?os6��؋k_��?�@�\0|��Uu������zm�sR��*���k\0a!�U�\"P@����5���\'O��J���[���\0#jr���\0���,�`Y�-�f<y��c���oV�A�\0���d�tw�3����U�{[��l���8\"0�O�;����\0�p���*F��s|���޹�S�7���c�ԧ��Seqd�ٳ�;WGo&���kP	���\\m����<[����oı�bL�RH�s�r��~fѫ���.��h�\ZyVW\'�`�-#�\0��ax=�gi�=卢��%�GQ/,s�9��p��#\"����v����nU���9��A�=k����m�ovI,U�I�9`\0�x�5�b�U�|�z�m�i��ש��;��6�D�r�%����K�ŀl�9�sP�&�&;F�����Bx�A)p���5�c�3�q֪\\���L��8��W��Ȓw�6U!�i|�_l[;Ė�:�S�N==�\"�k�]+�ZT7��J�cx[�˸`�q�}k���\\��I�=.���ߡ�\n�HB��\\���,֔e���h�\03U�ݮhM�X��~�\'P��`�dnRA�8�C��P���X�x�@e�}�PFB�=��u~5�L���-��jLD�e<�c<�X};��g�i�<1VV����Ϩ篮Gj�V�6҅�*��Fw/�譥�6�\0h�ɸ0���-��Z�.�?.�a�TzX�������Q�>��2��ݗ؎*����T���\0�a$�R�^�m��#�-��Ts����|��G+�0x�Y1j��kG$�a���9���70�o�̼u�~���{8~#P�َ��]Rwݟ�g\n�\0s�v�ְ<K�s`�Ln r̻�n�I5ۙQ	�@X�r�\rm�:��,7cU��\">B��\'P��U*��JJ\Z��̙������*���7~?ʻ8M�q�����䲂{q�=�>��i\"\\�i��A$�C�u#։��?4lNH�O«5VwK�I7-��Yv����㿿�Kw��L��ɏ��Y.�+,��Bv�Ԩ���Du��x B�N�tb�.�����������q\\��^V�>�����x��Z�c���2�\\ںE6v�H�78��d�-ʒ|�?D<{�jr�_�a���ڹK�V�R�J�HU�0*����	B9��K/ΰ��#�\0��s����?j\Z����ҝ\'�re�[#��=�e(r���Ф�ٝ�����ܪ��싟皳��\0��A�P��<�����?�z��g�%Ŭ�-L�<���k�X�Tm&c�:o�g�%������S�ILwG\0��=k�\"�5�\ry�(�%�\\~df������,��o�����C�IlzB*H:���$���X�UϹ�=�j����N2�t�xS������vi1�Mf��\0t�\'f�8-�1Ȍ��\r��֯E�|��[�p�+	Vdn$\'خj�WW(1�#С��Q]\Z��.�qt�6�#���z�����F�%�,��ZZ�C$���+J=U�Z)�m剆Xd��浲�F�t���LH��¾&�ŝ�ⶶ�!�N�8\n��Ǔ��<}H\0�u�ڋnwׄ�G��ך�_� 6q<��,�NzҲ���Ϝ��%���j�Y_޹��4�2��Y�l�77\\d�������cר�`@�Pq���+�����[˙� rc;PMǂ~��%�޽y�iO4jND�\'�q�T}G��}ҩ���=.�[F|��Nr��Rj���H`2^\\�o�Ѵ�\0{�῭x����o{�H��M��v���ղ��o2v7gi����X�\0J��~-ޮ!�\'o�5U�������;��4x�Mup�[.�3\0�����=�f|?�v�cw�)��������9������:�6���q�\Z�o�1�j\Zbi�o���ǰ�](��KN��\\�z��Џ�_�ٯ��#\0G!�#�x��r���7��K�iz���=��}?��䷚�v��[#.�I���j3��\\F�x2�ռ�O�*Eg,�%uZq~���8�����3�X����\0�o�T�4�V�\\��H�[�q�+���X�x����E2y������f̚��F2��?����R�z��y���Cq�C�K��%1[�N�?�\"D�\0�XK�\0	\r���Y�>얻3��Ec�����$�`�|�6���?:�k�j���Cae4��*s�;���=�9BP|�2��v->�m�/tֈc�k8 }���T��t��F���d��$ƶ��J�m�卜lF���0ϲ�~�q~\Z��|>e������!���3������G�4��#��7Ѡ�Lh琾hR���_�W�����f��0v]C� ����\0�=���H��t*�6�C��\'�2�GҥGU�,Տ�EV�5)�+[C5([K���S�����%f���04���#VVl18\0�{��u-:\r8y��B���\"�����>�*���A�Z�y�\n?��\\�je���.�F����� Ek1����sW��V�ţ�f#�Fc�&�v�2}�\0�5���q�2i�dq����H�@��5����D�<y�{��i�����\0��I6�����HA/m��<Q���m��O�U}7U�I�V�<ۘ��!��+q�	/L�ms]��R���e�����&}zU*r���.V��d��p9�I��>�^M�j�9�O��fA�M�=��Bc��?2*�7ŉ+�_�y ���z�Ҝ7l9_r\'�dS��w\Z�,����`s�`U���]D\Z��C���������H��p��8�$��(\"�)KG/�\\��zo�&����Võ��NM�\'���)��nVM���{q�*�����~q��c>��z[M>���Ƨ\r<�$C����(���:��^[�׻6zk-���|����8P����Wc�xI0�z�b�ڌ��s�+cJ��7�L�$sq*��e�?�j��]4�T����r/�E�Z-z��ovy�&�QT*/T``(k���Fk\"1#�_�L�#���	\r�`Ry$��f��ˢ.B�y��m��\0�@x�`����I�g�,��`�6��1�����k[:�U<zP���j�E�J��cw;ʠpA��v�g�� $![�l���/b�.��$h���o�@�$��?�7����ZAkv�x�$�z��ʯ�9>�WG��$�:�TOc���č?I��IҮ�Rbc���-����`r=�ύj�����qH`���8f#&r}���U��-c	g\Zƾ��}?��s�M������L\0c�J�<�\0��ڲr�75����+�Q��#q1ln��<�T/��v\Z?��kZ*����gE�,���?�sH����K\n� �;����\n�O���0��ڸ�bk�Z\Z/��8ʝ�=N�B�c�]:$7I��H%��\'����y��)�3�Y�>�i:�d��g�f�h�c���1T��Kwp�Eq�Y���������]m���%�#L�Ec����\'���Zi�]�ʛW��u��w��wzm�F;�Yr&s�;����Yi���,��緰����\0:��ay����v�� ��o�\nAZn��\0�d�������b}�(�n�\0��[�\\�L��-4�[D�]m�䗝�g��U�>�Ys�X��x���iF�{d13)��G�tQ�#�Ҽ������+��w�`�)���v��~0��0 ��q\\��ӥjp��5N��wP�s�-�pڽ�H\'l�Hl�?^k���	�ibG��[�6�T\0��t9V��\0\n��8a�n�g=j���O\"3K���<�^]:��K�?ԙ�<�<��K�]��xd?�H�(x?�i�wĚ߅.�֝?��Y0J8\'���U?���F�����1����2P�H�c^i�d䬂X��L���٥�sK������^���x�ar#���\0�Y�*������n3V5t�O��\\2rI1�u ��ͤY�L����u�����\0�޻m+�2�:v�<�D�>ͩgsF݄���?�z��JZ�R\'&��j����\0F��ebk�V\\��牕\\�[+��\0�o]ډC��s�(dU�%kh�U_��6��=k���Rm�b��k�$���a�򬋋7�m������v�G���?hq&0���3��\0\nԳ�u1N���,F�#k����JM#.kk��U��swbJ��ƪ�;��Li\"(�]%G�g�Ƶ�\"+���;�Ո��}���3<���%�ͼ�H\0�X��99�6�F�m�X�	R�2�����ET��}�+��^@��~���$·*H�e�n\0G�u�$�e��d!@�<���~��JpW���R�Ot�b9�Ш ��WI�iZ\r��l.,�/:�U����<t�s��ǃ��:��q4�u�pG��HF���h��K��2�F�\0~��M����x`��C�MN��0�~g�<.�p�L���H�\r���=�$�M\r;D�Y� %�n��}��A��K��%�+uH�ac�����(tYN\\��!��N�E�1!b8�As��-5�9�MOY�oq^���\0�T��Gm\Z�x�Td�O�����:~���( ��qʕ�b�\0x�>���q��w3K3�������эMmdv���d|k�q��j�>;�[�/�T���9!�c��.o&��KSW��z�x�H�q�O���\0V��5��d�:)�a`?^H%a��u�`��̙���>���[2���k^ ]RE���NV H�=��󬧐3�I�Ұ��bIT��N$�Οw�*@#��1���#ֲ�f�J�V�/\rF�=F8/E�\'y�ggg���[:�������@�UD��q�ϭq~[}�$���Zz�=Mh�����ǹ��A�|��On��)����`Q�X�\0�l�Fiۉ�.:s�Q����C���x�Fhb�yJ������Z�_��%����$�0�q��A��>[�pS�$�գ�y�Y�Ttyp~���Y�]4�e�=���p�����<�#q8��w�s��|�T�n)���E?j�B�	�y9�����ᑗ��Y��t�{I٤exv������6Џ�>ǃ�^�w�i+b�\Z�s#cuҮ���\\S�?[�S�2\\�B�	<{��W�J����ɐ���:�t�V\\�t:%U�ur벷�ps�Z����4/�\\�\\9bX��h.[v3Ӯh�\Z(�Ђ�۟Tg� �̯�u���J{�b 4�_�8�϶?Z�-�I?ZiQ��t�Ն�+#���b�[iPF�.�l����U�a� `C)��B;�0��Z�W?jC��b�~�����ʌjQ�WGg�x�����\0�zG����t�W�]O�\Z=�q��Ey�����+��5Y��3��K��G�*/��,:������v��7��m�}	���VIn&�yI�#�W�5���xd���@ߩ���,�̋\Z��n�d}�j9\"~�R=N���v���\0t<X��\0�7S�m�6Oè�L�oO��ΟO��$��Ge��0�G�\r5�Η1�\0�U���c*s�\"=�Ds���Ha��I���q�=�A�Y�E0�[�D�%�7s�W\\�֍E-�\';d���z}A��a�R�W�X��e`�G����NQ��m|H�๗n�Gp��U��OQ�@��Vm���y�z�G��z�Z\'W�RL�����V�oa�M���s$<�c\'4�x�B�T�c~i1�ES�����#�\rf�wa��r۞E]�ҝ�X帹�K�1,$m�3��k,���=���7�\'s�ᴙ���1ұ��}�5���|bK��{\'��n�QYJm�3���NMˡ�M Pj��c��V�JǪ�Bvn�o=������O^�݀g��=h��1�Wq8�֤TS�~�)2d4<�j<�zQE&�LU��Y$\0��E��֧�D[�,ն)���8��E�ԨI��r�֧��+�a�H�8�R��~�ET�4���q<�\Z�Y$`:��5Oʊ(D-,rI7 �|�ʭ���w��\"�H\0d����P4��G�<zQuwR�[,q�~Y��,�h��V�e��ܶ�vo�`�$zE�vi�@?�&¤2��s�E��y�e�K�#���y����tQ@$�$aR�Čh���8�C�,q�)s��q�E�CD�1�͜��ò��uV�A��ڊ*�eվ�������O�U��mE>hod+��d���E���3��\0	&�S\0o�m9��0��\'m�,���3��EJ�;��G��',1);
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
INSERT INTO `tbl_estados_brasileiros` VALUES (0,'Acre','AC '),(1,'Alagoas','AL '),(2,'Amapá','AP'),(3,'Amazonas','AM '),(4,'Bahia','BA '),(5,'Ceará 	','CE'),(6,'Distrito Federal','DF'),(7,'Espírito Santo','ES '),(8,'Goiás','GO'),(9,'Maranhão 	','MA'),(10,'Mato Grosso','MT'),(11,'Mato Grosso do Sul','MS'),(12,'Minas Gerais','MG'),(13,'Paraná','PR'),(14,'Paraíba 	','PB'),(15,'Pará 	','PA'),(16,'Pernambuco 	','PE'),(17,'Piauí','PI'),(18,'Rio de Janeiro','RJ'),(19,'Rio Grande do Norte','RN'),(20,'Rio Grande do Sul 	','RS'),(21,'Rondonia','RO'),(22,'Roraima','RR'),(23,'Santa Catarina','SC'),(24,'Sergipe 	','SE'),(25,'São Paulo 	','SP'),(26,'Tocantins 	','TO');
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
INSERT INTO `produto` VALUES (1,'Pão de Forma','Unid'),(2,'Tomate','Kg'),(3,'Chocolate','Unid'),(4,'Batata Palha','Unid');
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
  `PAGO` varchar(3) NOT NULL DEFAULT 'NÃO',
  `DATA` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'TV',2200,'NÃO','2014-06-09'),(2,'TV',2200,'NÃO','2014-06-08'),(3,'TV',2200,'NÃO','2014-06-07');
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
