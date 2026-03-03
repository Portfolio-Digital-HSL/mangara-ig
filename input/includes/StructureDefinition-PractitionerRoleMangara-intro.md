## Introdução do Perfil PractitionerRole

Este perfil descreve como o recurso `PractitionerRole` deve ser usado no contexto do projeto, com base no perfil pai definido no ecossistema nacional.

## O que a documentação de um perfil FHIR deve conter

### 1. Propósito e contexto

- Objetivo clínico/operacional do perfil
- Cenários de uso
- Sistemas que produzem/consomem o recurso

### 2. Base do perfil

- Recurso base FHIR (`ResourceType`)
- `Parent` utilizado
- Versão FHIR e pacote de dependência

### 3. Restrições estruturais

- Elementos obrigatórios (`mustSupport` e cardinalidade)
- Elementos proibidos/restritos
- Regras de slicing quando aplicável

### 4. Terminologias

- Value sets e code systems associados
- Tipo de binding (required/extensible/preferred/example)
- Regras de codificação local quando necessário

### 5. Extensões

- Extensões permitidas e contexto de uso
- Tipo de dado e cardinalidade de cada extensão
- Restrições adicionais (ex.: UCUM para unidades)

### 6. Invariantes e regras de negócio

- Regras formais (FHIRPath/invariants) quando houver
- Regras descritivas de validação

### 7. Exemplos

- Exemplo mínimo válido
- Exemplo completo com casos comuns
- Casos de borda relevantes

### 8. Conformidade e validação

- Como validar (ferramentas e pipeline)
- Critérios para aceite de conformidade
- Erros comuns de implementação

### 9. Versionamento e governança

- Política de evolução do perfil
- Registro de mudanças por versão
- Responsáveis pela manutenção e aprovação