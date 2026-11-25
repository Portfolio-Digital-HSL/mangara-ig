# Paciente desativado por duplicidade - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente desativado por duplicidade**

## Example Patient: Paciente desativado por duplicidade

Cadastro desativado por duplicidade, com link para o cadastro que permanece.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "paciente-desativado-duplicidade",
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
    "value" : "784060400242066"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "TAX"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cpf",
    "value" : "88644040820"
  }],
  "active" : false,
  "name" : [{
    "use" : "official",
    "text" : "Raimundo Nonato Silva Pereira",
    "_family" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "unknown"
      }]
    },
    "given" : ["Raimundo", "Nonato"]
  }],
  "gender" : "female",
  "birthDate" : "1996-09-01",
  "address" : [{
    "use" : "home",
    "type" : "physical",
    "state" : "AM",
    "country" : "BR"
  }],
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "MTH",
        "display" : "mother"
      }]
    }],
    "name" : {
      "text" : "Raimunda Silva Pereira"
    }
  }],
  "managingOrganization" : {
    "identifier" : {
      "system" : "https://saude.gov.br/fhir/sid/cnes",
      "value" : "5591171"
    }
  },
  "link" : [{
    "other" : {
      "reference" : "Patient/paciente-cpf-cns"
    },
    "type" : "replaced-by"
  }]
}

```
