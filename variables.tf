variable "project_name" {
  description = "Name of the project for which this scripts will be used"
  type        = string
  default     = "jcrusader"
}

variable "environment_stage" {
  description = "Environment stage, like dev, test, uat, prod"
  type        = string
  default     = "dev"
}
