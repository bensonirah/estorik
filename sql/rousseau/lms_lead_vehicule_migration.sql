ALTER TABLE `lms_lead_vehicule` CHANGE `energie` `energie` ENUM (
    'Diesel',
    'Essence',
    'Electrique',
    'GPL',
    'Hybride',
    'Hybride Rechargeable',
    'E85',
    ''
) CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '(DC2Type:VehicleEnergyType)';