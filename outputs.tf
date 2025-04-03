output "parameter_name" {
  description = "Name of the created parameter"
  value       = aws_ssm_parameter.this.name
}
