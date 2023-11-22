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