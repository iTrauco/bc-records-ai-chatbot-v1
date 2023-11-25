


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

  entry_fulfillment {
    messages {
      text {
        text = ["The following bands are signed with G-Records: Alice Googler, G's N' Roses, The Goo Fighters and The Google Dolls."]
      }
    }

  }
  depends_on = [ google_dialogflow_cx_flow.catalog_flow ]
  #   transition_routes {
  #   intent = google_dialogflow_cx_intent.redirect_product_of_artist.id
  #   target_page = google_dialogflow_cx_page.catalog_product_overview
  # }
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
entry_fulfillment {
    messages {
      text {
        text = ["We sell shirts, music or the tour movie."]
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