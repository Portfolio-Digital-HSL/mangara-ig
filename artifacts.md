# Artifacts Summary - v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Paciente Mangará](StructureDefinition-patient-mangara.md) | Paciente atendido no Mangará Digital. Especializa o BR Core Patient: exige CPF ou CNS, sexo administrativo e nome em texto; registra a identidade de gênero com o CodeSystem nacional BRIdentidadeGenero; e prevê a mãe como único contato. |
| [PractitionerRole Mangara](StructureDefinition-practitioner-role-mangara.md) | Perfil de PractitionerRole com extensão de duração da consulta em minutos. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Duração da consulta Mangara](StructureDefinition-duracao-consulta-mangara.md) | Duração da consulta expressa em quantidade UCUM em minutos. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Paciente com CPF e CNS](Patient-paciente-cpf-cns.md) | Paciente identificado por CPF e CNS, com sexo ao nascer, identidade de gênero, raça/cor e a mãe em contact. |
| [Paciente com nome social](Patient-paciente-portal-nome-social.md) | Paciente com nome civil e nome social (use = usual), raça/cor e identidade de gênero. |
| [Paciente desativado por duplicidade](Patient-paciente-desativado-duplicidade.md) | Registro duplicado desativado (active = false) com link replaced-by para o cadastro que permanece. |
| [Paciente estrangeiro](Patient-paciente-estrangeiro.md) | Paciente estrangeiro residente no Brasil, identificado pelo CNS, com RNE/CRNM e passaporte como documentos complementares. |
| [Paciente identificado só pelo CNS](Patient-paciente-somente-cns.md) | Paciente sem CPF, identificado apenas pelo CNS. |
| [Paciente indígena com aldeia](Patient-paciente-indigena-aldeia.md) | Paciente indígena com etnia (povo-indigena-br-ips) e aldeia (br-core-address-aldeia) codificadas. |

