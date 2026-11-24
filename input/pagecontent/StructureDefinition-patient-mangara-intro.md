### Escopo

Este perfil define como um paciente atendido no Mangará Digital é representado em FHIR. Ele especializa o BR Core Patient 1.7.1 (`https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient`) e se aplica a todo cadastro de paciente criado ou alterado pelos sistemas do Mangará.

### Regras

| Elemento | Regra |
|---|---|
| `identifier` | CPF ou CNS obrigatório (ao menos um), conforme a invariante `br-core-pat-2` do BR Core. CPF com 11 dígitos, sem máscara e com zeros à esquerda, `use = official` e `type = v2-0203#TAX`. CNS com 15 dígitos, `use = official` e `type = v2-0203#HC`. Outros identificadores não são previstos. |
| `gender` | Obrigatório. |
| Sexo ao nascer | Opcional, na extensão `sexo-nascimento-br-ips`. |
| Identidade de gênero | Extensão `identidade-genero-br-ips` do BR Core. Na instância, a URL é `http://hl7.org/fhir/StructureDefinition/patient-genderIdentity`. O código vem do CodeSystem nacional `https://terminologia.saude.gov.br/fhir/CodeSystem/BRIdentidadeGenero`, com `display` e `text` iguais ao display oficial (invariante `mangara-pat-identidade-genero`). |
| Raça/cor | Extensão `raca-br-ips`, com o ValueSet `BRRacaCor`. |
| Etnia e aldeia | Sempre codificadas: `povo-indigena-br-ips` (`BREtniaIndigena`) e `br-core-address-aldeia` (`BRAldeia`). Texto livre não é aceito. |
| `name` | Obrigatório, com `text` obrigatório. O nome civil tem `use = official`. O nome social é um segundo nome com `use = usual` (nunca `nickname`). |
| `active` | A ausência indica paciente ativo. `false` apenas em cadastros desativados por duplicidade, com `link` do tipo `replaced-by`. |
| `contact` | No máximo um, sempre a **mãe**: `relationship = v3-RoleCode#MTH` e nome obrigatório. A mãe também é registrada como `RelatedPerson` com `relationship = v3-RoleCode#MTH`. Outros contatos, como o de emergência, não são registrados em `Patient.contact`. |
| `address` | Conforme o BR Core. `state` com a **sigla da UF** em 2 letras maiúsculas (SP, PE, RJ). `city` com o nome do município; o código IBGE, quando informado, vai na extensão `br-core-address-municipio`. `postalCode` com 8 dígitos e `country` com o código ISO `BR`. |

### Identidade de gênero

| Código | Display |
|---|---|
| `mulher-cisgenero` | Mulher cisgênero |
| `homem-cisgenero` | Homem cisgênero |
| `mulher-transgenero` | Mulher transgênero |
| `homem-transgenero` | Homem transgênero |
| `nao-binario` | Pessoa não binária |
| `travesti` | Travesti |
| `nao_declarar` | Prefiro não declarar |

### Conformidade com o BR Core

Duas divergências dos pacotes nacionais afetam a validação deste perfil:

- O BR Core 1.7.1 vincula a identidade de gênero (binding *required*) ao ValueSet `BRIdentidadeGenero` 1.1.0, que lista códigos SNOMED CT. Este perfil adota os códigos do CodeSystem nacional `BRIdentidadeGenero` listados acima. Instâncias com identidade de gênero acusam erro de validação contra o BR Core até que o ValueSet nacional inclua esses códigos.
- O ValueSet `BRSexoNascimento` declara os displays "Feminino" e "Masculino" para os códigos de `administrative-gender`, cujos displays oficiais são "Female" e "Male". Os exemplos usam os displays do ValueSet nacional e acusam esse erro.
