Instance: report-disease-name
InstanceOf: SearchParameter
Usage: #definition
Title: "Search Reports of Ill Travelers by Disease"
* status = #active
* code = #disease-name
* name = "reportDiseaseName"
* description = "Search Reports of Ill Travelers by Disease"
* url = "http://hl7.org/fhir/us/reportofilltraveler/SearchParameter-report-disease-name"
* version = "6.0.1"
* base = #Composition
* type = #string
* expression = "ReportOfIllTraveler.diseaseName"
* multipleOr = true
* multipleAnd = true

