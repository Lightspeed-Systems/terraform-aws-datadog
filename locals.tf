locals {
  stack_prefix = var.env == "" ? "" : "${join("-", compact([var.namespace, var.env]))}-"
  default_tags = {
    env             = var.env
    namespace       = var.namespace
    TerraformModule = "terraform-aws-datadog"
    Environment     = title(var.env)
  }
}
