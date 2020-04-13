variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "description" {
  description = "The description of the DB parameter group"
  type        = string
  default     = "This is a test DB group"
}

variable "name" {
  description = "The name of the DB parameter group"
  type        = string
  default     = "testing"
}
/*
variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix"
  type        = string
  default     = ""
}
*/
variable "identifier" {
  description = "The identifier of the resource"
  type        = string
  default     = "demodb"
}

variable "family" {
  description = "The family of the DB parameter group"
  type        = string
  default = "aurora-postgresql9.6"
}

variable "parameters" {
  description = "A list of DB parameter maps to apply"
  type        = list(map(string))
  default     = [
    {
            "name": "aurora_binlog_read_buffer_size",
            "value": "5242880",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "aurora_binlog_replication_max_yield_seconds",
            "value": "0",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "aurora_binlog_use_large_read_buffer",
            "value": "1",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "aurora_lab_mode",
            "value": "0",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "aurora_load_from_s3_role",
            "value": "arn:aws:iam::840109858953:role/qa-qa-rds-s3_cxt-qa-data-general-s3-cxt-qa-datafile",
            "ApplyMethod": "immediate"
        },
        {
            "name": "aurora_select_into_s3_role",
            "value": "arn:aws:iam::840109858953:role/qa-qa-rds-s3_cxt-qa-data-general-s3-cxt-qa-datafile",
            "ApplyMethod": "immediate"
        },
        {
            "name": "aws_default_s3_role",
            "value": "arn:aws:iam::840109858953:role/qa-qa-rds-s3_cxt-qa-data-general-s3-cxt-qa-datafile",
            "ApplyMethod": "immediate"
        },
        {
            "name": "binlog_cache_size",
            "value": "32768",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "binlog_format",
            "value": "OFF",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "connect_timeout",
            "value": "60",
            "ApplyMethod": "immediate"
        },
        {
            "name": "datadir",
            "value": "/rdsdbdata/db/",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "default_password_lifetime",
            "value": "0",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "default_storage_engine",
            "value": "InnoDB",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "default_tmp_storage_engine",
            "value": "InnoDB",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "explicit_defaults_for_timestamp",
            "value": "1",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "general_log",
            "value": "1",
            "ApplyMethod": "immediate"
        },
        {
            "name": "general_log_file",
            "value": "/rdsdbdata/log/general/mysql-general.log",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "gtid-mode",
            "value": "OFF_PERMISSIVE",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "innodb_adaptive_hash_index",
            "value": "0",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "innodb_buffer_pool_dump_at_shutdown",
            "value": "0",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "innodb_buffer_pool_load_at_startup",
            "value": "0",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "innodb_buffer_pool_size",
            "value": "{DBInstanceClassMemory*3/4}",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "innodb_checksum_algorithm",
            "value": "none",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "innodb_checksums",
            "value": "0",
            "ApplyMethod": "pending-reboot"
        },
        {
            "name": "innodb_doublewrite",
            "value": "0",
            "ApplyMethod": "pending-reboot"
       },
       { 
            "apply_method": "immediate"
            "name": "basedir"
            "value": "/rdsdbbin/oscar"
       } 

  ]
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "create_db_parameter_group" {
  description = "Whether to use name_prefix or not"
  type        = bool
  default     = true
}

