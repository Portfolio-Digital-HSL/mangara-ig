# Exemplos - v0.1.0

* [**Table of Contents**](toc.md)
* **Exemplos**

## Exemplos

### Exemplos

#### Objetivo

Demonstrar instâncias válidas para apoiar implementação e testes.

#### Paciente Mangará

Todos os dados pessoais dos exemplos (nomes, CPF, CNS, contatos e endereço) são fictícios.

| | |
| :--- | :--- |
| [Paciente com nome social](Patient-paciente-portal-nome-social.md) | Nome social (`use = usual`), raça/cor e identidade de gênero. |
| [Paciente com CPF e CNS](Patient-paciente-cpf-cns.md) | CPF, CNS, sexo ao nascer, identidade de gênero e a mãe em`contact`. |
| [Indígena com aldeia](Patient-paciente-indigena-aldeia.md) | Povo indígena codificado e aldeia no endereço. |
| [Somente CNS](Patient-paciente-somente-cns.md) | Paciente sem CPF, identificado só pelo CNS. |
| [Estrangeiro](Patient-paciente-estrangeiro.md) | Estrangeiro com CNS, RNE/CRNM e passaporte. |
| [Desativado por duplicidade](Patient-paciente-desativado-duplicidade.md) | `active = false`com`link``replaced-by`para o cadastro que permanece. |

Os exemplos com identidade de gênero, sexo ao nascer ou RNE/CRNM acusam as divergências dos pacotes nacionais descritas em [Conformidade com o BR Core](StructureDefinition-patient-mangara.md#conformidade-com-o-br-core).

#### Boas práticas

* Manter exemplos coerentes com as cardinalidades dos perfis
* Usar valores terminológicos válidos
* Garantir que exemplos passem em validação

