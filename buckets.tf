data "aws_kms_key" "aws_s3_key" {
  key_id = "alias/aws/s3"
}

module "test_bucket" {
  source = "git@github.com:xerris/aws-modules.git//s3"
    
  bucket        = "${var.env}-ginu-s3-bucket"
  #tags = "${var.tags_S3}"
  force_destroy = true

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        kms_master_key_id = data.aws_kms_key.aws_s3_key.id
        sse_algorithm     = "aws:kms"
        
      }
    }
  }
}



