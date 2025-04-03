variable "name" {
  description = "Name of the SSM parameter"
  type        = string
}

variable "value" {
  description = "Value to store in the parameter"
  type        = string
  sensitive   = true
}

variable "type" {
  description = "Type of the parameter (String, SecureString, etc.)"
  type        = string
  default     = "String"
}

variable "description" {
  description = "Description of the parameter"
  type        = string
  default     = ""
}

variable "overwrite" {
  description = "Allow overwriting existing parameter"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Optional tags to associate with the parameter"
  type        = map(string)
  default     = {}
}
