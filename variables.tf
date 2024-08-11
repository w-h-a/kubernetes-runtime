variable "service_namespace" {
  description = "The service's namespace"
  type        = string
}

variable "service_name" {
  description = "The service's name"
  type        = string
}

variable "service_version" {
  description = "The service's version"
  type        = string
}

variable "service_replicas" {
  description = "The number of replicas"
  type        = number
  default     = 1
}

variable "create_k8s_service" {
  description = "Whether to create a k8s service"
  type        = bool
  default     = true
}

variable "k8s_service_type" {
  description = "K8s service type"
  type        = string
  default     = "ClusterIP"
}

variable "service_port" {
  description = "The service's port"
  type        = number
  default     = -1
}

variable "service_protocol" {
  description = "The service's protocol"
  type        = string
  default     = "TCP"
}

variable "extra_labels" {
  description = "Additional k8s labels"
  type        = map(string)
  default     = {}
}

variable "extra_annotations" {
  description = "Additional k8s annotations"
  type        = map(string)
  default     = {}
}

variable "extra_env_vars" {
  description = "Additional env vars"
  type        = map(string)
  default     = {}
}

variable "service_image" {
  description = "The service's image"
  type        = string
}

variable "image_pull_policy" {
  description = "K8s image pull policy"
  type        = string
}
