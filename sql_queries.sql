06/03/2019

ALTER TABLE `city` ADD `service_available` TINYINT(1) NOT NULL DEFAULT '0' AFTER `state_id`; 

ALTER TABLE `categories` ADD `squence_number` INT(11) NULL DEFAULT NULL AFTER `image`, ADD `status` TINYINT(1) NOT NULL DEFAULT '1' AFTER `sequence_number`; 

11/03/2019

ALTER TABLE `properties` ADD `apt_no` VARCHAR(255) NULL DEFAULT NULL AFTER `address`; 

ALTER TABLE `user_cards` ADD `holder_name` VARCHAR(255) NULL DEFAULT NULL AFTER `user_id`; 


12/03/2019

ALTER TABLE `jobs` CHANGE `amount` `amount` DOUBLE NULL DEFAULT NULL, CHANGE `type` `type` ENUM('E','G') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 


15-03-2019

ALTER TABLE `properties`
  DROP `short_description`,
  DROP `description`,
  DROP `image`,
  DROP `is_delete`;

ALTER TABLE `job_quotations` ADD `amount` FLOAT NULL DEFAULT NULL AFTER `agreed_at`; 

ALTER TABLE job_quotation_items DROP FOREIGN KEY job_quotation_items_vendor_id_foreign;
ALTER TABLE job_quotation_items DROP FOREIGN KEY job_quotation_items_job_id_foreign;
ALTER TABLE `job_quotation_items` DROP `job_id`;
ALTER TABLE `job_quotation_items` CHANGE `vendor_id` `quotation_id` INT(10) UNSIGNED NOT NULL; 
ALTER TABLE `job_quotations` ADD `tax_rate` FLOAT NULL DEFAULT NULL AFTER `amount`; 


18-03-2019

ALTER TABLE `users` ADD `tenant_by` INT NULL DEFAULT NULL AFTER `profile_pic`;

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES ('24', 'User Job Status', 'api/user/jobstatus', 'GET', 'Accept | Authorization', NULL, NULL, NULL, NULL), ('25', 'Job Timeline', 'api/user/jobdetailtracklist', 'POST', 'Accept | Authorization', 'job_id', NULL, NULL, NULL); 

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES ('26', 'Open Job', 'api/provider/openjob', 'GET', 'Accept | Authorization', NULL, NULL, NULL, NULL), ('27', 'Accept Job', 'api/provider/acceptjob', 'POST', 'Accept | Authorization', 'job_id', NULL, NULL, NULL); 

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES ('28', 'Reject Job', 'api/provider/rejectjob', 'POST', 'Accept | Authorization', 'job_id', NULL, NULL, NULL), ('29', 'Add Job Quotation', 'api/provider/addjobquotation', 'POST', 'Accept | Authorization', 'job_id | quotation_item | agreed_on | agreed_at | deposite_amount | tax_rate', 'Quotation item format : [{\"name\":\"abc\",\"cost\":100},{\"name\":\"abc\",\"cost\":100}]', NULL, NULL); 

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES ('30', 'Quotation Detail', 'api/provider/getjobquotationdetail', 'POST', 'Accept | Authorization', 'user_id | job_id', NULL, NULL, NULL), ('31', 'Quotation Approval', 'api/provider/quotationapproval', 'POST', 'Accept | Authorization', 'vendor_id | job_id | status', NULL, NULL, NULL); 

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES ('32', 'In Progress Job', 'api/provider/inprogressjob', 'POST', 'Accept | Authorization', 'job_id', NULL, NULL, NULL), ('33', 'Check in/Check Out', 'api/provider/checkin_out', 'POST', 'Accept | Authorization', 'job_id | type', 'type => checkin | checkout', NULL, NULL); 

UPDATE `api_services` SET `url` = 'api/user/quotationapproval' WHERE `api_services`.`id` = 30; 

ALTER TABLE `job_disputes` CHANGE `resolve_comment` `resolve_comment` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 


19-03-2019

ALTER TABLE `contact_us` DROP FOREIGN KEY `contact_us_user_id_foreign`;
ALTER TABLE `contact_us` DROP `user_id`;
ALTER TABLE `user_subscriptions` CHANGE `start_date` `start_date` DATE NULL DEFAULT NULL, CHANGE `end_date` `end_date` DATE NULL DEFAULT NULL; 

