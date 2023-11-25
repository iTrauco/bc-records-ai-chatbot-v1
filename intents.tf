

  # training_phrases {
  #   parts {
  #     text = ""
  #   }
  #   repeat_count = 1
  # }
resource "google_dialogflow_cx_intent" "default_welcome_intent" {
  parent                    = google_dialogflow_cx_agent.agent.id
  is_default_welcome_intent = true
  display_name              = "Default Intent"
  priority                  = 1
  training_phrases {
    parts {
      text = "Hello"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "heya"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "hello hi"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "howdy"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "hey there"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "hi there"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "greetings"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "hey"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "lovely day isn't it"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "I greet you"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "hello again"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "hi"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "hello there"
    }
    repeat_count = 1
  }
  training_phrases {
    parts {
      text = "a good day"
    }
    repeat_count = 1
  }
}

resource "google_dialogflow_cx_intent" "redirect_artists_overview" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.artists.overview"
  priority     = 1

  training_phrases {
     parts {
         text = "Which bands are signed?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Which bands"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Which artists"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Which artists are part of the record label"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Who is part of the label"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "From which bands can I buy merchandise"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Band merchandise"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Which music do you have?"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "I would like to know who are signed to the label"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Who are supported by the label"
     }
     repeat_count = 1
  }
      training_phrases {
     parts {
         text = "From who can I buy shirts"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "What music can I order"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Can I get an overview of all the artists"
     }
     repeat_count = 1
  }
 }

resource "google_dialogflow_cx_intent" "redirect_products_overview" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.products.overview"
  priority     = 1
  description  = "Artists overview: The bands supported by the label"
  training_phrases {
     parts {
         text = "Which products do you sell?"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "What merchandise items do you have?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "What are you selling?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "What are the items?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Which products?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "What merchandise?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Please tell me what you have"
     }
     repeat_count = 1
  }
} 

resource "google_dialogflow_cx_intent" "confirm_artists_overview" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "confirm.artists.overview"
  priority     = 1

  training_phrases {
     parts {
         text = "Yeah let me buy merchandise"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Yes I want to purchase something"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Yes I would like to order merchandise from Alice Googler"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Ok let's buy stuff."
     }
     repeat_count = 1
  }
  }

  
# resource "google_dialogflow_cx_intent" "" {
#   parent       = google_dialogflow_cx_agent.agent.id
#   display_name = ""
#   priority     = 1

#   training_phrases {
#      parts {
#          text = ""
#      }
#      repeat_count = 1
#   }
#   training_phrases {
#      parts {
#          text = ""
#      }
#      repeat_count = 1
#   }
#   training_phrases {
#      parts {
#          text = ""
#      }
#      repeat_count = 1
#   }
#   training_phrases {
#      parts {
#          text = ""
#      }
#      repeat_count = 1
#   }
#  }
  
  resource "google_dialogflow_cx_intent" "redirect_product" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.product"
  priority     = 1

  training_phrases {
     parts {
         text = "Tour movie"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I am interested in a t-shirt"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Can I buy a digital album?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want the CD"
     }
     repeat_count = 1
  }
  
    training_phrases {
     parts {
         text = "I want to buy something"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Can I purchase a record?"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "I want to buy a t-shirt size M of The Google Dolls"
     }
     repeat_count = 1
  }
  }
  
  resource "google_dialogflow_cx_intent" "redirect_shirts" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.shirts"
  priority     = 1

  training_phrases {
     parts {
         text = "Shirts"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want to buy shirts"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I am interested in shirts"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want a shirt"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Shirts of G's N' Roses please"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Give me shirts of the Google Dolls"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want to buy shirts of Alice Googler"
     }
     repeat_count = 1
  }
  }

  resource "google_dialogflow_cx_intent" "redirect_music" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.music"
  priority     = 1

  training_phrases {
     parts {
         text = "Music"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want to buy music"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I am interested in music"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Give me music of the Goo Fighters"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Music of Goo Fighters please"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Interested in buying the Alice Googler album"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Purchase Alice Googler music"
     }
     repeat_count = 1
  }
  }
  resource "google_dialogflow_cx_intent" "redirect_album" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.album"
  priority     = 1

  training_phrases {
     parts {
         text = "Hits"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Live Album"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want the Greatest Hits Digital Album"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Give me the Greatest Hits CD"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Hits on MP3"
     }
     repeat_count = 1
  }
 }
   
