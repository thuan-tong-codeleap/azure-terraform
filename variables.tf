variable "location" {
    description = "The Azure region in which the resources will be deployed"
    type        = string
    default = "southeastasia"
}

variable "common_tags" {
    description = "Common tags that are used for all resources created via Terraform"
    type = map(string)
    default = {
        CREATED_BY = "Terraform"
        ENVIRONMENT = "Test"
    }
}