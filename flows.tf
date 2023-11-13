
resource "null_resource" "default_start_flow" {
  # Use a REST API call (instead of Terraform modules) to modify messages and

  # routes in the default start flow and since Dialogflow creates this default
  # start flow automatically
 provisioner "local-exec" {
  command = <<-EOT
    cxcli flow create Category -a bc-records-agent -e en -l global -p ${var.project_id}
    cxcli flow create 'My Order' -a bc-records-agent -e en -l global -p ${var.project_id}
    cxcli flow create 'Customer Care' -a bc-records-agent -e en -l global -p ${var.project_id}
    cxcli flow create 'Order Process' -a bc-records-agent -e en -l global -p ${var.project_id}
      
    EOT
    
 }
 depends_on = [google_dialogflow_cx_agent.agent]
}