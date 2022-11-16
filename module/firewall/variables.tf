# Firewall Rule
variable "project_id" {
  description = "Id projeto selecionado"
  type        = string
}
variable "rule_name" {
  description = "VPC utilizada no ambiente que sera criado"
  type        = string
}
variable "vpc_name" {
  description = "VPC utilizada no ambiente que sera criado"
  type        = string
}
variable "direct" {
  description = "Subnet utilizada no ambiente que sera criado"
  type        = string
  default     = "INGRESS"
}
variable "description_rule" {
  description = "Nome do Cluster k8s que sera criado"
  type        = string
}
variable "range" {
  description = "Block de Ips a serem liberados"
  type        = list(string)
}
variable "allow_values" {
  type = list
}
variable "target_tag" {
  description = "Target Tags de onde será aplicado a regra de firewall"
  type        = list(string)
}