Profile: PatientMangara
Parent: $BRCorePatient
Id: patient-mangara
Title: "Paciente Mangará"
Description: "Paciente atendido no Mangará Digital. Especializa o BR Core Patient: exige CPF ou CNS, sexo administrativo e nome em texto; registra a identidade de gênero com o CodeSystem nacional BRIdentidadeGenero; e prevê a mãe como único contato."
* ^status = #draft
* ^experimental = false

// Identificadores: CPF ou CNS (br-core-pat-2 do BR Core). Os slices são do BR Core;
// aqui só se acrescenta o formato do valor.
* identifier MS
* identifier[cpf] MS
* identifier[cpf].value obeys mangara-pat-cpf-formato
* identifier[cns] MS
* identifier[cns].value obeys mangara-pat-cns-formato

// Sexo: obrigatório (já 1..1 no BR Core). Sexo ao nascer é opcional.
* gender MS
* extension[sexoNascimento] MS
* extension[raca] MS
* extension[povoIndigena] MS

// Identidade de gênero: extensão do BR Core (identidade-genero-br-ips), cuja URL na
// instância é http://hl7.org/fhir/StructureDefinition/patient-genderIdentity.
* extension[identidadeGenero] MS
* extension[identidadeGenero] ^short = "Identidade de gênero (CodeSystem nacional BRIdentidadeGenero)"
* extension[identidadeGenero] ^comment = "URL na instância: `http://hl7.org/fhir/StructureDefinition/patient-genderIdentity`. Código do CodeSystem `https://terminologia.saude.gov.br/fhir/CodeSystem/BRIdentidadeGenero` (mulher-cisgenero, homem-cisgenero, mulher-transgenero, homem-transgenero, nao-binario, travesti, nao_declarar), com `display` e `text` iguais ao display oficial. Ver a nota de conformidade com o BR Core na página do perfil."
* obeys mangara-pat-identidade-genero

// Nome: só o texto é obrigatório. O nome social vai num segundo nome com use = usual.
* name 1..* MS
* name.text 1..1 MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.description = "Nome civil e nome social"
* name contains nomeCivil 0..1 MS and nomeSocial 0..1 MS
* name[nomeCivil].use = #official
* name[nomeCivil] ^short = "Nome civil"
* name[nomeSocial].use = #usual
* name[nomeSocial] ^short = "Nome social"
* name[nomeSocial] ^comment = "Sempre `use = usual`. Não usar `nickname`."

// Ativo: ausência de active é tratada como ativo.
* active MS
* active ^comment = "A ausência de `active` indica paciente ativo. `active = false` é usado apenas em cadastros desativados por duplicidade, sempre com `link` do tipo `replaced-by` apontando para o cadastro que permanece."

* birthDate MS
* telecom MS

// Endereço: como sugere o BR Core — UF na sigla, município por nome em city e,
// opcionalmente, o código IBGE na extensão br-core-address-municipio.
* address MS
* address.extension[municipio] MS
* address.city ^comment = "Nome do município. O código IBGE vai na extensão `municipio`, nunca em `city`."
* address.city obeys mangara-pat-cidade-nome
* address.state ^comment = "Sigla da UF com 2 letras maiúsculas (ex.: SP)."
* address.state obeys mangara-pat-uf
* address.postalCode obeys mangara-pat-cep
* address.country ^comment = "Código ISO 3166 do país. Usar `BR`."
* address.country obeys mangara-pat-pais

// Contato: sempre a mãe.
* contact 0..1 MS
* contact ^short = "Mãe do paciente"
* contact ^comment = "A mãe é registrada aqui e também como `RelatedPerson` com `relationship = v3-RoleCode#MTH`. Outros contatos, como o de emergência, não são registrados em `Patient.contact`."
* contact.relationship 1..1 MS
* contact.relationship = $v3-RoleCode#MTH "mother"
* contact.name 1..1 MS

* managingOrganization MS
* link MS

Invariant: mangara-pat-identidade-genero
Description: "A identidade de gênero usa o CodeSystem nacional BRIdentidadeGenero."
Expression: "extension.where(url = 'http://hl7.org/fhir/StructureDefinition/patient-genderIdentity').all(value.ofType(CodeableConcept).coding.all(system = 'https://terminologia.saude.gov.br/fhir/CodeSystem/BRIdentidadeGenero'))"
Severity: #error

Invariant: mangara-pat-cpf-formato
Description: "O CPF tem exatamente 11 dígitos, sem máscara."
Expression: "matches('^[0-9]{11}$')"
Severity: #error

Invariant: mangara-pat-cns-formato
Description: "O CNS tem exatamente 15 dígitos."
Expression: "matches('^[0-9]{15}$')"
Severity: #error

Invariant: mangara-pat-cidade-nome
Description: "O município é informado pelo nome, não pelo código IBGE."
Expression: "matches('^[0-9]+$').not()"
Severity: #error

Invariant: mangara-pat-uf
Description: "A UF é a sigla com 2 letras maiúsculas."
Expression: "matches('^[A-Z]{2}$')"
Severity: #error

Invariant: mangara-pat-cep
Description: "O CEP tem exatamente 8 dígitos, sem máscara."
Expression: "matches('^[0-9]{8}$')"
Severity: #error

Invariant: mangara-pat-pais
Description: "O país é o código ISO 3166 (2 ou 3 letras maiúsculas)."
Expression: "matches('^[A-Z]{2,3}$')"
Severity: #error
