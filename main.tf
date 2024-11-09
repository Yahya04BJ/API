resource "aws_api_gateway_rest_api" "my_api" {
  name = var.api_name
}

resource "aws_api_gateway_resource" "test" {
  rest_api_id = aws_api_gateway_rest_api.my_api.id
  parent_id   = aws_api_gateway_rest_api.my_api.root_resource_id
  path_part   = "test"
}

resource "aws_api_gateway_method" "test_method" {
  rest_api_id   = aws_api_gateway_rest_api.my_api.id
  resource_id   = aws_api_gateway_resource.test.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "test_integration" {
  depends_on              = [aws_api_gateway_method.test_method]
  rest_api_id             = aws_api_gateway_rest_api.my_api.id
  resource_id             = aws_api_gateway_resource.test.id
  http_method             = aws_api_gateway_method.test_method.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/${var.lambda_arn}/invocations"
}


resource "aws_api_gateway_deployment" "api_deployment" {
  depends_on = [aws_api_gateway_integration.test_integration]
  rest_api_id = aws_api_gateway_rest_api.my_api.id
  stage_name  = var.stage_name
}
