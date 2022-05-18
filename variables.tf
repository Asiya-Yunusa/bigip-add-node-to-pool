variable "username" {
    type = string
    description = "Your BIG-IP username"   
}

variable "password" {
    sensitive = true
    type = string
    description = "Your BIG-IP password"   
}

variable "pool_name" {
    type = string
    description = "Name of the pool"   
}

variable "pool_path" {
    type = string
    description = ""   
}

variable "min_active_members" {
    type =  number  
    description = "What is the minimun number of members the pool should have"   
}

variable "load_balancing_mode" {
    type =  string  
    description = "What is the pool load balancing mode default is round-robin"
    default = "round-robin"
}

variable "node_name" {
    type = string
    description = "Name of the node"   
}
variable "node_path" {
    type = string
    description = ""   
    default = "/Common/"
}

variable "node_address" {
    type = string
    description = "IP Address of the node"   
}

variable "node_connection_limit" {
    type = string
    description = "Maximum number of connection on the node"   
    default = 0
}

variable "node_rate_limit" {
    type = string
    description = "Maximum number of connections per second on the node"   
    default = 0
}

variable "node_address_family" {
    type = string
    description = "Maximum number of connections per second on the node"   
    default = "ipv4"
}

variable "node_interval" {
    type = number
    description = "Amount of time before sending the next DNS query"   
    default = 3600
}


variable "monitor_name" {
    type = string
    description = "Name of the monitor"   
}

variable "monitor_path" {
    type = string
    description = ""   
}

variable "monitor_type" {
   type = string
   description = "Type of monitor request"
}


variable "monitor_health_check" {
    type = string
    description = ""
}

variable "monitor_timeout" {
    type = string
    description = "Specify the time the target has to respond to the monitors request"
}

variable "monitor_interval" {
    type = string
    description = ""
}

variable "monitor_destination" {
    type = string
    description = "Specify address for monitoring"
}




