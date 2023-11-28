


resource "google_dialogflow_cx_page" "redirect_artists_overview_page" {

  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Artists Overview Page"

  # entry_fulfillment {
  #   return_partial_responses = false

  #   messages {
  #     text {
  #       text = [
  #         "test...",
  #       ]
  #     }
  #   }
  # }
  transition_routes {
    condition = "true"
    intent = google_dialogflow_cx_intent.redirect_artists_overview.id
    target_flow = google_dialogflow_cx_flow.catalog_flow.id

  }
}
resource "google_dialogflow_cx_page" "redirect_products_overview_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Prodect Overview Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_shirts_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Shirts Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_music_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Music Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_product_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Product Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_product_of_artist_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Product of Artist Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_refund_info_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Refund Info pAGE"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.customer_care_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_shipping_info_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Shipping Info Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.customer_care_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_swapping_info_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Swapping Info Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.customer_care_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_my_order_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "My Order Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.my_order_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_my_order_canceled_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect My Order Canceled Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.my_order_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_my_order_status_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "My Order Status Page"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "test...",
        ]
      }
    }
  }
  transition_routes {
    condition   = "true"
    target_flow = google_dialogflow_cx_flow.my_order_flow.id
  }
}


resource "google_dialogflow_cx_page" "redirect_end_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "End Session Page"

  transition_routes {
    condition   = "true"
    target_page = "${google_dialogflow_cx_agent.agent.start_flow}/pages/END_SESSION"
  }
}



################################################################
################################################################
################################################################
# Pages for Catalog Flow


resource "google_dialogflow_cx_page" "catalog_artist_overview" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Artist Overview Page"
form {
    parameters {
      display_name = "artist"
      entity_type  = google_dialogflow_cx_entity_type.artist.id
      is_list      = false
      redact       = true
      required     = true

      fill_behavior {
        initial_prompt_fulfillment {
          return_partial_responses = false

          messages {
            text {
              text = [
                "From which of these artists would you like to order merchandise?",
              ]
            }
         

          }
              messages {
        payload = <<EOF
          {"options": [
          {
            "text": "The Google Dolls"
          },
          {
            "text": "The Goo Fighters"
          },
          {
            "text": "Alice Googler"
          },
          {
            "text": "G's N' Roses"
          }
        ],
        "type": "chips"}
        EOF
      }
      }

         reprompt_event_handlers {
          event = "sys.no-match-default"
           trigger_fulfillment {
            return_partial_responses = true

            messages {
              text {
                text = ["I missed that. Please, specify the artist. You can choose between: Alice Googler, G's N' Roses, The Google Dolls or The Goo Fighters. Which artist do you want to buy merchandise from?"]
              }
            }
        }
    }
        reprompt_event_handlers {
          event = "sys.no-input-default"
           trigger_fulfillment {
            return_partial_responses = true

            messages {
              text {
                text = ["I am sorry, I could understand the artist's name. You can choose between Alice Googler, G's N' Roses, The Google Dolls or The Goo Fighters. Which artist do you want to buy merchandise from?"]
              }
            }
        }
    }
    

}

}

}

transition_routes {
 condition = "$page.params.status = 'FINAL'"    
 trigger_fulfillment {
      messages {
        # channel = "some-channel"
        text {
          text = ["$session.params.artist, great choice! Rock on!"]
        }
      }
      messages {
        # channel = "some-channel"
        text {
          text = ["You want to rock with $session.params.artist merchandise. Awesome!"]
        }
      }
}
      target_page = google_dialogflow_cx_page.catalog_product_overview.id
}
}
resource "google_dialogflow_cx_page" "catalog_product" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Product Page"

  entry_fulfillment {
    messages {
      text {
        text = ["We sell shirts, music or the tour movie."]
      }
    }

  }
  }

resource "google_dialogflow_cx_page" "catalog_product_overview" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Product Overview Page"

form {
  parameters {
    display_name = "artist"
    entity_type = google_dialogflow_cx_entity_type.artist.id
    is_list = false
    redact = true
    required = true
  
   fill_behavior {
        initial_prompt_fulfillment {
          return_partial_responses = false

          messages {
            text {
              text = [
                "From which of these artists would you like to order merchandise?",
              ]
            }
         

          }
              messages {
        payload = <<EOF
          {"options": [
          {
            "text": "The Google Dolls"
          },
          {
            "text": "The Goo Fighters"
          },
          {
            "text": "Alice Googler"
          },
          {
            "text": "G's N' Roses"
          }
        ],
        "type": "chips"}
        EOF
      }
      }
        reprompt_event_handlers{
        event = "sys.no-match-default"
        trigger_fulfillment {
          return_partial_responses = true
          messages{ 
            text { text = ["To buy merchandise you can choose between the following artists: Alice Googler, G's N' Roses, The Google Dolls or The Goo Fighters. Which artist do you want to buy merchandise from?"]}
        }
        }
      }
      
      }
  }
  }
        event_handlers {
          event = "sys.no-input-default"
          trigger_fulfillment {
            messages {
              text {
                text = ["No-input default: To buy merchandise you can choose between the following artists: Alice Googler, G's N' Roses, The Google Dolls or The Goo Fighters. Which artist were you trying to mention?"
             ] 
             }
            }
            messages {
            payload = <<EOF
          {"options": [
          {
            "text": "The Google Dolls"
          },
          {
            "text": "The Goo Fighters"
          },
          {
            "text": "Alice Googler"
          },
          {
            "text": "G's N' Roses"
          }
        ],
        "type": "chips"}
        EOF
            }
          }


        }

        

}
resource "google_dialogflow_cx_page" "catalog_shirts" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Shirts Page"

}
resource "google_dialogflow_cx_page" "catalog_music" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Music Page"
}

resource "google_dialogflow_cx_page" "catalog_end_session" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "End Session"
}

resource "google_dialogflow_cx_page" "catalog_end_flow" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Test - End Flow"
}


 