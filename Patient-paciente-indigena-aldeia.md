# Paciente indígena com aldeia - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente indígena com aldeia**

## Example Patient: Paciente indígena com aldeia

Paciente indígena, com povo indígena e aldeia codificados.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "paciente-indigena-aldeia",
  "meta" : {
    "profile" : ["https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara"]
  },
  "extension" : [{
    "url" : "https://ips.saude.gov.br/fhir/StructureDefinition/sexo-nascimento-br-ips",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/administrative-gender",
        "code" : "female",
        "display" : "Feminino"
      }]
    }
  },
  {
    "url" : "https://ips.saude.gov.br/fhir/StructureDefinition/povo-indigena-br-ips",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BREtniaIndigena",
        "code" : "0060",
        "display" : "GUARANI NANDEVA (AVAKATUETE, CHIRIPA, NHANDEWA, AV"
      }]
    }
  },
  {
    "url" : "https://ips.saude.gov.br/fhir/StructureDefinition/raca-br-ips",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRRacaCor",
        "code" : "05",
        "display" : "Indígena"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-genderIdentity",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRIdentidadeGenero",
        "code" : "mulher-cisgenero",
        "display" : "Mulher cisgênero"
      }],
      "text" : "Mulher cisgênero"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "TAX"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cpf",
    "value" : "08860804876"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "HC"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cns",
    "value" : "708226464028020"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Maria Eduarda Lima Ferreira",
    "given" : ["Maria", "Eduarda"]
  },
  {
    "use" : "usual",
    "text" : "Duda Lima"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "48999990000"
  },
  {
    "system" : "email",
    "value" : "paciente3@exemplo.com.br"
  }],
  "gender" : "female",
  "birthDate" : "1982-05-09",
  "address" : [{
    "extension" : [{
      "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-aldeia",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRAldeia",
          "code" : "51174",
          "display" : "YYNN MOROTY WHERÁ (M¿BIGUAÇU)"
        }],
        "text" : "YYNN MOROTY WHERÁ (M¿BIGUAÇU)"
      }
    }],
    "use" : "home",
    "type" : "physical",
    "city" : "Biguaçu",
    "state" : "SC",
    "postalCode" : "88000000",
    "country" : "BR"
  }],
  "managingOrganization" : {
    "display" : "POLO BASE DE FLORIANOPOLIS"
  }
}

```