ALTER TABLE `job_details_track` CHANGE `user_id` `user_id` INT(10) UNSIGNED NULL DEFAULT NULL; 



22-03-2019

UPDATE `api_services` SET `parameter` = 'name | email | password | mobile | gender | age | is_terms | platform' WHERE `api_services`.`id` = 2; 

UPDATE `api_services` SET `parameter` = 'name | email | password | mobile | gender | age | is_terms | platform | device_id' WHERE `api_services`.`id` = 2; 

ALTER TABLE `system_email_templates` CHANGE `bcc_emails` `bcc_emails` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `cc_emails` `cc_emails` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 

ALTER TABLE `system_email_templates` ADD `status` TINYINT(1) NOT NULL DEFAULT '1' AFTER `email_html`; 



23-03-2019

UPDATE `system_email_variables` SET `variable_name` = '#USER_NAME#' WHERE `system_email_variables`.`id` = 1; 
UPDATE `system_email_variables` SET `variable_name` = '#SYSTEM_ADMIN_URL#' WHERE `system_email_variables`.`id` = 2;
UPDATE `system_email_variables` SET `variable_name` = '#SYSTEM_COMPANY_NAME#' WHERE `system_email_variables`.`id` = 3; 
UPDATE `system_email_variables` SET `variable_name` = '#SYSTEM_SITE_URL#' WHERE `system_email_variables`.`id` = 4; 

UPDATE `master_appearance_settings` SET `records_per_page` = '10' WHERE `master_appearance_settings`.`id` = 1; 


25-03-2019

ALTER TABLE `sub_categories` CHANGE `description` `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL;


INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Delete Property', 'api/user/delete/property', 'POST', 'Accept | Authorization ', 'property_id', NULL, NULL, NULL);

ALTER TABLE `categories` CHANGE `sequence_number` `sequence_number` VARCHAR(64) NULL DEFAULT NULL; 
ALTER TABLE `sub_categories` CHANGE `sequence_number` `sequence_number` VARCHAR(64) NULL DEFAULT NULL; 

ALTER TABLE `users` CHANGE `gender` `gender` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'male';

UPDATE `api_services` SET `url` = 'api/user/get/category' WHERE `api_services`.`id` = 13; 

ALTER TABLE `users` CHANGE `country_code` `country_code` INT(11) NULL DEFAULT '+1'; 



26-03-2019

ALTER TABLE `categories` ADD `hover_image` VARCHAR(255) NULL DEFAULT NULL AFTER `image`; 
ALTER TABLE `sub_categories` ADD `hover_image` VARCHAR(255) NULL DEFAULT NULL AFTER `image`;


27-03-2019

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Provider Detail Page', 'api/user/providerraringlist/{provider_id}', 'GET', 'Accept | Authorization', 'provider_id', NULL, NULL, NULL);

UPDATE `api_services` SET `description` = 'if(One time booking form) requested_date | requested_time OR if(On Going Booking Form) frequency | start_date | end_date | repeat_on\r\n' WHERE `api_services`.`id` = 21;

UPDATE `api_services` SET `parameter` = 'property_id | category_id | sub_category_id | vendor_id | mobile_number | prefered_method | description\r\n' WHERE `api_services`.`id` = 21;   

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Add Rating', 'api/user/addrating', 'POST', 'Accept | Authorization', 'job_id | rating_to | rating | review_text', NULL, NULL, NULL); 

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Provider Listing (Get Quote Screen Dropdown)', 'api/user/get/providerlisting/{sub_category_id}', 'GET', 'Accept | Authorization', 'sub_category_id', NULL, NULL, NULL); 


28-03-2019

ALTER TABLE `master_sms_settings` CHANGE `admin_url` `api_url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL; 

ALTER TABLE `social_media_info` ADD `youtube_url` VARCHAR(255) NOT NULL AFTER `instagram_url`; 

ALTER TABLE `social_media_info` CHANGE `youtube_url` `youtube_url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 

ALTER TABLE `master_email_settings` ADD `send_mail_via_smtp` TINYINT(1) NOT NULL DEFAULT '1' AFTER `smtp_password`; 

ALTER TABLE `master_email_settings` CHANGE `admin_from_name` `admin_from_name` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `support_from_name` `support_from_name` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 

ALTER TABLE `master_email_settings` CHANGE `admin_email` `admin_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `support_email` `support_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `notification_email` `notification_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `smtp_host` `smtp_host` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `smtp_port` `smtp_port` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `smtp_user_name` `smtp_user_name` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `smtp_password` `smtp_password` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 

