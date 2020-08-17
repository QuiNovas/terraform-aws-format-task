module "format_task" {
  dead_letter_arn = var.dead_letter_arn
  handler         = "function.handler"
  kms_key_arn     = var.kms_key_arn
  l3_object_key   = "quinovas/format-task/format-task-0.0.1.zip"
  name            = "${var.name_prefix}format-task"
  runtime         = "python3.7"
  source          = "QuiNovas/lambdalambdalambda/aws"
  timeout         = 5
  version         = "3.0.2"
}

