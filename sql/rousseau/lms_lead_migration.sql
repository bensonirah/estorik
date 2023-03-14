ALTER TABLE `lms_lead` CHANGE `type_credit` `type_credit` ENUM (
    'CREDIT_CLASSIQUE',
    'CREDIT_LOA',
    'CREDIT_LLD',
    'INDIFFERENT'
) CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '(DC2Type:LmsCreditType)';