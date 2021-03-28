variable "bucket_name" {
    default = "backend-terraform-name"
}

variable "acl" {
    default = "private"
}

variable "tags" {
    default = {Enviroment = "Dev", CreatedBy = "terraform"}
}
