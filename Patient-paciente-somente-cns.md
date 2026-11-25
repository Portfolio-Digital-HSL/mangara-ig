# Paciente identificado só pelo CNS - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente identificado só pelo CNS**

## Example Patient: Paciente identificado só pelo CNS

Paciente identificado apenas pelo CNS.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "paciente-somente-cns",
  "meta" : {
    "profile" : ["https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "HC"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cns",
    "value" : "704026880044082"
  }],
  "active" : true,
  "name" : [{
    "text" : "Francisca Helena Moura Araújo"
  }],
  "gender" : "female",
  "birthDate" : "1988-09-25",
  "address" : [{
    "line" : ["Rua Exemplo, 100"],
    "state" : "AM"
  }]
}

```
