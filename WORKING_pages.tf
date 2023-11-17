resource "google_dialogflow_cx_page" "store_location" {
  parent       = google_dialogflow_cx_agent.agent.start_flow
  display_name = "Store Location"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "Our store is located at 1007 Mountain Drive, Gotham City, NJ.",
        ]
      }
    }
  }
}