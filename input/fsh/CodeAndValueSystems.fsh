//Alias: $VSACtbVS = https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.43/expansion
Alias: $VSACtbCS = https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.43/expansion



//Codesystems
CodeSystem:  AirportCodesCS
Id: airport-code-system
Title: "Airport Codes"
Description:  "A code of USA Airport Codes."
* #ABR "Aberdeen, SD"
* #ALB "Albany, NY"
* #LAX "Los Angeles, CA"
* #MIA "Miami, FL"
* #ATL "Atlanta, GA"
* #ORD "Chicago, IL"
* #DFW "Dallas/Fort Worth, TX"
* #DEN "Denver, CO"
* #JFK "New York, NY"
* #SFO "San Francisco, CA"
* #SEA "Seattle, WA"
* #LAS "Las Vegas, NV"
* #PHX "Phoenix, AZ"
* #MSP "Minneapolis, MN"
* #DTW "Detroit, MI"
* #PHL "Philadelphia, PA"
* #BOS "Boston, MA"
* #LGA "New York, NY"
* #EWR "Newark, NJ"
* #CLT "Charlotte, NC"
* #IAH "Houston, TX"
* #DCA "Washington, DC"
* #FLL "Fort Lauderdale, FL"
* #MDW "Chicago, IL"
* #SAN "San Diego, CA"
* #TPA "Tampa, FL"
* #HNL "Honolulu, HI"
* #PDX "Portland, OR"
* #STL "St. Louis, MO"
* #MCO "Orlando, FL"
* #BWI "Baltimore, MD"
* #SLC "Salt Lake City, UT"
* #IAD "Washington, DC"
* #AUS "Austin, TX"
* #SJC "San Jose, CA"
* #DAL "Dallas, TX"
* #HOU "Houston, TX"
* #RDU "Raleigh/Durham, NC"
* #BNA "Nashville, TN"
* #MSY "New Orleans, LA"
* #SMF "Sacramento, CA"
* #IND "Indianapolis, IN"
* #MKE "Milwaukee, WI"
* #JAX "Jacksonville, FL"
* #SAT "San Antonio, TX"
* #PIT "Pittsburgh, PA"
* #SNA "Santa Ana, CA"
* #RSW "Fort Myers, FL"
* #CLE "Cleveland, OH"
* #CMH "Columbus, OH"
* #OGG "Kahului, HI"
* #PBI "West Palm Beach, FL"

CodeSystem:  PortHealthStationCS
Id: port-health-station-system
Title: "Port Health Stations"
Description:  "A list of Port Health Stations."
* #Anchorage "Anchorage"
* #Atlanta "Atlanta"
* #Boston "Boston"
* #Chicago "Chicago"
* #Dallas "Dallas"
* #Detroit "Detroit"
* #ElPaso "El Paso"
* #Honolulu "Honolulu"
* #Houston "Houston"
* #LosAngeles "Los Angeles"
* #Miami "Miami"
* #Minneapolis "Minneapolis"
* #NewYork "New York"
* #Newark "Newark"
* #Philadelphia "Philadelphia"
* #SanDiego "San Diego"
* #SanFrancisco "San Francisco"
* #SanJuan "San Juan"
* #Seattle "Seattle"
* #WashingtonDC "Washington, DC"

CodeSystem:  InfectiousDiseaseNameCS
Id: infectious-disease-system
Title: "Infectious Disease"
Description:  "A list of Infectious Diseases reportable to CDC."
* #AN "Anthrax"
* #WN "West Nile" 
* #BO "Botulism" 
* #CH "Cholera" 
* #CO "Coronavirus" 
* #DE "Denque" 
* #EB "Ebola" 
* #GO "Gonorrhea" 
* #ME "Measles" 
* #MA "Malaria" 
* #MB "Marburg" 
* #MN "Meningococcal disease" 
* #MP "Mpox" 
* #RA "Rabies" 
* #RU "Rubella" 
* #SP "Smallpox" 
* #SY "Syphillis" 
* #TB "Tuberculosis"
* #YE "Yellow Fever" 
* #ZI "Zika" 

//valuesets
ValueSet: AirportCodeVS
Title: "Airport Codes VS"
Description:  "A list of USA Airport Codes."
* include codes from system  AirportCodesCS

ValueSet: PortHealthStationVS
Title: "Port Health Stations VS"
Description:  "A list of all US Quarantine Stations."
* include codes from system  PortHealthStationCS

ValueSet: TuberculosisVS
Title: "Tuberculosis VS"
Description:  "A list of all Valid Tuberculosis Codes."
* include codes from system  $VSACtbCS

ValueSet: InfectiousDiseaseNameVS
Title: "Infectious Disease VS"
Description:  "A list of all Valid Tuberculosis Codes."
* include codes from system  InfectiousDiseaseNameCS

ValueSet: InfectiousDiseaseVS
Title: "Infectious Disease VS"
Description: "Codes indicating the Infectious Disease."
* ^experimental = false
* include $SNOMEDCT#56717001 "Tuberculosis" 

