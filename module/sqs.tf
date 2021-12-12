resource "aws_sqs_queue" "terraform_queue" {
  name                        = "terraform-example-queue.fifo"
  fifo_queue                  = true
  content_based_deduplication = true

tags = merge(local.tags, { Name = "test_tf_backend"})
}

 