ALTER TABLE `master_sms_settings` CHANGE `api_url` `api_url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `username` `username` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `password` `password` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `key` `key` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 

ALTER TABLE `social_media_info` CHANGE `facebook_page_url` `facebook_page_url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 

ALTER TABLE `master_email_settings` CHANGE `send_mail_via_smtp` `send_mail_via_smtp` TINYINT(1) NULL DEFAULT NULL; 

ALTER TABLE `master_appearance_settings` CHANGE `quote_waiting_acceptance_time` `quote_waiting_acceptance_time` INT(11) NULL DEFAULT '5', CHANGE `records_per_page` `records_per_page` INT(11) NULL DEFAULT '25'; 


29-03-2019

ALTER TABLE `subscriptions` ADD `discont` VARCHAR(64) NULL DEFAULT NULL AFTER `price`, ADD `discount_price` VARCHAR(64) NULL DEFAULT NULL AFTER `discont`, ADD `duration_text` VARCHAR(100) NULL DEFAULT NULL AFTER `discount_price`; 

UPDATE `subscriptions` SET `name` = 'Plus+' WHERE `subscriptions`.`id` = 2; 

UPDATE `subscriptions` SET `discont` = '50% off' WHERE `subscriptions`.`id` = 2; 
UPDATE `subscriptions` SET `discount_price` = '9.99' WHERE `subscriptions`.`id` = 2;
UPDATE `subscriptions` SET `price` = '19.99' WHERE `subscriptions`.`id` = 2; 
UPDATE `subscriptions` SET `duration_text` = 'Price Per Month' WHERE `subscriptions`.`id` = 2; 
UPDATE `subscriptions` SET `price` = '19.99' WHERE `subscriptions`.`id` = 3; 
UPDATE `subscriptions` SET `discount_price` = '9.99' WHERE `subscriptions`.`id` = 3;
UPDATE `subscriptions` SET `duration_text` = 'Price Per Month' WHERE `subscriptions`.`id` = 3; 

INSERT INTO `subscription_feature` (`id`, `subscription_id`, `feature`, `created_at`, `updated_at`) VALUES (NULL, '2', '1 Property', NULL, NULL), (NULL, '2', '1 EMergency Quote', NULL, NULL); 
INSERT INTO `subscription_feature` (`id`, `subscription_id`, `feature`, `created_at`, `updated_at`) VALUES (NULL, '3', '1 Property', NULL, NULL), (NULL, '3', '1 EMergency Quote', NULL, NULL);


DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 6 
DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 10
DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 20


INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Get user current subscription plan', 'api/user/usersubscription', 'GET', 'Accept | Authorization', NULL, NULL, NULL, NULL); 


1-04-2019

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Edit Tenant', 'api/user/edittenants', 'POST', 'Accept | Authorization', 'tenant_id | property_id | name | mobile | gender | age | platform', NULL, NULL, NULL); 

