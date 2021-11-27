#增加CI属性值
ALTER TABLE iomci.iom_ci_info ADD COLUMN `ATTRS_STR`  text NULL COMMENT 'CI属性值' AFTER CI_VERSION;
#处理CI属性值
DROP FUNCTION IF EXISTS `typeDataToInfo`;
DELIMITER ;;
CREATE DEFINER = `root`@`%` PROCEDURE `typeDataToInfo`()
BEGIN
  DECLARE _temp VARCHAR(100);
  DECLARE _flag VARCHAR(9000);
  DECLARE _num INT DEFAULT 35;
  DECLARE val text(50000) charset 'utf8mb4';
  DECLARE _id VARCHAR(100);
  DECLARE _CI_TYPE_ID VARCHAR(100);
  DECLARE _DOMAIN_ID VARCHAR(10);
  DECLARE	_DATA_1 text(0);
  DECLARE _DATA_2 text(0);
  DECLARE _DATA_3 text(0);
  DECLARE _DATA_4 text(0);
  DECLARE _DATA_5 text(0);
  DECLARE _DATA_6 text(0);
  DECLARE _DATA_7 text(0);
  DECLARE _DATA_8 text(0);
  DECLARE _DATA_9 text(0);
  DECLARE _DATA_10 text(0);
  DECLARE _DATA_11 text(0);
  DECLARE _DATA_12 text(0);
  DECLARE _DATA_13 text(0);
  DECLARE _DATA_14 text(0);
  DECLARE _DATA_15 text(0);
  DECLARE _DATA_16 text(0);
  DECLARE _DATA_17 text(0);
  DECLARE _DATA_18 text(0);
  DECLARE _DATA_19 text(0);
  DECLARE _DATA_20 text(0);
  DECLARE _DATA_21 text(0);
  DECLARE _DATA_22 text(0);
  DECLARE _DATA_23 text(0);
  DECLARE _DATA_24 text(0);
  DECLARE _DATA_25 text(0);
  DECLARE _DATA_26 text(0);
  DECLARE _DATA_27 text(0);
  DECLARE _DATA_28 text(0);
  DECLARE _DATA_29 text(0);
  DECLARE _DATA_30 text(0);
  DECLARE _DATA_31 text(0);
  DECLARE _DATA_32 text(0);
  DECLARE _DATA_33 text(0);
  DECLARE _DATA_34 text(0);
  DECLARE _DATA_35 text(0);
  DECLARE done INT DEFAULT FALSE;
  DECLARE _cur CURSOR FOR
		SELECT ID,CI_TYPE_ID,DOMAIN_ID,DATA_1,DATA_2,DATA_3,DATA_4,DATA_5,DATA_6,DATA_7,DATA_8,DATA_9,
        DATA_10,DATA_11,DATA_12,DATA_13,DATA_14,DATA_15,DATA_16,DATA_17,DATA_18,
        DATA_19,DATA_20,DATA_21,DATA_22,DATA_23,DATA_24,DATA_25,DATA_26,
        DATA_27,DATA_28,DATA_29,DATA_30,DATA_31,DATA_32,DATA_33,DATA_34,DATA_35 FROM iomci.iom_ci_type_data ;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	OPEN _cur;
   read_loop : LOOP
		FETCH _cur INTO _id,_CI_TYPE_ID,_DOMAIN_ID,_DATA_1,_DATA_2,_DATA_3,_DATA_4,_DATA_5,_DATA_6,_DATA_7,_DATA_8,_DATA_9,_DATA_10,_DATA_11,_DATA_12,_DATA_13,_DATA_14,_DATA_15,_DATA_16,_DATA_17,
	 _DATA_18,_DATA_19,_DATA_20,_DATA_21,_DATA_22,_DATA_23,_DATA_24,_DATA_25,_DATA_26,_DATA_27,_DATA_28,_DATA_29,_DATA_30,_DATA_31,_DATA_32,_DATA_33,_DATA_34,_DATA_35;
		SET val = CONCAT('{"ID":"',_id,'","CI_TYPE_ID":"',_CI_TYPE_ID);
		 IF LENGTH(_DATA_1)>0 THEN
				SET val = CONCAT(val,'","DATA_1":"',_DATA_1);
		 END IF;
		 IF LENGTH(_DATA_2)>0 THEN
				SET val = CONCAT(val,'","DATA_2":"',_DATA_2);
		 END IF;
		IF LENGTH(_DATA_3)>0 THEN
				SET val = CONCAT(val,'","DATA_3":"',_DATA_3);
		 END IF;
		IF LENGTH(_DATA_4)>0 THEN
				SET val = CONCAT(val,'","DATA_4":"',_DATA_4);
		 END IF;
		IF LENGTH(_DATA_5)>0 THEN
				SET val = CONCAT(val,'","DATA_5":"',_DATA_5);
		 END IF;
		IF LENGTH(_DATA_6)>0 THEN
				SET val = CONCAT(val,'","DATA_6":"',_DATA_6);
		 END IF;
		IF LENGTH(_DATA_7)>0 THEN
				SET val = CONCAT(val,'","DATA_7":"',_DATA_7);
		 END IF;
		IF LENGTH(_DATA_8)>0 THEN
				SET val = CONCAT(val,'","DATA_8":"',_DATA_8);
		 END IF;
		IF LENGTH(_DATA_9)>0 THEN
				SET val = CONCAT(val,'","DATA_9":"',_DATA_9);
		 END IF;
		IF LENGTH(_DATA_10)>0 THEN
				SET val = CONCAT(val,'","DATA_10":"',_DATA_10);
		 END IF;
		IF LENGTH(_DATA_11)>0 THEN
				SET val = CONCAT(val,'","DATA_11":"',_DATA_11);
		 END IF;
		IF LENGTH(_DATA_12)>0 THEN
				SET val = CONCAT(val,'","DATA_12":"',_DATA_12);
		 END IF;
		IF LENGTH(_DATA_13)>0 THEN
				SET val = CONCAT(val,'","DATA_13":"',_DATA_13);
		 END IF;
		IF LENGTH(_DATA_14)>0 THEN
				SET val = CONCAT(val,'","DATA_14":"',_DATA_14);
		 END IF;
		IF LENGTH(_DATA_15)>0 THEN
				SET val = CONCAT(val,'","DATA_15":"',_DATA_15);
		 END IF;
		IF LENGTH(_DATA_16)>0 THEN
				SET val = CONCAT(val,'","DATA_16":"',_DATA_16);
		 END IF;
		IF LENGTH(_DATA_17)>0 THEN
				SET val = CONCAT(val,'","DATA_17":"',_DATA_17);
		 END IF;
		IF LENGTH(_DATA_18)>0 THEN
				SET val = CONCAT(val,'","DATA_18":"',_DATA_18);
		 END IF;
		IF LENGTH(_DATA_19)>0 THEN
				SET val = CONCAT(val,'","DATA_19":"',_DATA_19);
		 END IF;
		IF LENGTH(_DATA_20)>0 THEN
				SET val = CONCAT(val,'","DATA_20":"',_DATA_20);
		 END IF;
		IF LENGTH(_DATA_21)>0 THEN
				SET val = CONCAT(val,'","DATA_21":"',_DATA_21);
		 END IF;IF LENGTH(_DATA_22)>0 THEN
				SET val = CONCAT(val,'","DATA_22":"',_DATA_22);
		 END IF;
		IF LENGTH(_DATA_23)>0 THEN
				SET val = CONCAT(val,'","DATA_23":"',_DATA_23);
		 END IF;
		IF LENGTH(_DATA_24)>0 THEN
				SET val = CONCAT(val,'","DATA_24":"',_DATA_24);
		 END IF;
		IF LENGTH(_DATA_25)>0 THEN
				SET val = CONCAT(val,'","DATA_25":"',_DATA_25);
		 END IF;
		IF LENGTH(_DATA_26)>0 THEN
				SET val = CONCAT(val,'","DATA_26":"',_DATA_26);
		 END IF;
		IF LENGTH(_DATA_27)>0 THEN
				SET val = CONCAT(val,'","DATA_27":"',_DATA_27);
		 END IF;
		IF LENGTH(_DATA_28)>0 THEN
				SET val = CONCAT(val,'","DATA_28":"',_DATA_28);
		 END IF;
		IF LENGTH(_DATA_29)>0 THEN
				SET val = CONCAT(val,'","DATA_29":"',_DATA_29);
		 END IF;
		IF LENGTH(_DATA_30)>0 THEN
				SET val = CONCAT(val,'","DATA_30":"',_DATA_30);
		 END IF;
		IF LENGTH(_DATA_31)>0 THEN
				SET val = CONCAT(val,'","DATA_31":"',_DATA_31);
		 END IF;
		IF LENGTH(_DATA_32)>0 THEN
				SET val = CONCAT(val,'","DATA_32":"',_DATA_32);
		 END IF;
		IF LENGTH(_DATA_33)>0 THEN
				SET val = CONCAT(val,'","DATA_33":"',_DATA_33);
		 END IF;
		IF LENGTH(_DATA_34)>0 THEN
				SET val = CONCAT(val,'","DATA_34":"',_DATA_34);
		 END IF;
		IF LENGTH(_DATA_35)>0 THEN
				SET val = CONCAT(val,'","DATA_35":"',_DATA_35);
		 END IF;
		IF LENGTH(_DOMAIN_ID)>0 THEN	SET val = CONCAT(val,'","DOMAIN_ID:',_DOMAIN_ID,'"}');
		 ELSE SET val = CONCAT(val,'"}');
		END IF;
		UPDATE iom_ci_info SET ATTRS_STR = val WHERE  iom_ci_info.ID = _id;
	IF done THEN
     LEAVE read_loop;
  END IF;
	END LOOP read_loop;
	CLOSE _cur;
END
;;
DELIMITER ;