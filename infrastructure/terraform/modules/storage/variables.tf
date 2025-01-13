variable "location" {
    type        = string
}

variable "common_tags" {
    type = map(string)
}

variable "rg_name" { 
    type = string 
}

variable "prefix" { 
    type = string 
}

variable "account_tier" {
   type = string 
}

variable "account_replication_type" {
    type = string
}
