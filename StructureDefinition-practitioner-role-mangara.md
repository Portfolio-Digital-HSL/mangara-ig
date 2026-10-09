# PractitionerRole Mangara - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PractitionerRole Mangara**

## Resource Profile: PractitionerRole Mangara 

| | |
| :--- | :--- |
| *Official URL*:https://mangaradigital.org/fhir/mangara/StructureDefinition/practitioner-role-mangara | *Version*:0.1.0 |
| Draft as of 2026-10-09 | *Computable Name*:PractitionerRoleMangara |

 
Perfil de PractitionerRole com extensão de duração da consulta em minutos. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.mangaradigital.fhir.mangara|current/StructureDefinition/StructureDefinition-practitioner-role-mangara.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-practitioner-role-mangara.csv), [Excel](StructureDefinition-practitioner-role-mangara.xlsx), [Schematron](StructureDefinition-practitioner-role-mangara.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "practitioner-role-mangara",
  "url" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/practitioner-role-mangara",
  "version" : "0.1.0",
  "name" : "PractitionerRoleMangara",
  "title" : "PractitionerRole Mangara",
  "status" : "draft",
  "date" : "2026-10-09T18:47:55+00:00",
  "publisher" : "Hospital S�rio Liban�s",
  "contact" : [{
    "name" : "Hospital S�rio Liban�s",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hsl.org.br"
    }]
  }],
  "description" : "Perfil de PractitionerRole com extensão de duração da consulta em minutos.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.extension",
      "path" : "PractitionerRole.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "PractitionerRole.extension:duracaoConsulta",
      "path" : "PractitionerRole.extension",
      "sliceName" : "duracaoConsulta",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://mangaradigital.org/fhir/mangara/StructureDefinition/duracao-consulta-mangara"]
      }]
    }]
  }
}

```
