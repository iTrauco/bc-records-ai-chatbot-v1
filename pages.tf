resource "google_dialogflow_cx_page" "redirect_artists_overview_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Artists Overview Page"

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
    condition = "true"
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
    condition = "true"
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
    condition = "true"
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
    condition = "true"
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
    condition = "true"
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
    condition = "true"
    target_flow = google_dialogflow_cx_flow.catalog_flow.id
  }
}

resource "google_dialogflow_cx_page" "redirect_refund_info_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Redirect Refund InfO pAGE"

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
    condition = "true"
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
    condition = "true"
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
    condition = "true"
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
    condition = "true"
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
    condition = "true"
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
    condition = "true"
    target_flow = google_dialogflow_cx_flow.my_order_flow.id  
  }
}


resource "google_dialogflow_cx_page" "redirect_end_page" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "End Session Page"

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
    condition = "true"
    target_page = "${google_dialogflow_cx_agent.agent.start_flow}/pages/END_SESSION"
  }
}



################################################################
################################################################
################################################################
# Pages for Catalog Flow

resource "google_dialogflow_cx_page" "artist_overview" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Artist Overview"
}

resource "google_dialogflow_cx_page" "product" {
    parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Product"

}

resource "google_dialogflow_cx_page" "product_overview" {
    parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Product Overview"

}

resource "google_dialogflow_cx_page" "Shirts" {
    parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Shirts"

}
resource "google_dialogflow_cx_page" "Music" {
    parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Music"
}