################# Control Tower Guardrails. Target: AFT OU ###################
resource "aws_controltower_control" "cloud_formation_required_guardrail" {
  control_identifier = "arn:aws:controltower:us-east-1::control/WTDSMKDKDNLE"
  target_identifier  = "arn:aws:organizations::211125622358:ou/o-sgbmeqwqhx/ou-qyg8-lcenb5y4"
}

resource "aws_controltower_control" "s3_kms_encryption_required" {
  control_identifier = "arn:aws:controltower:us-east-1::control/AZDYETJYRMPN"
  target_identifier  = "arn:aws:organizations::211125622358:ou/o-sgbmeqwqhx/ou-qyg8-lcenb5y4"
  depends_on         = [aws_controltower_control.cloud_formation_required_guardrail]
}

resource "aws_controltower_control" "s3_bucket_public_read_prohibited_guardrail" {
  control_identifier = "arn:aws:controltower:us-east-1::control/AWS-GR_S3_BUCKET_PUBLIC_READ_PROHIBITED"
  target_identifier  = "arn:aws:organizations::211125622358:ou/o-sgbmeqwqhx/ou-qyg8-lcenb5y4"
}

resource "aws_controltower_control" "s3_bucket_disallow_delete_without_mfa" {
  control_identifier = "arn:aws:controltower:us-east-1::control/AWS-GR_RESTRICT_S3_DELETE_WITHOUT_MFA"
  target_identifier  = "arn:aws:organizations::211125622358:ou/o-sgbmeqwqhx/ou-qyg8-lcenb5y4"
}
################# /Control Tower Guardrails. Target: AFT OU ###################
