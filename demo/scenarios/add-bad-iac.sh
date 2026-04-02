#!/usr/bin/env bash
set -euo pipefail

mkdir -p infra
cat > infra/main.tf <<'TERRAFORM'
resource "aws_s3_bucket" "demo" {
  bucket = "demo-guardrails-open-bucket-example"
}

resource "aws_s3_bucket_public_access_block" "demo" {
  bucket = aws_s3_bucket.demo.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
TERRAFORM

echo
echo "Added intentionally weak Terraform for the demo."
echo "Next step: commit infra/main.tf and open a pull request."
