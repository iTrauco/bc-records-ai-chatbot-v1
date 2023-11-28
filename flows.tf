resource "google_dialogflow_cx_flow" "default_start_flow" {
  parent                = google_dialogflow_cx_agent.agent.id
  is_default_start_flow = true
  display_name          = "Default Start Flow"
  description           = "A start flow created along with the agent"

  nlu_settings {
    classification_threshold = 0.3
    model_type               = "MODEL_TYPE_STANDARD"
  }

  transition_routes {
    intent = google_dialogflow_cx_intent.default_welcome_intent.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  }

  transition_routes {
    intent = google_dialogflow_cx_intent.redirect_artists_overview.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
    target_flow = google_dialogflow_cx_flow.catalog_flow.id

  }

    transition_routes {
    intent = google_dialogflow_cx_intent.redirect_product_of_artist.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }

    transition_routes {
    intent = google_dialogflow_cx_intent.redirect_shirts.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
  
   transition_routes {
    intent = google_dialogflow_cx_intent.redirect_music.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
  
   transition_routes {
    intent = google_dialogflow_cx_intent.redirect_product.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
  
   transition_routes {
    intent = google_dialogflow_cx_intent.redirect_product_of_artist.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
  
   transition_routes {
    intent = google_dialogflow_cx_intent.redirect_refund_info.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.customer_care_flow.id
  }
  
  transition_routes {
    intent = google_dialogflow_cx_intent.redirect_shipping_info.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.customer_care_flow.id
  }
  
   transition_routes {
    intent = google_dialogflow_cx_intent.redirect_swapping_info.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.customer_care_flow.id
  }
  
    transition_routes {
    intent = google_dialogflow_cx_intent.redirect_my_order.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.my_order_flow.id
  }
  
    transition_routes {
    intent = google_dialogflow_cx_intent.redirect_my_order_canceled.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.my_order_flow.id
  }
  
     transition_routes {
    intent = google_dialogflow_cx_intent.redirect_my_order_status.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_flow = google_dialogflow_cx_flow.my_order_flow.id
  }
  
    transition_routes {
    intent = google_dialogflow_cx_intent.redirect_end.id
    trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
    }
  target_page = google_dialogflow_cx_page.redirect_end_page.id
  }
  

  event_handlers {
    event = "custom-event"
    trigger_fulfillment {
      messages {
        text {
          text = ["This is a default flow."]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      messages {
        text {
          text = ["We've updated the default flow no-match response!"]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      messages {
        text {
          text = ["We've updated the default flow no-input response!"]
        }
      }
    }
  }
}





#######################################################
#######################################################
#######################################################
# CATALOG FLOW
#######################################################
#######################################################
#######################################################
resource "google_dialogflow_cx_flow" "catalog_flow" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Catalog Flow"
  description  = "Catalog Flow"
  is_default_start_flow = false
  nlu_settings {
    classification_threshold = 0.3
    model_type               = "MODEL_TYPE_STANDARD"
  }

  
  event_handlers {
    event = "custom-event"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["I didn't get that. Can you say it again?"]
        }
      }
    }
  }
 event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Sorry, could you say that again?"]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["One more time?"]
        }
      }
    }
  }
  
}
# resource "null_resource" "catalog_flow" {
#      provisioner "local-exec" {
#     command = <<-EOT
#     curl --location --request PATCH "https://${self.triggers.LOCATION}-dialogflow.googleapis.com/v3/projects/${self.triggers.PROJECT}/locations/${self.triggers.LOCATION}/agents/${self.triggers.AGENT}/flows/${self.triggers.DEFAULT_START_FLOW}?updateMask=transitionRoutes" \
#     -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
#     -H 'Content-Type: application/json' \
#     --data-raw "{
#       'transitionRoutes': [{
#         'intent': 'projects/${self.triggers.PROJECT}/locations/${self.triggers.LOCATION}/agents/${self.triggers.AGENT}/intents/${self.triggers.DEFAULT_WELCOME_INTENT}',
# 		    'triggerFulfillment': {
# 			    'messages': [{
# 				    'text': {
# 					    'text': [
# 						    'Hello, this is a shirt ordering virtual agent. How can I help you?'
# 					    ]
# 				    }
# 			    }]
# 		    }
#       }, {
#         'intent': '${self.triggers.STORE_LOCATION_INTENT}',
#         'targetPage': '${self.triggers.STORE_LOCATION_PAGE}'
#       }]
#     }"
#     EOT
#   }

#   # Use triggers instead of environment variables so that they can be reused in
#   # the provisioner to create routes as well as the destroy-time provisioner
#   triggers = {
#     PROJECT                = var.project_id
#     LOCATION               = var.region
#     AGENT                  = google_dialogflow_cx_agent.agent.name
#     DEFAULT_START_FLOW     = google_dialogflow_cx_flow.catalog_flow.id
#     DEFAULT_WELCOME_INTENT = google_dialogflow_cx_intent.redirect_artists_overview.id

#     STORE_LOCATION_INTENT = google_dialogflow_cx_intent.store_location.id
#     STORE_HOURS_INTENT    = google_dialogflow_cx_intent.store_hours.id
#     NEW_ORDER_INTENT      = google_dialogflow_cx_intent.order_new.id

#     STORE_LOCATION_PAGE = google_dialogflow_cx_page.store_location.id
#     STORE_HOURS_PAGE    = google_dialogflow_cx_page.store_hours.id
#     NEW_ORDER_PAGE      = google_dialogflow_cx_page.new_order.id
#   }



# }

resource "google_dialogflow_cx_flow" "customer_care_flow" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Customer Care Flow"
  description  = "Customer Care Flow"

  nlu_settings {
    classification_threshold = 0.3
    model_type               = "MODEL_TYPE_STANDARD"
  }

  event_handlers {
    event = "custom-event"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["I didn't get that. Can you say it again?"]
        }
      }
    }
  }
 event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Sorry, could you say that again?"]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["One more time?"]
        }
      }
    }
  }
}

resource "google_dialogflow_cx_flow" "my_order_flow" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "My Order Flow"
  description  = "My Order Flow"

  nlu_settings {
    classification_threshold = 0.3
    model_type               = "MODEL_TYPE_STANDARD"
  }

  event_handlers {
    event = "custom-event"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["I didn't get that. Can you say it again?"]
        }
      }
    }
  }
 event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Sorry, could you say that again?"]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["One more time?"]
        }
      }
    }
  }
}

resource "google_dialogflow_cx_flow" "order_process_flow" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Order Process Flow"
  description  = "Order Process Flow"

  nlu_settings {
    classification_threshold = 0.3
    model_type               = "MODEL_TYPE_STANDARD"
  }

  event_handlers {
    event = "custom-event"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["I didn't get that. Can you say it again?"]
        }
      }
    }
  }
   event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Sorry, could you say that again?"]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["One more time?"]
        }
      }
    }
  }
}
