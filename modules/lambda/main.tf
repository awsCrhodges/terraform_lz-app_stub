data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "${path.module}/src"
  output_path = "${path.module}/dist/lamba.zip"

}

resource "aws_cloudwatch_log_group" "lambda" {
  name              = "/aws/lambda/${var.name_prefix}-hello"
  retention_in_days = var.log_retention_days

}

resource "aws_lambda_function" "hello" {
  function_name = "${var.name_prefix}-hello"
  role          = var.lambda_role_arn

  runtime = var.lambda_runtime
  handler = "app.lambda_handler"

  filename         = data.archive_file.lambda_zip.output_path
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256

  timeout     = var.lambda_timeout
  memory_size = var.lambda_memory_size

  depends_on = [aws_cloudwatch_log_group.lambda]

}