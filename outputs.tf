output "launch_configurations_id" {
  description = "Map of id values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "launch_configurations_arn" {
  description = "Map of arn values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "launch_configurations_associate_public_ip_address" {
  description = "Map of associate_public_ip_address values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.associate_public_ip_address if v.associate_public_ip_address != null }
}
output "launch_configurations_ebs_block_device" {
  description = "Map of ebs_block_device values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.ebs_block_device if v.ebs_block_device != null && length(v.ebs_block_device) > 0 }
}
output "launch_configurations_ebs_optimized" {
  description = "Map of ebs_optimized values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.ebs_optimized if v.ebs_optimized != null }
}
output "launch_configurations_enable_monitoring" {
  description = "Map of enable_monitoring values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.enable_monitoring if v.enable_monitoring != null }
}
output "launch_configurations_ephemeral_block_device" {
  description = "Map of ephemeral_block_device values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.ephemeral_block_device if v.ephemeral_block_device != null && length(v.ephemeral_block_device) > 0 }
}
output "launch_configurations_iam_instance_profile" {
  description = "Map of iam_instance_profile values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.iam_instance_profile if v.iam_instance_profile != null && length(v.iam_instance_profile) > 0 }
}
output "launch_configurations_image_id" {
  description = "Map of image_id values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.image_id if v.image_id != null && length(v.image_id) > 0 }
}
output "launch_configurations_instance_type" {
  description = "Map of instance_type values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "launch_configurations_key_name" {
  description = "Map of key_name values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.key_name if v.key_name != null && length(v.key_name) > 0 }
}
output "launch_configurations_metadata_options" {
  description = "Map of metadata_options values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => one(v.metadata_options) if v.metadata_options != null && length(v.metadata_options) > 0 }
}
output "launch_configurations_name" {
  description = "Map of name values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "launch_configurations_name_prefix" {
  description = "Map of name_prefix values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "launch_configurations_placement_tenancy" {
  description = "Map of placement_tenancy values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.placement_tenancy if v.placement_tenancy != null && length(v.placement_tenancy) > 0 }
}
output "launch_configurations_region" {
  description = "Map of region values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "launch_configurations_root_block_device" {
  description = "Map of root_block_device values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => one(v.root_block_device) if v.root_block_device != null && length(v.root_block_device) > 0 }
}
output "launch_configurations_security_groups" {
  description = "Map of security_groups values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.security_groups if v.security_groups != null && length(v.security_groups) > 0 }
}
output "launch_configurations_spot_price" {
  description = "Map of spot_price values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.spot_price if v.spot_price != null && length(v.spot_price) > 0 }
}
output "launch_configurations_user_data" {
  description = "Map of user_data values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.user_data if v.user_data != null && length(v.user_data) > 0 }
}
output "launch_configurations_user_data_base64" {
  description = "Map of user_data_base64 values across all launch_configurations, keyed the same as var.launch_configurations"
  value       = { for k, v in aws_launch_configuration.launch_configurations : k => v.user_data_base64 if v.user_data_base64 != null && length(v.user_data_base64) > 0 }
}

