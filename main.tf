module "format_task" {

  dead_letter_arn = "${var.dead_letter_arn}"
  handler         = "function.handler"
  kms_key_arn     = "${var.kms_key_arn}"
  l3_object_key   = "quinovas/format-task/format-task-0.0.1.zip"
  name            = "${var.name_prefix}format-task"

  policy_arns = [
    "${aws_iam_policy.format_task.arn}",
  ]

  policy_arns_count = 1
  runtime           = "python3.7"
  source            = "QuiNovas/lambdalambdalambda/aws"
  timeout           = 5
  version           = "0.2.0"
}