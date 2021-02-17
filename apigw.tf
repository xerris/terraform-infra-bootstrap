resource "aws_apigatewayv2_api" "main_apigw" {
  name          = var.main_apigw_name
  protocol_type = "HTTP"
}

