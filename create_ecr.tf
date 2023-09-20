resource "aws_ecr_repository" "project_web_page_image" {
  name                 = "devops-project-web-page-image"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}