def lambda_handler(event, context):
    return{
        "statusCode": 200,
        "headers": {"content-type": "text/plain"},
        "body": "Terraform deployed Lambda successfully."
    }