//Extensions
Extension: DateTransferedToStation
Id: transfer-date
Title: "Ill traveler transfer date"
Description: "The date that an ill traveler was transferred to Port Health Station"
* value[x] only date  
* value[x] 0..1 MS 

Extension: PortHealthStation
Id: port-health-station
Title: "Port Health Station Name"
Description: "Name of the Port Health Station the traveler was transferred to"
* value[x] only CodeableConcept
* valueCodeableConcept from PortHealthStationVS (required)    
* value[x] 0..1 MS 

Extension: ChestXrayResults
Id: chest-xray
Title: "Chest X-ray"
Description: "Results of X-Ray"
* value[x] only Reference($USCoreObservationClinicalResult)
* value[x] 0..1 MS 

Extension: LabResult
Id: lab-result
Title: "Lab Result"
Description: "Results of Labratory Test"
* value[x] only Attachment
* value[x] 0..1 MS 

Extension: Symptom
Id: symptom
Title: "Symptoms"
Description: "Symptoms present in Traveler "
* value[x] only CodeableConcept
* valueCodeableConcept from $Symptoms (required)    


Extension: RashOnsetDate
Id: rash-onset
Title: "Rash Onset Date"
Description: "Date when rash appeared"
* value[x] only date
/*
Extension: FlightDuration
Id: flight-duration
Title: "Duration of the flight"
Description: "Length of time on the airplane from gate to gate"
* value[x] only string
* value[x] 0..1 MS 
*/
Extension: FlightDetail
Id: flight-details
Title: "Flight Details"
Description: "Flight Details provides details about a single flight that the ill traveler was a passenger on. 
It does not cover each leg of an itinerary. Each leg requires a flightDetail "
* value[x] 0..0
* extension contains
    departureAirport 0..1 and
    arrivalAirport 0..1 and
    flightNumber 0..1 and
    seatNumber 0..1 and
    flightDuration 0..1 and
    satInSeat 0..1 and
    airline 0..1
* extension[departureAirport].value[x] only CodeableConcept
* extension[departureAirport] ^short = "Departure Airport"
* extension[departureAirport].value[x] 1..1
* extension[departureAirport].value[x] from AirportCodeVS (required)
* extension[arrivalAirport].value[x] only CodeableConcept
* extension[arrivalAirport] ^short = "Arrival Airport"
* extension[arrivalAirport].value[x] 1..1
* extension[arrivalAirport].value[x] from AirportCodeVS (required)
* extension[flightNumber].value[x] only string
* extension[flightNumber].value[x] 1..1
* extension[flightNumber] ^short = "Flight Number"
* extension[seatNumber].value[x] only string
* extension[seatNumber].value[x] 1..1
* extension[seatNumber] ^short = "Seat Number"
* extension[flightDuration].value[x] only integer
* extension[flightDuration].value[x] 1..1
* extension[flightDuration] ^short = "Flight Duration in Hours"
* extension[satInSeat].value[x] only boolean
* extension[satInSeat].value[x] 1..1
* extension[satInSeat] ^short = "Did they sit in their assigned seat?"
* extension[airline].value[x] only string //Should we make this a valueset?
* extension[airline].value[x] 1..1
* extension[airline] ^short = "The airline they flew on"


Extension: LabResults
Id: lab-results
Title: "Lab Results"
Description: "Results of a lab"
* value[x] only Reference($USCoreObservationLab)
* value[x] 0..1 MS 

Extension: InfectiousDiseaseName
Id: disease-name
Title: "Name of Disease"
Description: "Name of the infectious disease the traveler has/may have"
* value[x] only CodeableConcept
* valueCodeableConcept from InfectiousDiseaseNameVS (required)    
* value[x] 1..1 MS 
