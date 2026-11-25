# Paciente Mangará - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente Mangará**

## Resource Profile: Paciente Mangará 

| | |
| :--- | :--- |
| *Official URL*:https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara | *Version*:0.1.0 |
| Draft as of 2026-11-25 | *Computable Name*:PatientMangara |

 
Paciente atendido no Mangará Digital. Especializa o BR Core Patient: exige CPF ou CNS, sexo administrativo e nome em texto; registra a identidade de gênero com o CodeSystem nacional BRIdentidadeGenero; e prevê a mãe como único contato. 

### Escopo

Este perfil define como um paciente atendido no Mangará Digital é representado em FHIR. Ele especializa o BR Core Patient 1.7.1 (`https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient`) e se aplica a todo cadastro de paciente criado ou alterado pelos sistemas do Mangará.

### Regras

| | |
| :--- | :--- |
| `identifier` | CPF ou CNS obrigatório (ao menos um), conforme a invariante`br-core-pat-2`do BR Core. CPF com 11 dígitos, sem máscara e com zeros à esquerda,`use = official`e`type = v2-0203#TAX`. CNS com 15 dígitos,`use = official`e`type = v2-0203#HC`. O estrangeiro pode ter também o RNE/CRNM (`https://saude.gov.br/fhir/sid/rne`,`type = v2-0203#RNE`) e o passaporte (`http://hl7.org/fhir/sid/passport-BRA`,`type = v2-0203#PPN`), ambos com`use = official`. Esses documentos são complementares: não substituem o CPF ou o CNS. Outros identificadores não são previstos. |
| `gender` | Obrigatório. |
| Sexo ao nascer | Opcional, na extensão`sexo-nascimento-br-ips`. |
| Identidade de gênero | Extensão`identidade-genero-br-ips`do BR Core. Na instância, a URL é`http://hl7.org/fhir/StructureDefinition/patient-genderIdentity`. O código vem do CodeSystem nacional`https://terminologia.saude.gov.br/fhir/CodeSystem/BRIdentidadeGenero`, com`display`e`text`iguais ao display oficial (invariante`mangara-pat-identidade-genero`). |
| Raça/cor | Extensão`raca-br-ips`, com o ValueSet`BRRacaCor`. |
| Etnia e aldeia | Sempre codificadas:`povo-indigena-br-ips`(`BREtniaIndigena`) e`br-core-address-aldeia`(`BRAldeia`). Texto livre não é aceito. |
| `name` | Obrigatório, com`text`obrigatório. O nome civil tem`use = official`. O nome social é um segundo nome com`use = usual`(nunca`nickname`). |
| `active` | A ausência indica paciente ativo.`false`apenas em cadastros desativados por duplicidade, com`link`do tipo`replaced-by`. |
| `contact` | No máximo um, sempre a**mãe**:`relationship = v3-RoleCode#MTH`e nome obrigatório. A mãe também é registrada como`RelatedPerson`com`relationship = v3-RoleCode#MTH`. Outros contatos, como o de emergência, não são registrados em`Patient.contact`. |
| `address` | Conforme o BR Core.`state`com a**sigla da UF**em 2 letras maiúsculas (SP, PE, RJ).`city`com o nome do município; o código IBGE, quando informado, vai na extensão`br-core-address-municipio`.`postalCode`com 8 dígitos e`country`com o código ISO`BR`. |

### Identidade de gênero

| | |
| :--- | :--- |
| `mulher-cisgenero` | Mulher cisgênero |
| `homem-cisgenero` | Homem cisgênero |
| `mulher-transgenero` | Mulher transgênero |
| `homem-transgenero` | Homem transgênero |
| `nao-binario` | Pessoa não binária |
| `travesti` | Travesti |
| `nao_declarar` | Prefiro não declarar |

### Conformidade com o BR Core

Três divergências dos pacotes nacionais afetam a validação deste perfil:

