# Variables with default values
variable "bucket_name" {
  description = "Name for the S3 bucket"
  type        = string
  default     = "terraform-course-demo12345"
}



# Tags variable
variable "tags" {
  description = "A map of tags for the S3 bucket"
  type        = map(string)
  default = {
    Name        = "terraform-course-demo1234"
    Environment = "test"
  }

}