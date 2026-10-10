variable "launch_configurations" {
  description = <<EOT
Map of launch_configurations, attributes below
Required:
    - image_id
    - instance_type
Optional:
    - associate_public_ip_address
    - ebs_optimized
    - enable_monitoring
    - iam_instance_profile
    - key_name
    - name
    - name_prefix
    - placement_tenancy
    - region
    - security_groups
    - spot_price
    - user_data
    - user_data_base64
    - ebs_block_device (block):
        - delete_on_termination (optional)
        - device_name (required)
        - encrypted (optional)
        - iops (optional)
        - no_device (optional)
        - snapshot_id (optional)
        - throughput (optional)
        - volume_size (optional)
        - volume_type (optional)
    - ephemeral_block_device (block):
        - device_name (required)
        - no_device (optional)
        - virtual_name (optional)
    - metadata_options (block):
        - http_endpoint (optional)
        - http_put_response_hop_limit (optional)
        - http_tokens (optional)
    - root_block_device (block):
        - delete_on_termination (optional)
        - encrypted (optional)
        - iops (optional)
        - throughput (optional)
        - volume_size (optional)
        - volume_type (optional)
EOT

  type = map(object({
    image_id                    = string
    instance_type               = string
    associate_public_ip_address = optional(bool)
    ebs_optimized               = optional(bool)
    enable_monitoring           = optional(bool)
    iam_instance_profile        = optional(string)
    key_name                    = optional(string)
    name                        = optional(string)
    name_prefix                 = optional(string)
    placement_tenancy           = optional(string)
    region                      = optional(string)
    security_groups             = optional(set(string))
    spot_price                  = optional(string)
    user_data                   = optional(string)
    user_data_base64            = optional(string)
    ebs_block_device = optional(list(object({
      delete_on_termination = optional(bool)
      device_name           = string
      encrypted             = optional(bool)
      iops                  = optional(number)
      no_device             = optional(bool)
      snapshot_id           = optional(string)
      throughput            = optional(number)
      volume_size           = optional(number)
      volume_type           = optional(string)
    })))
    ephemeral_block_device = optional(list(object({
      device_name  = string
      no_device    = optional(bool)
      virtual_name = optional(string)
    })))
    metadata_options = optional(object({
      http_endpoint               = optional(string)
      http_put_response_hop_limit = optional(number)
      http_tokens                 = optional(string)
    }))
    root_block_device = optional(object({
      delete_on_termination = optional(bool)
      encrypted             = optional(bool)
      iops                  = optional(number)
      throughput            = optional(number)
      volume_size           = optional(number)
      volume_type           = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.launch_configurations : (
        v.metadata_options == null || (v.metadata_options.http_put_response_hop_limit == null || (v.metadata_options.http_put_response_hop_limit >= 1 && v.metadata_options.http_put_response_hop_limit <= 64))
      )
    ])
    error_message = "must be between 1 and 64"
  }
  validation {
    condition = alltrue([
      for k, v in var.launch_configurations : (
        v.user_data == null || (length(v.user_data) >= 1 && length(v.user_data) <= 16384)
      )
    ])
    error_message = "must be between 1 and 16384 characters"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