* O BR Core 1.7.1 vincula a identidade de gênero (binding **required**) ao ValueSet `BRIdentidadeGenero` 1.1.0, que lista códigos SNOMED CT. Este perfil adota os códigos do CodeSystem nacional `BRIdentidadeGenero` listados acima. Instâncias com identidade de gênero acusam erro de validação contra o BR Core até que o ValueSet nacional inclua esses códigos.
* O ValueSet `BRSexoNascimento` declara os displays "Feminino" e "Masculino" para os códigos de `administrative-gender`, cujos displays oficiais são "Female" e "Male". Os exemplos usam os displays do ValueSet nacional e acusam esse erro.
* A fatia `registroEstrangeiro` do BR Core fixa o tipo `http://terminology.hl7.org/CodeSystem/v2-0203#RNE`, mas o código `RNE` não existe nesse CodeSystem nem no ValueSet `BRTipoDocumentoIndividuo`, ao qual o próprio BR Core vincula o tipo. Instâncias com RNE/CRNM seguem o BR Core e acusam erro de validação até a correção do pacote nacional.

**Usages:**

* Examples for this Profile: [Patient/paciente-cpf-cns](Patient-paciente-cpf-cns.md), [Patient/paciente-desativado-duplicidade](Patient-paciente-desativado-duplicidade.md), [Patient/paciente-estrangeiro](Patient-paciente-estrangeiro.md), [Patient/paciente-indigena-aldeia](Patient-paciente-indigena-aldeia.md)... Show 2 more, [Patient/paciente-portal-nome-social](Patient-paciente-portal-nome-social.md) and [Patient/paciente-somente-cns](Patient-paciente-somente-cns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.mangaradigital.fhir.mangara|current/StructureDefinition/StructureDefinition-patient-mangara.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-mangara.csv), [Excel](StructureDefinition-patient-mangara.xlsx), [Schematron](StructureDefinition-patient-mangara.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-mangara",
  "url" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara",
  "version" : "0.1.0",
  "name" : "PatientMangara",
  "title" : "Paciente Mangará",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-25T13:20:48+00:00",
  "publisher" : "Hospital Sírio-Libanês",
  "contact" : [{
    "name" : "Hospital Sírio-Libanês",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hsl.org.br"
    }]
  }],
  "description" : "Paciente atendido no Mangará Digital. Especializa o BR Core Patient: exige CPF ou CNS, sexo administrativo e nome em texto; registra a identidade de gênero com o CodeSystem nacional BRIdentidadeGenero; e prevê a mãe como único contato.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "constraint" : [{
        "key" : "mangara-pat-identidade-genero",
        "severity" : "error",
        "human" : "A identidade de gênero usa o CodeSystem nacional BRIdentidadeGenero.",
        "expression" : "extension.where(url = 'http://hl7.org/fhir/StructureDefinition/patient-genderIdentity').all(value.ofType(CodeableConcept).coding.all(system = 'https://terminologia.saude.gov.br/fhir/CodeSystem/BRIdentidadeGenero'))",
        "source" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara"
      }]
    },
    {
      "id" : "Patient.extension:identidadeGenero",
      "path" : "Patient.extension",
      "sliceName" : "identidadeGenero",
      "short" : "Identidade de gênero (CodeSystem nacional BRIdentidadeGenero)",
      "comment" : "URL na instância: `http://hl7.org/fhir/StructureDefinition/patient-genderIdentity`. Código do CodeSystem `https://terminologia.saude.gov.br/fhir/CodeSystem/BRIdentidadeGenero` (mulher-cisgenero, homem-cisgenero, mulher-transgenero, homem-transgenero, nao-binario, travesti, nao_declarar), com `display` e `text` iguais ao display oficial. Ver a nota de conformidade com o BR Core na página do perfil.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:povoIndigena",
      "path" : "Patient.extension",
      "sliceName" : "povoIndigena",
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:sexoNascimento",
      "path" : "Patient.extension",
      "sliceName" : "sexoNascimento",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "CPF ou CNS (ao menos um)",
      "comment" : "Ao menos um identificador, que deve ser o CPF ou o CNS (invariante `br-core-pat-2` do BR Core).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:cns",
      "path" : "Patient.identifier",
      "sliceName" : "cns",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:cns.value",
      "path" : "Patient.identifier.value",
      "constraint" : [{
        "key" : "mangara-pat-cns-formato",
        "severity" : "error",
        "human" : "O CNS tem exatamente 15 dígitos.",
        "expression" : "matches('^[0-9]{15}$')",
        "source" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara"
      }]
    },
    {
      "id" : "Patient.identifier:cpf",
      "path" : "Patient.identifier",
      "sliceName" : "cpf"
    },
    {
      "id" : "Patient.identifier:cpf.value",
      "path" : "Patient.identifier.value",
      "constraint" : [{
        "key" : "mangara-pat-cpf-formato",
        "severity" : "error",
        "human" : "O CPF tem exatamente 11 dígitos, sem máscara.",
        "expression" : "matches('^[0-9]{11}$')",
        "source" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara"
      }]
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro",
      "path" : "Patient.identifier",
      "sliceName" : "registroEstrangeiro",
      "short" : "RNE/CRNM do estrangeiro (complementar ao CPF/CNS)",
      "comment" : "Registro Nacional de Estrangeiro ou Carteira de Registro Nacional Migratório, para estrangeiros com residência no Brasil. `system = https://saude.gov.br/fhir/sid/rne`, `use = official` e `type = v2-0203#RNE`. Não substitui o CPF ou o CNS, que continuam obrigatórios.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:passaporte",
      "path" : "Patient.identifier",
      "sliceName" : "passaporte",
      "short" : "Passaporte do estrangeiro (complementar ao CPF/CNS)",
      "comment" : "Número do passaporte, para estrangeiros sem RNE/CRNM. `system = http://hl7.org/fhir/sid/passport-BRA`, `use = official` e `type = v2-0203#PPN`, conforme o BR Core. Não substitui o CPF ou o CNS, que continuam obrigatórios.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "comment" : "A ausência de `active` indica paciente ativo. `active = false` é usado apenas em cadastros desativados por duplicidade, sempre com `link` do tipo `replaced-by` apontando para o cadastro que permanece.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use"
        }],
        "description" : "Nome civil e nome social",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.text",
      "path" : "Patient.name.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name:nomeCivil",
      "path" : "Patient.name",
      "sliceName" : "nomeCivil",
      "short" : "Nome civil",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name:nomeCivil.use",
      "path" : "Patient.name.use",
      "min" : 1,
      "patternCode" : "official"
    },
    {
      "id" : "Patient.name:nomeSocial",
      "path" : "Patient.name",
      "sliceName" : "nomeSocial",
      "short" : "Nome social",
      "comment" : "Sempre `use = usual`. Não usar `nickname`.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name:nomeSocial.use",
      "path" : "Patient.name.use",
      "min" : 1,
      "patternCode" : "usual"
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:municipio",
      "path" : "Patient.address.extension",
      "sliceName" : "municipio",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "comment" : "Nome do município. O código IBGE vai na extensão `municipio`, nunca em `city`.",
      "constraint" : [{
        "key" : "mangara-pat-cidade-nome",
        "severity" : "error",
        "human" : "O município é informado pelo nome, não pelo código IBGE.",
        "expression" : "matches('^[0-9]+$').not()",
        "source" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara"
      }]
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "comment" : "Sigla da UF com 2 letras maiúsculas (ex.: SP).",
      "constraint" : [{
        "key" : "mangara-pat-uf",
        "severity" : "error",
        "human" : "A UF é a sigla com 2 letras maiúsculas.",
        "expression" : "matches('^[A-Z]{2}$')",
        "source" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara"
      }]
    },
    {
      "id" : "Patient.address.postalCode",
      "path" : "Patient.address.postalCode",
      "constraint" : [{
        "key" : "mangara-pat-cep",
        "severity" : "error",
        "human" : "O CEP tem exatamente 8 dígitos, sem máscara.",
        "expression" : "matches('^[0-9]{8}$')",
        "source" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara"
      }]
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "comment" : "Código ISO 3166 do país. Usar `BR`.",
      "constraint" : [{
        "key" : "mangara-pat-pais",
        "severity" : "error",
        "human" : "O país é o código ISO 3166 (2 ou 3 letras maiúsculas).",
        "expression" : "matches('^[A-Z]{2,3}$')",
        "source" : "https://mangaradigital.org/fhir/mangara/StructureDefinition/patient-mangara"
      }]
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "short" : "Mãe do paciente",
      "comment" : "A mãe é registrada aqui e também como `RelatedPerson` com `relationship = v3-RoleCode#MTH`. Outros contatos, como o de emergência, não são registrados em `Patient.contact`.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.relationship",
      "path" : "Patient.contact.relationship",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "MTH",
          "display" : "mother"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "mustSupport" : true
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "mustSupport" : true
    }]
  }
}

```
