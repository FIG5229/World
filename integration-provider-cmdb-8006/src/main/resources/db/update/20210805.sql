ALTER TABLE `iomci`.`iom_ci_info`
MODIFY COLUMN `DOMAIN_ID` int(0) NULL DEFAULT NULL COMMENT '数据域ID' AFTER `ATTRS_STR`;
ALTER TABLE `iomci`.`iom_ci_data_rel`
MODIFY COLUMN `CJR_ID` bigint(0) NOT NULL COMMENT '创建人' AFTER `DOMAIN_ID`;
ALTER TABLE `iomci`.`iom_ci_rel`
MODIFY COLUMN `CJR_ID` bigint(0) NOT NULL COMMENT '创建人' AFTER `DOMAIN_ID`;