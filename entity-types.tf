resource "google_dialogflow_cx_entity_type" "artist" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Artist"
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

resource "google_dialogflow_cx_entity_type" "artist_aliases" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Artist_Aliases"
  kind         = "KIND_MAP"
  entities {
    value = google_dialogflow_cx_entity_type.artist.display_name
    synonyms = ["musicians","bands", "singers", "groups"]
  }
  enable_fuzzy_extraction = false
} 

resource "google_dialogflow_cx_entity_type" "merch" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Merch"
  kind         = "KIND_MAP"
  entities {
    value = "T-shirt"
    synonyms = ["T-shirt"]
  }
  entities {
    value = "Longsleeve"
    synonyms = ["Longsleeve Shirt"]
  }
  entities {
    value = "Tour Movie"
    synonyms = ["Tour Movie"]
  }
  entities {
    value = "Digital Album"
    synonyms = ["MP3 Album","MP3"]
  }
  entities {
    value = "CD"
    synonyms = ["Disc","Physical CD"]
  }
} 

resource "google_dialogflow_cx_entity_type" "album" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Album"
  kind         = "KIND_MAP"
  entities {
    value = "Live"
    synonyms = ["Live"]
  }
  entities {
    value = "Greatest Hits"
    synonyms = ["Hits"]
  }
  enable_fuzzy_extraction = true
  redact = true
} 

resource "google_dialogflow_cx_entity_type" "shirtsize" {
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



resource "google_dialogflow_cx_entity_type" "order_number" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "OrderNumber"
  kind         = "KIND_REGEXP"
  entities {
    value = "[A-Z]{4}[0-9]{3}"
    synonyms = ["[A-Z]{4}[0-9]{3}"]
  }
  enable_fuzzy_extraction = false 
} 

############
############

resource "google_dialogflow_cx_entity_type" "size" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "size"
  kind         = "KIND_MAP"

  entities {
    value    = "small"
    synonyms = ["little", "small", "tiny"]
  }

  entities {
    value    = "medium"
    synonyms = ["medium", "regular", "average"]
  }

  entities {
    value    = "large"
    synonyms = ["big", "giant", "large"]
  }
}
