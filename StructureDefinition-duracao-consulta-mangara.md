# Duração da consulta Mangara - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Duração da consulta Mangara**

## Extension: Duração da consulta Mangara 

| | |
| :--- | :--- |
| *Official URL*:https://mangaradigital.org/fhir/mangara/StructureDefinition/duracao-consulta-mangara | *Version*:0.1.0 |
| Draft as of 2026-10-09 | *Computable Name*:DuracaoConsultaMangara |

Duração da consulta expressa em quantidade UCUM em minutos.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PractitionerRole Mangara](StructureDefinition-practitioner-role-mangara.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.mangaradigital.fhir.mangara|current/StructureDefinition/StructureDefinition-duracao-consulta-mangara.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-duracao-consulta-mangara.csv), [Excel](StructureDefinition-duracao-consulta-mangara.xlsx), [Schematron](StructureDefinition-duracao-consulta-mangara.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "duracao-consulta-mangara",
  "url" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/duracao-consulta-mangara",
  "version" : "0.1.0",
  "name" : "DuracaoConsultaMangara",
  "title" : "Duração da consulta Mangara",
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
  "description" : "Duração da consulta expressa em quantidade UCUM em minutos.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Duração da consulta Mangara",
      "definition" : "Duração da consulta expressa em quantidade UCUM em minutos."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/duracao-consulta-mangara"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.value[x].unit",
      "path" : "Extension.value[x].unit",
      "fixedString" : "min"
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.value[x].code",
      "path" : "Extension.value[x].code",
      "fixedCode" : "min"
    }]
  }
}

```
