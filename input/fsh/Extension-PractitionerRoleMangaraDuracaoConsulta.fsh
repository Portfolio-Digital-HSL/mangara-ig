Extension: DuracaoConsultaMangara
Id: duracao-consulta-mangara
Title: "Duração da consulta Mangara"
Description: "Duração da consulta expressa em quantidade UCUM em minutos."
* extension 0..0
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code = #min (exactly)
* valueQuantity.unit = "min" (exactly)