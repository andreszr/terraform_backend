terraform {
    backend "s3"{
        bucket = "backend-terraform-name"
        key = "dev"
        region = "us-east-2"
        # force_destroy= true
        encrypt = true

        # Enviar ARN del recurso que creó al archivo de estado
        kms_key_id = "arn:aws:kms:us-east-2:806101972513:key/510cc480-77ab-4a12-abfe-720641b5adc6"
    }
}

output "arn" {
    value = aws_kms_key.mykey.arn
}