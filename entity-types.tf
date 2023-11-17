resource "google_dialogflow_cx_entity_type" "basic_entity_artists" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Artists"
  kind         = "KIND_MAP"
  entities {
    value = "The Google Dolls"
    synonyms = ["Google Dolls"]
  }
  entities {
    value = "The Goo Fighters"
    synonyms = ["Goo Fighters"]
  }
  entities {
    value = "G's N' Roses"
    synonyms = ["Alice Googler"]
  }
  enable_fuzzy_extraction = true
  redact = true
} 

resource "google_dialogflow_cx_entity_type" "basic_entity_merch" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Merch"
  kind         = "KIND_MAP"
  entities {
    value = "T-shirt"
  }
  entities {
    value = "Longsleeve"
    synonyms = ["Longsleeve Shirt"]
  }
  entities {
    value = "Tour Movie"
  }
  entities {
    value = "Digital Album"
    synonyms = ["MP3 Album","MP3"]
  }
  entities {
    value = "CD"
    synonyms = ["Disc","Physical CD"]
  }
  enable_fuzzy_extraction = true
  redact = true 
} 

resource "google_dialogflow_cx_entity_type" "basic_entity_album" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Album"
  kind         = "KIND_MAP"
  entities {
    value = "Live"
  }
  entities {
    value = "Greatest Hits"
    synonyms = ["Hits"]
  }
  enable_fuzzy_extraction = true
  redact = true
} 

resource "google_dialogflow_cx_entity_type" "basic_entity_shirtsize" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "ShirtSize"
  kind         = "KIND_MAP"
  entities {
    value = "XS"
    synonyms = ["Extra Small"]
  }
  entities {
    value = "S"
    synonyms = ["Small"]
  }

  entities {
    value = "M"
    synonyms = ["Medium"]
  }
  entities {
    value = "L"
    synonyms = ["Large"]
  }
  entities {
    value = "XL"
    synonyms = ["Extra Large"]
  }
  entities {
    value = "2XL"
    synonyms = ["Extra Extra Large"]
  }
  enable_fuzzy_extraction = true 
  redact = true
} 



resource "google_dialogflow_cx_entity_type" "basic_entity_order_number" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "OrderNumber"
  kind         = "KIND_REGEXP"
  entities {
    value = "[A-Z]{4}[0-9]{3}"
  }
  enable_fuzzy_extraction = true
  redact = true 
} 