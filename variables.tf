variable "api_name" {
  description = "Nom de l'API Gateway"
  type        = string
}

variable "stage_name" {
  description = "Nom du stage pour l'API Gateway"
  type        = string
  default       = "dev"
}

variable "lambda_arn" {
  description = "ARN de la fonction Lambda à intégrer"
  type        = string
  default     ="arn:aws:lambda:us-east-1:000000000000:function:MyTestFunction"
}