ALTER TABLE `state` CHANGE `state_code` `state_code` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `tax_rate` `tax_rate` VARCHAR(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 

ALTER TABLE `city` CHANGE `name` `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 


02-04-2019

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES ('2', 'group_a', 'Group A', NULL, NULL, NULL), ('3', 'group_b', 'Group B', NULL, NULL, NULL); 

UPDATE `api_services` SET `parameter` = 'email | password | device_id | role', `description` = 'role: customer or provider,\r\nif role is not send we will consider customer role', `updated_at` = NULL WHERE `api_services`.`id` = 1;

ALTER TABLE `users` CHANGE `first_name` `first_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL, CHANGE `last_name` `last_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL; 

ALTER TABLE `users` CHANGE `email` `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL;


03-04-2019

ALTER TABLE `roles` ADD `status` TINYINT(1) NOT NULL DEFAULT '1' AFTER `description`; 
ALTER TABLE `permissions` ADD `parent_id` TINYINT(1) NOT NULL DEFAULT '0' AFTER `description`; 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('1', 'home', 'Home', NULL, '0', NULL, NULL), ('2', 'sitemap', 'Sitemap', NULL, '1', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('3', 'edit_profile', 'Edit Profile', NULL, '1', NULL, NULL), ('4', 'change_password', 'Change Password', NULL, '1', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('5', 'dashboard', 'Dashboard', NULL, '1', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('6', 'user_management', 'User Management', NULL, '0', NULL, NULL), ('7', 'admin', 'Admin', NULL, '6', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('8', 'roles_permissions', 'Roles & Permissions', NULL, '6', NULL, NULL), ('9', 'customer', 'Customer', NULL, '6', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('10', 'vendor', 'Vendor', NULL, '6', NULL, NULL), ('11', 'review_ratings', 'Reviews & Ratings', NULL, '6', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('12', 'master', 'Master', NULL, '0', NULL, NULL), ('13', 'category', 'Category', NULL, '12', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('14', 'sub_category', 'Sub Category', NULL, '12', NULL, NULL), ('15', 'state', 'State', NULL, '12', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('16', 'city', 'City', NULL, '12', NULL, NULL), ('17', 'job_service_request', 'Jobs/Service Request', NULL, '0', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('18', 'open_jobs', 'Open Jobs', NULL, '17', NULL, NULL), ('19', 'completed_jobs', 'Completed Jobs', NULL, '17', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('20', 'dispute_jobs', 'Dispute Jobs', NULL, '17', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('21', 'reports', 'Reports', NULL, '0', NULL, NULL), ('22', 'conversion_report', 'Conversion Report', NULL, '21', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('23', 'rating_report', 'Rating Report', NULL, '21', NULL, NULL), ('24', 'contact_us', 'Contact Us', NULL, '21', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('25', 'settings', 'Settings', NULL, '0', NULL, NULL), ('26', 'master_settings', 'Master Settings', NULL, '25', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('27', 'company', 'Company', NULL, '25', NULL, NULL), ('28', 'email', 'Email', NULL, '25', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('29', 'sms', 'SMS', NULL, '25', NULL, NULL), ('30', 'static_page', 'Static Pages', NULL, '25', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('31', 'email_notification_broadcast_message', 'Email, Notification & Broadcast message', NULL, '0', NULL, NULL), ('32', 'email_templates', 'Email Temmplates', NULL, '31', NULL, NULL); 

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('33', 'notification_template', 'Notification Templates', NULL, '31', NULL, NULL), ('34', 'broadcast_message', 'Broadcast Message', NULL, '31', NULL, NULL); 


04-04-2019

ALTER TABLE `properties` CHANGE `status` `status` TINYINT(1) NOT NULL DEFAULT '1'; 

UPDATE `permissions` SET `id` = '35' WHERE `permissions`.`id` = 34; 
UPDATE `permissions` SET `id` = '34' WHERE `permissions`.`id` = 33; 
UPDATE `permissions` SET `id` = '33' WHERE `permissions`.`id` = 32; 
UPDATE `permissions` SET `id` = '32' WHERE `permissions`.`id` = 31; 
UPDATE `permissions` SET `id` = '31' WHERE `permissions`.`id` = 30; 
INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES ('30', 'social_media', 'Social Media', NULL, '25', NULL, NULL); 

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES ('41', 'Job Detail', 'api/get/jobdetail', 'POST', 'Accept | Authorization', 'job_id', NULL, NULL, NULL); 

UPDATE `permissions` SET `display_name` = 'Email Templates' WHERE `permissions`.`id` = 33; 

05-04-2019

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Compelted Job', 'api/provider/completedjob', 'GET', 'Accept | Authorization', NULL, NULL, NULL, NULL); 

UPDATE `api_services` SET `name` = 'Completed Job' WHERE `api_services`.`id` = 42;

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Add Employee', 'api/provider/addemployee', 'POST', 'Accept | Authorization ', 'first_name | last_name | email | mobile | employee_code | platform', 'platform -> 1 = Android , 2 = IOS', NULL, NULL);

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Get Employee List', 'api/provider/getemployee', 'GET', 'Accept | Authorization', NULL, NULL, NULL, NULL); 

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Edit Employee', 'api/provider/editemployee', 'POST', 'Accept | Authorization', 'user_id | first_name | last_name | email | platform', 'platform -> 1 = Android , 2 = IOS', NULL, NULL); 

ALTER TABLE `users` ADD `is_first` TINYINT(1) NOT NULL DEFAULT '1' AFTER `is_verified`; 


08-04-2019

ALTER TABLE `broadcast_messages` ADD `status` TINYINT(1) NOT NULL DEFAULT '1' AFTER `message`; 

UPDATE `system_email_variables` SET `variable_name` = '#ACTION_LINK#' WHERE `system_email_variables`.`id` = 5;

DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 7;

DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 8;

UPDATE `system_email_variables` SET `variable_name` = '#ACTION_LINK#' WHERE `system_email_variables`.`id` = 13;

UPDATE `system_email_variables` SET `variable_name` = '#CUSTOMER_NAME#' WHERE `system_email_variables`.`id` = 21;

DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 22;

DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 23;

DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 24;

UPDATE `system_email_variables` SET `variable_name` = '#JOB_NUMBER#' WHERE `system_email_variables`.`id` = 17;

DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 18;

DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 19;

DELETE FROM `system_email_variables` WHERE `system_email_variables`.`id` = 20;

ALTER TABLE `country` ADD `country_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL AFTER `name`, ADD UNIQUE (`country_code`);

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES (NULL, 'country', 'Country', NULL, '12', '2019-04-09 00:00:00', NULL);

UPDATE `api_services` SET `headers` = '' WHERE `api_services`.`id` = 20; 

UPDATE `api_services` SET `url` = 'api/pages' WHERE `api_services`.`id` = 20; 

UPDATE `api_services` SET `parameter` = 'email | password | device_id | logged_in_ip' WHERE `api_services`.`id` = 1; 


09-04-2019

TRUNCATE TABLE `system_email_templates`

TRUNCATE TABLE `system_email_variables` 

TRUNCATE TABLE `email_templete_type` 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'CUSTOMER_REGISTRATION_ACKOWLADGEMENT_EMAIL', NULL, NULL), (NULL, 'CUSTOMER_REGISTRATION_EMAIL_TO_ADMIN', NULL, NULL); 

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Customer registration acknowledgement Email ', '1', 'Customer registration acknowledgement Email ', 'Omnee', 'Omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL), (NULL, 'Customer Registration email to Admin ', '2', 'Customer Registration email to Admin ', 'Omnee', 'Omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL); 


INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '1', '#CUSTOMER_NAME#', NULL, NULL, NULL), (NULL, '1', '#PROJECT_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '1', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL), (NULL, '1', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '2', '#SYSTEM_ADMIN_NAME#', NULL, NULL, NULL), (NULL, '2', '#CUSTOMER_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '2', '#CUSTOMER_EMAIL#', NULL, NULL, NULL), (NULL, '2', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '2', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '2', '#SYSTEM_ADMIN_URL#\r\n', NULL, NULL, NULL); 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'WELCOME_EMAIL_TO_USER', NULL, NULL); 

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Welcome email to User (Customer, provider and admin)', '2', 'Welcome email to User', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '3', '#USER_NAME#', NULL, NULL, NULL), (NULL, '3', '#PROJECT_NAME', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '3', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '3', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL), (NULL, '3', '#SYSTEM_ADMIN_URL#', NULL, NULL, NULL); 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'FORGOT_PASSWORD_FOR_ADMIN', NULL, NULL); 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'FORGOT_PASSWORD_FOR_CUSTOMER', NULL, NULL), (NULL, 'FORGOT_PASSWORD_FOR_PROVIDER', NULL, NULL); 

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Forgot Password for Admin.', '4', 'Forgot Password for admin.', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL), (NULL, 'Forgot Password for Customer.', '5', 'Forgot Password for admin.', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL);

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Forgot Password for Provider.', '6', 'Forgot Password for Provider.', '', '', NULL, NULL, NULL, '1', NULL, NULL);  

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '4', '#ACTION_LINK#', NULL, NULL, NULL), (NULL, '5', '#ACTION_LINK#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '6', '#ACTION_LINK#', NULL, NULL, NULL); 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'QUOTE_REQUEST_TO_VENDOR', NULL, NULL), (NULL, 'QUOTE_REQUEST_ACCEPTED_NOTIFICATION_TO_CUSTOMER', NULL, NULL); 

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Quote Request to Vendor', '7', 'Quote Request to Vendor', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL), (NULL, 'Quote Request Accepted Notification to Customer', '8', 'Quote Request Accepted Notification to Customer', 'Omnee', 'omnee@gmail', NULL, NULL, NULL, '1', NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '7', '#CUSTOMER_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '8', '#VENDOR_NAME#', NULL, NULL, NULL), (NULL, '8', '#JOB_NUMBER#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '8', '#CUSTOMER_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '8', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL), (NULL, '8', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'QUOTE_REQUEST_REJECTED_BY_VENDOR_NOTIFICATION_TO_CUSTOMER', NULL, NULL);

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Quote Request Rejected By Vendor, Notification to Customer', '9', 'Quote Request Rejected By Vendor', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '9', '#CUSTOMER_NAME#', NULL, NULL, NULL), (NULL, '9', '#VENDOR_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '9', '#JOB_NUMBER#', NULL, NULL, NULL), (NULL, '9', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '9', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'QUOTE_RECEIVED_NOTIFICATION_TO_CUSTOMER', NULL, NULL), (NULL, 'QUOTE_ACCEPTED_NOTIFICATION_TO_VENDOR', NULL, NULL); 

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Quote Received Notification to Customer', '10', 'Quote Received Notification to Customer', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL), (NULL, 'Quote Accepted Notification to Vendor', '11', 'Quote Accepted Notification to Vendor', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '10', '#CUSTOMER_NAME#', NULL, NULL, NULL), (NULL, '10', '#VENDOR_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '10', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL), (NULL, '10', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '10', '#JOB_NUMBER#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '11', '#CUSTOMER_NAME#', NULL, NULL, NULL), (NULL, '11', '#VENDOR_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '11', '#JOB_NUMBER#', NULL, NULL, NULL), (NULL, '11', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '11', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 
 
INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'QUOTE_REJECTED_BY_CUSTOMER_NOTIFICATION_TO_PROVIDER', NULL, NULL); 

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Quote Rejected By Customer Notification to Provider', '12', 'Quote Rejected By Customer Notification to Provider', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '12', '#CUSTOMER_NAME#', NULL, NULL, NULL), (NULL, '12', '#VENDOR_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '12', '#JOB_NUMBER#', NULL, NULL, NULL), (NULL, '12', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '12', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'CONTACT_US_ACKNOWLEDGEMENT_TO_USER', NULL, NULL), (NULL, 'CONTACT_US_TO_ADMIN', NULL, NULL);

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Contact us Acknowledgement to user', '13', 'Contact us Acknowledgement to user', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL), (NULL, 'Contact Form to Admin', '14', 'Contact Form to Admin', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '13', '#USER_NAME#', NULL, NULL, NULL), (NULL, '13', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '13', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '14', '#SYSTEM_ADMIN_NAME#', NULL, NULL, NULL), (NULL, '14', '#USER_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '14', '#USER_EMAIL#', NULL, NULL, NULL), (NULL, '14', '#USER_PHONE_NUMER#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '14', '#USER_REASON#', NULL, NULL, NULL), (NULL, '14', '#USER_COMMENT#', NULL, NULL, NULL);  
INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '14', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL), (NULL, '14', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 


10-04-2019


INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'SUBSCRIPTION_PURCHASE_TO_CUSTOMER_AND_ADMIN', NULL, NULL); 

UPDATE `email_templete_type` SET `type` = 'SUBSCRIPTION_PURCHASE_TO_CUSTOMER' WHERE `email_templete_type`.`id` = 15; 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'SUBSCRIPTION_PURCHASE_TO_ADMIN', NULL, NULL); 

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Subscription purchase to Customer', '14', 'Subscription purchase to Customer', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL), (NULL, 'Subscription purchase to Admin', '15', 'Subscription purchase to Admin', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '15', '#CUSTOMER_NAME#', NULL, NULL, NULL), (NULL, '15', '#SUBSCRIPTION_PLAN_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '15', '#START_DATE#', NULL, NULL, NULL), (NULL, '15', '#END_DATE#', NULL, NULL, NULL); 

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Save user subscription plan', 'api/user/savesubscription', 'POST', 'Accept | Authorization', 'subscription_id', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '15', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL), (NULL, '15', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

UPDATE `system_email_templates` SET `code` = '15' WHERE `system_email_templates`.`id` = 15; 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '16', '#CUSTOMER_NAME#', NULL, NULL, NULL), (NULL, '16', '#CUSTOMER_EMAIL#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '16', '#CUSTOMER_PHOINE_NUMBER#', NULL, NULL, NULL), (NULL, '16', '#SUBSCRIPTION_PLAN_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '16', '#SUBSCRIPTION_PLAN_DURATION#', NULL, NULL, NULL), (NULL, '16', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '16', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '16', '#SYSTEM_ADMIN_NAME#', NULL, NULL, NULL); 

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'QUOTE_COMPLETED_NOTIFICATION_TO_CUSTOMER_TO_RATE', NULL, NULL), (NULL, 'QUOTE_CLOSED_NOTIFICATION_TO_PROVIDER_TO_RATE', NULL, NULL); 

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Quote Completed Notification to Customer to Rate ', '17', 'Quote Completed Notification to Customer to Rate ', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL), (NULL, 'Quote closed Notification to provider to Rate', '18', 'Quote closed Notification to provider to Rate', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '17', '#CUSTOMER_NAME#', NULL, NULL, NULL), (NULL, '17', '#JOB_NUMBER#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '17', '#VENDOR_NAME#', NULL, NULL, NULL), (NULL, '17', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '17', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '18', '#VENDOR_NAME#', NULL, NULL, NULL), (NULL, '18', '#CUSTOMER_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '18', '#JOB_NUMBER#', NULL, NULL, NULL), (NULL, '18', '#SYSTEM_COMPANY_NAME#', NULL, NULL, NULL); 

INSERT INTO `system_email_variables` (`id`, `system_email_id`, `variable_name`, `description`, `created_at`, `updated_at`) VALUES (NULL, '18', '#SYSTEM_WEBSITE_URL#', NULL, NULL, NULL); 


INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'JOB_STATUS_CHANGE_NOTIFICATION_TO_CUSTOMER', NULL, NULL), (NULL, 'JOB_STATUS_CHANGE_NOTIFICATION_TO_VENDOR', NULL, NULL);

INSERT INTO `email_templete_type` (`id`, `type`, `created_at`, `updated_at`) VALUES (NULL, 'EMAIL_TO_ADMIN_FOR_NO_PROVIDER_ACCEPTANCE_FOR_QUOTE', NULL, NULL);

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Quote or Job Status Change Notification to customer ', '19', 'Quote or Job Status Change Notification to customer ', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL);

INSERT INTO `system_email_templates` (`id`, `title`, `code`, `subject`, `from_name`, `from_email`, `bcc_emails`, `cc_emails`, `email_html`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'Quote or Job Status Change Notification to vendor', '20', 'Quote or Job Status Change Notification to vendor', 'Omnee', 'omnee@gmail.com', NULL, NULL, NULL, '1', NULL, NULL);

ALTER TABLE `jobs` ADD `assign_employee_id` INT(11) NULL DEFAULT NULL AFTER `description`; 

ALTER TABLE `contact_us` ADD `user_id` INT NOT NULL AFTER `id`;

ALTER TABLE `contact_us` CHANGE `comment` `comment` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL;


11-04-2019


UPDATE `system_email_templates` SET `code` = '3' WHERE `system_email_templates`.`id` = 3;
UPDATE `system_email_variables` SET `variable_name` = '#PROJECT_NAME#' WHERE `system_email_variables`.`id` = 12;

12-04-2019

INSERT INTO `api_services` (`id`, `name`, `url`, `method`, `headers`, `parameter`, `description`, `created_at`, `updated_at`) VALUES (NULL, 'Assign Employee ', 'api/provider/asignemployee', 'POST', 'Accept | Authorization', 'job_id | employee_id', NULL, NULL, NULL); 

UPDATE `api_services` SET `parameter` = 'vendor_id | job_id' WHERE `api_services`.`id` = 29;

ALTER TABLE `job_quotations` ADD `discount_amount` DOUBLE NULL DEFAULT NULL AFTER `amount`;

ALTER TABLE `job_details_track` ADD `vendor_id` INT(10) NULL DEFAULT NULL AFTER `user_id`; 

13-04-2019

ALTER TABLE `job_quotations` ADD `final_amount` DOUBLE NULL DEFAULT NULL AFTER `discount_amount`;

16-04-2019
ALTER TABLE `state` DROP FOREIGN KEY `state_country_id_foreign`;
ALTER TABLE `master_company` DROP FOREIGN KEY `master_company_country_id_foreign`;
