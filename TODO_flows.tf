
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
 depends_on = [google_dialogflow_cx_agent.bc_records_agennt]
}

  # # Use triggers instead of environment variables so that they can be reused in
  # # the provisioner to create routes as well as the destroy-time provisioner
  # triggers = {
  #   PROJECT                = var.project_id
  #   LOCATION               = var.region
  #   AGENT                  = google_dialogflow_cx_agent.agent.name
  #   DEFAULT_START_FLOW     = "00000000-0000-0000-0000-000000000000"
  #   DEFAULT_WELCOME_INTENT = "00000000-0000-0000-0000-000000000000"

  #   STORE_LOCATION_INTENT = google_dialogflow_cx_intent.store_location.id
  #   STORE_HOURS_INTENT    = google_dialogflow_cx_intent.store_hours.id
  #   NEW_ORDER_INTENT      = google_dialogflow_cx_intent.order_new.id

  #   STORE_LOCATION_PAGE = google_dialogflow_cx_page.store_location.id
  #   STORE_HOURS_PAGE    = google_dialogflow_cx_page.store_hours.id
  #   NEW_ORDER_PAGE      = google_dialogflow_cx_page.new_order.id
  # }

