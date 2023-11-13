resource "null_resource" "intent_batch_creation_script" {
  # Use a REST API call (instead of Terraform modules) to modify messages and

  # routes in the default start flow and since Dialogflow creates this default
  # start flow automatically
 provisioner "local-exec" {
  command = <<-EOT
   
    ./intents.sh
    EOT
    
 }
 depends_on = [null_resource.default_start_flow]
}