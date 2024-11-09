output "api_url" {
  value = "http://localhost:4566/restapis/${aws_api_gateway_rest_api.my_api.id}/${var.stage_name}/_user_request_"

}