resource "google_dialogflow_cx_intent" "redirect_shirt_size" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.shirt.size"
  priority     = 1

  training_phrases {
     parts {
         text = "XS"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I have M"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want Large"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "My size is 3XL"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Extra Large is the size"
     }
     repeat_count = 1
  }
 }

 resource "google_dialogflow_cx_intent" "redirect_my_order" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.my.order"
  priority     = 1

  training_phrases {
     parts {
         text = "About my order"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I have a question about my order"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "My order is ABCD123 I have a question about my order."
     }
     repeat_count = 1
  }
 }

 resource "google_dialogflow_cx_intent" "redirect_my_order_status" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.my.order.status"
  priority     = 1

  training_phrases {
     parts {
         text = "My order is ABCD123 what is the status?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "What is the status of my order?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "What my order status?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "When will I receive my item?"
     }
     repeat_count = 1
  }
 }
  resource "google_dialogflow_cx_intent" "redirect_my_order_canceled" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.my.order.canceled"
  priority     = 1

  training_phrases {
     parts {
         text = "I want to cancel my order"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want to cancel order ABCD123"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Please cancel order ABCD123"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Undo my order"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Stop my order"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Cancel"
     }
     repeat_count = 1
  }
  }

  resource "google_dialogflow_cx_intent" "redirect_shipping_info" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.shipping.info"
  priority     = 1

  training_phrases {
     parts {
         text = "How long will it take?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "How long is shipping?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "How long does shipping take?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "When will I receive it?"
     }
     repeat_count = 1
  }
  }
  resource "google_dialogflow_cx_intent" "redirect_refund_info" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.refund.info"
  priority     = 1

  training_phrases {
     parts {
         text = "I want a refund."
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Can I get a refund"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want to return the CD"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want to return my t-shirt"
     }
     repeat_count = 1
  }
  }

  resource "google_dialogflow_cx_intent" "redirect_swapping_info" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.swapping.info"
  priority     = 1

  training_phrases {
     parts {
         text = "I want to swap my item"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Can I change my t-shirt for a larger size?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Can I change my product?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want to swap the CD"
     }
     repeat_count = 1
  }
  }

  resource "google_dialogflow_cx_intent" "redirect_order_process" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.order.process"
  priority     = 1

  training_phrases {
     parts {
         text = "I want to buy a t-shirt of the Google Dolls size S"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Let me buy the digital CD of Alice Googler"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Get me the tour movie of G's N' Roses"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Buy a longsleeve shirt of The Goo Fighters"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Purchase the Alice Googler t-shirt"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Please order me the Google Dolls CD"
     }
     repeat_count = 1
  }
  }

  resource "google_dialogflow_cx_intent" "confirm_proceed_order" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "confirm.proceed.order"
  priority     = 1

  training_phrases {
     parts {
         text = "Yes"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Yes please continue"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Yes order"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I want to order"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Yeah"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Yep"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I confirm"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Agree"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Go ahead"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Order"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Buy it"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Purchase"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Okay"
     }
     repeat_count = 1
  }
  
  }

  resource "google_dialogflow_cx_intent" "decline_proceed_order" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "decline.proceed.order"
  priority     = 1

  training_phrases {
     parts {
         text = "No"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I rather not"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I don't want it anymore"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Don't order"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Stop"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Not anymore"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Nope"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Go back"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Reset"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Decline"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I don't need it"
     }
     repeat_count = 1
  }
  }

  resource "google_dialogflow_cx_intent" "redirect_home" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.home"
  priority     = 1

  training_phrases {
     parts {
         text = "Go back"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Home"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Help"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "What else can I ask"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Restart"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Can you tell me what I can order?"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "What questions can I ask"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I need help"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Advice please"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Hi"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Hello"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Good day!"
     }
     repeat_count = 1
  }
  }

  resource "google_dialogflow_cx_intent" "redirect_end" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.end"
  priority     = 1

  training_phrases {
     parts {
         text = "No that's it goodbye"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Bye"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Cheers"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "End"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "That's it"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "No more questions"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Exit"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Have a good day"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "End Call"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Close"
     }
     repeat_count = 1
  }
    }


  resource "google_dialogflow_cx_intent" "redirect_product_of_artist" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.product.of.artist"
  priority     = 1

  training_phrases {
     parts {
         text = "Yeah, let's shop"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Give me merch of Alice Googler"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Shirts of The Google Dolls that would be nice"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Yes"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "I want The Goo Fighters stuff"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Yes, I want to order merchandise"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Yep, give me items of G's N' Roses"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Go for it"
     }
     repeat_count = 1
  }
    training_phrases {
     parts {
         text = "Anything Alice Googler"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "I am a G's N' Roses fan!"
     }
     repeat_count = 1
  }
      training_phrases {
     parts {
         text = "Google Dolls"
     }
     repeat_count = 1
  }
  training_phrases {
     parts {
         text = "Yes of the Google Dolls"
     }
     repeat_count = 1
  }
    }