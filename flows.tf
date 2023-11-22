resource "null_resource" "default_start_flow" {
  # Use a REST API call (instead of Terraform modules) to modify messages and
  # routes in the default start flow and since Dialogflow creates this default
  # start flow automatically
  provisioner "local-exec" {
    command = <<-EOT
    curl --location --request PATCH "https://${self.triggers.LOCATION}-dialogflow.googleapis.com/v3/projects/${self.triggers.PROJECT}/locations/${self.triggers.LOCATION}/agents/${self.triggers.AGENT}/flows/${self.triggers.DEFAULT_START_FLOW}?updateMask=transitionRoutes" \
    -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
    -H 'Content-Type: application/json' \
    --data-raw "{
      'transitionRoutes': [{
        'intent': 'projects/${self.triggers.PROJECT}/locations/${self.triggers.LOCATION}/agents/${self.triggers.AGENT}/intents/${self.triggers.DEFAULT_WELCOME_INTENT}',
		    'triggerFulfillment': {
			    'messages': [{
				    'text': {
					    'text': [
						    'Hello, this is a shirt ordering virtual agent. How can I help you?'
					    ]
				    }
			    }]
		    }
       }, {
        'intent': '${self.triggers.REDIRECT_ARTIST_OVERVIEW_INTENT}',
        'targetPage': '${self.triggers.REDIRECT_ARTIST_OVERVIEW_PAGE}'
      }]
    }"
    EOT
  }



  # Use triggers instead of environment variables so that they can be reused in
  # the provisioner to create routes as well as the destroy-time provisioner
  triggers = {
    PROJECT                = var.project_id
    LOCATION               = var.region
    AGENT                  = google_dialogflow_cx_agent.agent.name
    DEFAULT_START_FLOW     = "00000000-0000-0000-0000-000000000000"
    DEFAULT_WELCOME_INTENT = "00000000-0000-0000-0000-000000000000"

    REDIRECT_PRODUCT_OVERVIEW_INTENT =google_dialogflow_cx_intent.redirect_products_overview.id
    REDIRECT_ARTIST_OVERVIEW_INTENT  = google_dialogflow_cx_intent.redirect_artists_overview.id
    CONFIRM_ARTIST_OVERVIEW_INTENT = google_dialogflow_cx_intent.confirm_artists_overview.id
    REDIRECT_PRODUCT_INTENT = google_dialogflow_cx_intent.redirect_product.id
    REDIRECT_SHIRTS_INTENT = google_dialogflow_cx_intent.redirect_shirts.id
    REDIRECT_MUSIC_INTENT = google_dialogflow_cx_intent.redirect_music.id
    REDIRECT_ALBUM_INTENT = google_dialogflow_cx_intent.redirect_album.id
    REDIRECT_SHIRT_SIZE_INTENT = google_dialogflow_cx_intent.redirect_shirt_size.id
    REDIRECT_MY_ORDER_INTENT = google_dialogflow_cx_intent.redirect_my_order.id
    REDIRECT_MY_ORDER_STATUS_INTENT = google_dialogflow_cx_intent.redirect_my_order_status.id
    REDIRECT_MY_ORDER_CANCELED = google_dialogflow_cx_intent.redirect_my_order_canceled.id
    REDIRECT_SHIPPING_INFO_INTENT = google_dialogflow_cx_intent.redirect_shipping_info.id
    REDIRECT_REFUND_INFO_INTENT = google_dialogflow_cx_intent.redirect_refund_info.id
    REDIRECT_SWAPPING_INFO_INTENT = google_dialogflow_cx_intent.redirect_swapping_info.id
    REDIRECT_ORDER_PROCESS_INTENT = google_dialogflow_cx_intent.redirect_order_process.id
    CONFIRM_PROCEED_ORDER_INTENT = google_dialogflow_cx_intent.confirm_proceed_order.id
    DECLINE_PROCEED_ORDER_INTENT = google_dialogflow_cx_intent.decline_proceed_order.id
    REDIRECT_HOME_INTENT = google_dialogflow_cx_intent.redirect_home.id
    REDIRECT_END_INTENT = google_dialogflow_cx_intent.redirect_end.id


  REDIRECT_ARTIST_OVERVIEW_PAGE = google_dialogflow_cx_page.redirect_artists_overview_page.id



    # STORE_LOCATION_INTENT = google_dialogflow_cx_intent.store_location.id
    # STORE_HOURS_INTENT    = google_dialogflow_cx_intent.store_hours.id
    # NEW_ORDER_INTENT      = google_dialogflow_cx_intent.order_new.id

    # STORE_LOCATION_PAGE = google_dialogflow_cx_page.store_location.id
    # STORE_HOURS_PAGE    = google_dialogflow_cx_page.store_hours.id
    # NEW_ORDER_PAGE      = google_dialogflow_cx_page.new_order.id
  }

  # Use a REST API call in a destroy-time provisioner to delete routes in the
  # default start flow since we created them with a REST API call, and Terraform
  # will fail to delete them since they are managed externally
  provisioner "local-exec" {
    when    = destroy
    command = <<-EOT
    curl --location --request PATCH "https://${self.triggers.LOCATION}-dialogflow.googleapis.com/v3/projects/${self.triggers.PROJECT}/locations/${self.triggers.LOCATION}/agents/${self.triggers.AGENT}/flows/${self.triggers.DEFAULT_START_FLOW}?updateMask=transitionRoutes" \
    -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
    -H 'Content-Type: application/json' \
    --data-raw "{
      'transitionRoutes': [{
        'intent': 'projects/${self.triggers.PROJECT}/locations/${self.triggers.LOCATION}/agents/${self.triggers.AGENT}/intents/${self.triggers.DEFAULT_WELCOME_INTENT}',
		    'triggerFulfillment': {
			    'messages': [{
				    'text': {
					    'text': [
						    'Hello, this is a shirt ordering virtual agent. How can I help you?'
					    ]
				    }
			    }]
		    }
      }]
    }"
    EOT
  }

  depends_on = [
    google_dialogflow_cx_agent.agent
  ]
}




resource "google_dialogflow_cx_flow" "catalog_flow" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Catalog Flow"
  description  = "Catalog Flow"

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
