module "ecr_repository" {
  source                                    = "./modules/aws-ecr"
  repository_name                           = "${var.code}-nginx"
  image_tag_mutability                      = "MUTABLE"
  image_scanning_configuration_scan_on_push = true
  keep_image_size                           = "3"

  tags = {
    Name = var.code
  }
}
