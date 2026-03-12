Profile: PractitionerRoleMangara
Parent: PractitionerRole
Id: practitioner-role-mangara
Title: "PractitionerRole Mangara"
Description: "Perfil de PractitionerRole com extensão de duração da consulta em minutos."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension contains DuracaoConsultaMangara named duracaoConsulta 0..1