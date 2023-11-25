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
  # lifecycle {
  #   create_before_destroy = false
  # }

  transition_routes {
  intent = google_dialogflow_cx_intent.redirect_artists_overview.id
  trigger_fulfillment {
      messages {
        text {
          text = ["Response to default welcome intent."]
        }
      }
      
    }
  # target_page  = google_dialogflow_cx_page.catalog_artist_overview
  }

#   transition_routes {
#   intent = google_dialogflow_cx_intent.redirect_product.id
#   trigger_fulfillment {
#       messages {
#         text {
#           text = ["Response to default welcome intent."]
#         }
#       }
#     }
#   target_page  = google_dialogflow_cx_page.catalog_product
#   }

#   transition_routes {
#   intent = google_dialogflow_cx_intent.redirect_product_overview.id
#   trigger_fulfillment {
#       messages {
#         text {
#           text = ["Response to default welcome intent."]
#         }
#       }
#     }
#   target_page  = google_dialogflow_cx_page.catalog_product_overview
#   }

#   transition_routes {
#   intent = google_dialogflow_cx_intent.redirect_product_of_artist.id
#   trigger_fulfillment {
#       messages {
#         text {
#           text = ["Response to default welcome intent."]
#         }
#       }
#     }
#   target_page  = google_dialogflow_cx_page.catalog_product_overview
#   }

#   transition_routes {
#   intent = google_dialogflow_cx_intent.redirect_shirts.id
#   trigger_fulfillment {
#       messages {
#         text {
#           text = ["Response to default welcome intent."]
#         }
#       }
#     }
#   target_page  = google_dialogflow_cx_page.catalog_shirts
#   }

#   transition_routes {
#   intent = google_dialogflow_cx_intent.redirect_music.id
#   trigger_fulfillment {
#       messages {
#         text {
#           text = ["Response to default welcome intent."]
#         }
#       }
#     }
#   target_page  = google_dialogflow_cx_page.catalog_music
#   }

# transition_routes {
#   intent = google_dialogflow_cx_intent.redirect_end.id
#   trigger_fulfillment {
#       messages {
#         text {
#           text = ["Response to default welcome intent."]
#         }
#       }
#     }
#   target_page  = google_dialogflow_cx_page.catalog_end_session
#   }
# transition_routes {
#   intent = google_dialogflow_cx_intent.redirect_home.id
#   trigger_fulfillment {
#       messages {
#         text {
#           text = ["Response to default welcome intent."]
#         }
#       }
#     }
#   target_page  = google_dialogflow_cx_page.catalog_end_flow
#   }

# transition_routes {
#   intent = google_dialogflow_cx_intent.redirect_home.id
#   trigger_fulfillment {
#       messages {
#         text {
#           text = ["Response to default welcome intent."]
#         }
#       }
#     }
#   target_page  = google_dialogflow_cx_page.catalog_end_flow
#   }


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
