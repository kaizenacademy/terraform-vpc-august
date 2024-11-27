variable region {
    type = string
}

variable vpc_cidr {
    type = string
}

variable subnet1_cidr {
    type = string
}

variable subnet2_cidr {
    type = string
}

variable subnet3_cidr {
    type = string
}

variable ip_on_launch {
    type = bool
}

variable port {
    type = list(object({
        from_port = number
        to_port = number
    }))
}

