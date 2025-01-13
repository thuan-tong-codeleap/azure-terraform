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

variable "os" {
    type = string
}

variable "sku" {
    type = string
}
