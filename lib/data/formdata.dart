ListItem dropDown1;
ListItem dropDown2;
String previousCrop = "", farmArea;

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

String longitude, latitude;
String finaladdress;
var temp, humidity, season;

var result = {
  "crops": {"0": "wheat", "1": "rice"},
  "crop_info": {
    "0":
        "Wheat is a cereal grain. People eat it most often in the form of bread. It is a kind of grass whose fruit is a \"head of wheat\" with edible seeds. World trade in wheat is greater than for all other crops combined",
    "1":
        "Rice can grow in either a wet paddy or a dry field setting. rice fields are also called paddy fields or rice paddies. About 75% of global rice production comes from irrigated rice systems  because most rice varieties express their full yield potential when water supply is adequate."
  },
  "soil_type": {"0": "Loamy and clay soil", "1": "Loamy and clay soil."},
  "temperature_req": {
    "0": "12\u00b0 to 25\u00b0C",
    "1": "25\u00b0 to 35\u00b0C"
  },
  "water_req": {"0": "450-650 mm\/day", "1": "450-700 mm\/day"},
  "time_required": {"0": "7-8 months", "1": "120-150 days"},
  "seeds_per_hectare": {"0": "125 kg\/hectare", "1": "20-40 kg\/hectare"},
  "MSP": {
    "0": "Rs 1,975 per quintal",
    "1": "Rs 1,870 per quintal",
  },
};

List<String> images = [
  "http://www.pngall.com/wp-content/uploads/2/Wheat-PNG-Image.png",
  "https://www.pikpng.com/pngl/b/330-3306231_rice-belongs-to-the-poaceae-family-rice-plant.png"
];

var titleData_en = [
  "Soil Type",
  "Temperature Required",
  "Water Required",
  "Time Required",
  "Seeds per hectare",
  "Market Demand",
];

var titleData_hi = [
  "मिट्टी के प्रकार",
  "आवश्यक तापमान",
  "पानी की आवश्यकता",
  "समय की आवश्यकता",
  "बीज प्रति हेक्टेयर",
  "बाजार की मांग",
];

var indexes = [
  "soil_type",
  "temperature_req",
  "water_req",
  "time_required",
  "seeds_per_hectare",
  "MSP",
];

bool isHindi = false;

var agriculturalScemesURL = [
  "https://pmfby.gov.in/",
  "https://krishijagran.com/animal-husbandry/dairy-entrepreneurship-development-scheme-how-farmers-can-get-loans-up-to-rs-20-lakh-under-this-scheme/",
  "https://krishijagran.com/agriculture-world/164-crore-farmers-registered-on-e-nam-heres-the-process-of-selling-agricultural-produce-online-in-585-mandis/",
  "https://krishijagran.com/agriculture-world/how-farmers-can-get-rs-50000-per-hectare-for-organic-farming-under-paramparagat-krishi-vikas-yojana/",
  "https://krishijagran.com/agriculture-world/pashu-kisan-credit-card-yojana-eligibility-benefits-loan-amount-necessary-documents-methods-to-apply/",
  "https://krishijagran.com/news/how-to-apply-for-kisan-credit-card-online-check-step-by-step-process/",
  "https://soilhealth.dac.gov.in/",
];

var agriculturalScemes_en = [
  "Pradhan Mantri Fasal Bima Yojana",
  "Dairy Entrepreneurship Development Scheme",
  "National Agricultural Market Scheme",
  "Paramparagat Krishi Vikas Yojana",
  "Pashu kisan Credit Card Yojana",
  "Kisan credit card",
  "Soil Health Card",
];

var agriculturalScemes_hi = [
  "प्रधानमंत्री आवास बीमा योजना",
  "डेयरी उद्यमिता विकास योजना",
  "राष्ट्रीय कृषि बाजार योजना",
  "परम्परागत कृषि विकास योजना",
  "पशू किसान क्रेडिट कार्ड योजना",
  "किसान क्रेडिट कार्ड",
  "मृदा स्वास्थ्य कार्ड",
];
