resource "aws_acmpca_certificate_authority" "private_it_root_ca" {
  certificate_authority_configuration {
    key_algorithm     = "RSA_4096"
    signing_algorithm = "SHA512WITHRSA"
    subject {
      common_name = "technokofe.com"
      country = "GB"
      organization =  "technokofe"
      organizational_unit = "IT"   
    }
  }
  type = "ROOT"
  permanent_deletion_time_in_days = 7
}