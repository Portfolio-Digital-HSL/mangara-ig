Instance: MG.AGENDA.T
InstanceOf: Questionnaire
Usage: #definition
Title: "Mangará Agendamento - Capítulo T (Endócrino/Metabólico/Nutricional)"
* url = "https://mangara.org.br/fhir/Questionnaire/MG.AGENDA.T"
* version = "0.1.0"
* name = "MG_AGENDA_T"
* title = "Mangará Agendamento - Capítulo T (Endócrino/Metabólico/Nutricional)"
* status = #draft
* language = #pt-BR
* subjectType = #Patient
* publisher = "Hospital Sírio-Libanês - Programa Mangará"
* description = "Triagem para agendamento de teleinterconsulta a partir do CIAP-2 do capítulo T."
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* extension[0].valueMarkdown = "Lógica: a pergunta de triagem (TNN.Question) aparece conforme o CIAP informado. Se SIM, segue para TNN.QuestionA. Pergunta B só aparece se A = NÃO; C só se B = NÃO. Resposta SIM em uma pergunta complementar encerra a triagem do CIAP e define o profissional (CBO). Se todas as complementares forem NÃO, vale o DESFECHO FINAL descrito na designNote da pergunta de triagem. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO."

* item[+].linkId = "T.A1.CIAP.DE2"
* item[=].text = "Código CIAP do motivo da solicitação"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://terminologia.saude.gov.br/fhir/ValueSet/BRCIAP2"
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Código CIAP-2 do motivo da solicitação (capítulo T). Define qual pergunta de triagem é exibida."

* item[+].linkId = "T01.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T01.Question#T01.Question "Sede excessiva"
* item[=].text = "Sede excessiva"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T01.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T01
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T01.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE; (2) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T02.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T02.Question#T02.Question "Apetite excessivo"
* item[=].text = "Apetite excessivo"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T02.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T02
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T02.SIM → segue para T02.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE; (2) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T02.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T02.QuestionA#T02.QuestionA "Sintoma de Apetite Excessivo já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Sintoma de Apetite Excessivo já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T02.QuestionA"
* item[=].enableWhen[+].question = "T02.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T02.Question#T02.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T02.Question = T02.SIM. Se T02.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T02. Se T02.A.NAO → desfecho final do T02. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T03.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T03.Question#T03.Question "Perda de apetite"
* item[=].text = "Perda de apetite"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T03.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T03
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T03.SIM → segue para T03.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE; (2) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T03.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T03.QuestionA#T03.QuestionA "Sintoma de Perda de Apetite já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Sintoma de Perda de Apetite já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T03.QuestionA"
* item[=].enableWhen[+].question = "T03.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T03.Question#T03.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T03.Question = T03.SIM. Se T03.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T03. Se T03.A.NAO → desfecho final do T03. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T04.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T04.Question#T04.Question "Problemas alimentares de lactente/criança"
* item[=].text = "Problemas alimentares de lactente/criança"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T04.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T04
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: <16 CIAP específico para criança e/ou adolescente. Se T04.SIM → segue para T04.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) PEDIATRIA — CBO 225124 MEDICO PEDIATRA; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Observação: Se: (1) PEDIATRIA ou (2) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T04.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T04.QuestionA#T04.QuestionA "Problema Alimentar de lactente/criança já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Problema Alimentar de lactente/criança já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T04.QuestionA"
* item[=].enableWhen[+].question = "T04.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T04.Question#T04.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T04.Question = T04.SIM. Se T04.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T04. Se T04.A.NAO → desfecho final do T04. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T05.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T05.Question#T05.Question "Problemas alimentares do adulto"
* item[=].text = "Problemas alimentares do adulto"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T05.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T05
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T05.SIM → segue para T05.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE; (2) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO. Observação: Se: (1) MEDICINA INTERNA ou (2) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T05.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T05.QuestionA#T05.QuestionA "Problema Alimentare do adulto já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Problema Alimentare do adulto já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T05.QuestionA"
* item[=].enableWhen[+].question = "T05.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T05.Question#T05.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T05.Question = T05.SIM. Se T05.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T05. Se T05.A.NAO → desfecho final do T05. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T07.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T07.Question#T07.Question "Aumento de peso"
* item[=].text = "Aumento de peso"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T07.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T07
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T07.SIM → segue para T07.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE; (2) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T07.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T07.QuestionA#T07.QuestionA "Aumento de peso já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Aumento de peso já avaliado e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T07.QuestionA"
* item[=].enableWhen[+].question = "T07.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T07.Question#T07.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T07.Question = T07.SIM. Se T07.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T07. Se T07.A.NAO → desfecho final do T07. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T08.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T08.Question#T08.Question "Perda de peso"
* item[=].text = "Perda de peso"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T08.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T08
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T08.SIM → segue para T08.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T08.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T08.QuestionA#T08.QuestionA "Perda involuntária de > 5% do peso corporal total em um período de 6 a 12 meses (ou perda superior a 10% em qualquer intervalo de tempo)?"
* item[=].text = "Perda involuntária de > 5% do peso corporal total em um período de 6 a 12 meses (ou perda superior a 10% em qualquer intervalo de tempo)?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T08.QuestionA"
* item[=].enableWhen[+].question = "T08.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T08.Question#T08.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T08.Question = T08.SIM. Se T08.A.SIM → agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO. Encerra a triagem do T08. Se T08.A.NAO → segue para T08.QuestionB. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T08.QuestionB"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T08.QuestionB#T08.QuestionB "Perda de peso aparenta ter relação com quadro de saúde mental/transtorno alimentar, síndrome demencial ou alguma questão clínica ainda não avaliada?"
* item[=].text = "Perda de peso aparenta ter relação com quadro de saúde mental/transtorno alimentar, síndrome demencial ou alguma questão clínica ainda não avaliada?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T08.QuestionB"
* item[=].enableWhen[+].question = "T08.QuestionA"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T08.QuestionA#T08.A.NAO
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T08.QuestionA = T08.A.NAO. Se T08.B.SIM → agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Encerra a triagem do T08. Se T08.B.NAO → desfecho final do T08. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T10.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T10.Question#T10.Question "Atraso do crescimento"
* item[=].text = "Atraso do crescimento"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T10.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T10
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: <16 CIAP específico para criança e/ou adolescente. Se T10.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) PEDIATRIA — CBO 225124 MEDICO PEDIATRA; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T11.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T11.Question#T11.Question "Desidratação"
* item[=].text = "Desidratação"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T11.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T11
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T11.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE; (2) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO. Alerta: Alerta de quadro com potencial para urgência/emergência para tratativa pertinente. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T26.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T26.Question#T26.Question "Medo de câncer do sistema endócrino"
* item[=].text = "Medo de câncer do sistema endócrino"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T26.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T26
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T26.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T27.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T27.Question#T27.Question "Medo de outra doença endócrina/metabólica"
* item[=].text = "Medo de outra doença endócrina/metabólica"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T27.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T27
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T27.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T70.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T70.Question#T70.Question "Infecção endócrina"
* item[=].text = "Infecção endócrina"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T70.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T70
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T70.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) INFECTOLOGIA — CBO 225103 MEDICO INFECTOLOGISTA. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T71.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T71.Question#T71.Question "Neoplasia maligna da tiróide"
* item[=].text = "Neoplasia maligna da tiróide"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T71.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T71
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T71.SIM → segue para T71.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. Observação: MFC - DUANE RODRIGUES BATISTA. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T71.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T71.QuestionA#T71.QuestionA "Trata-se neoplasia maligna da tireoide já avaliada e com necessidade de plano alimentar/suporte nutricional?"
* item[=].text = "Trata-se neoplasia maligna da tireoide já avaliada e com necessidade de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T71.QuestionA"
* item[=].enableWhen[+].question = "T71.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T71.Question#T71.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T71.Question = T71.SIM. Se T71.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T71. Se T71.A.NAO → segue para T71.QuestionB. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T71.QuestionB"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T71.QuestionB#T71.QuestionB "Trata-se neoplasia maligna da tireoide já avaliada com necessidade principal de reabilitação de fala ou deglutição?"
* item[=].text = "Trata-se neoplasia maligna da tireoide já avaliada com necessidade principal de reabilitação de fala ou deglutição?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T71.QuestionB"
* item[=].enableWhen[+].question = "T71.QuestionA"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T71.QuestionA#T71.A.NAO
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T71.QuestionA = T71.A.NAO. Se T71.B.SIM → agendar com (1) FONOAUDIOLOGIA — CBO 223810 FONOAUDIOLOGO. Encerra a triagem do T71. Se T71.B.NAO → segue para T71.QuestionC. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T71.QuestionC"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T71.QuestionC#T71.QuestionC "Trata-se neoplasia maligna da tireoide sem proposta curativa para discussão sobre cuidados paliativos?"
* item[=].text = "Trata-se neoplasia maligna da tireoide sem proposta curativa para discussão sobre cuidados paliativos?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T71.QuestionC"
* item[=].enableWhen[+].question = "T71.QuestionB"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T71.QuestionB#T71.B.NAO
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T71.QuestionB = T71.B.NAO. Se T71.C.SIM → agendar com (1) CUIDADOS PALIATIVOS — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Profissional indicado (Observações): MFC - DUANE RODRIGUES BATISTA. Encerra a triagem do T71. Se T71.C.NAO → desfecho final do T71. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T72.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T72.Question#T72.Question "Neoplasia benigna da tiróide"
* item[=].text = "Neoplasia benigna da tiróide"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T72.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T72
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T72.SIM → segue para T72.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T72.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T72.QuestionA#T72.QuestionA "Apoio na avaliação inicial de nódulo tireoideano (por exame físico ou exame de imagem), ainda sem confirmação histológica de subtipo (sem biópsia)?"
* item[=].text = "Apoio na avaliação inicial de nódulo tireoideano (por exame físico ou exame de imagem), ainda sem confirmação histológica de subtipo (sem biópsia)?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T72.QuestionA"
* item[=].enableWhen[+].question = "T72.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T72.Question#T72.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T72.Question = T72.SIM. Se T72.A.SIM → agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Encerra a triagem do T72. Se T72.A.NAO → desfecho final do T72. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T73.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T73.Question#T73.Question "Outra neoplasia endócrina NE"
* item[=].text = "Outra neoplasia endócrina NE"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T73.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T73
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T73.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T78.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T78.Question#T78.Question "Cisto do canal tiroglosso"
* item[=].text = "Cisto do canal tiroglosso"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T78.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T78
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T78.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T80.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T80.Question#T80.Question "Malformação congénita endócrina/metabólica"
* item[=].text = "Malformação congénita endócrina/metabólica"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T80.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T80
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T80.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T81.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T81.Question#T81.Question "Bócio"
* item[=].text = "Bócio"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T81.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T81
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T81.SIM → segue para T81.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T81.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T81.QuestionA#T81.QuestionA "Alguma das características: (i)TSH suprimido; (ii) Classificação TIRADS 4 ou 5; (iii) Bócio grande, sintomas compressivos ou crescimento progressivo?"
* item[=].text = "Alguma das características: (i)TSH suprimido; (ii) Classificação TIRADS 4 ou 5; (iii) Bócio grande, sintomas compressivos ou crescimento progressivo?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T81.QuestionA"
* item[=].enableWhen[+].question = "T81.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T81.Question#T81.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T81.Question = T81.SIM. Se T81.A.SIM → agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. Encerra a triagem do T81. Se T81.A.NAO → desfecho final do T81. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T82.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T82.Question#T82.Question "Obesidade"
* item[=].text = "Obesidade"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T82.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T82
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T82.SIM → segue para T82.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. Observação: Se: (1) ENDOCRINOLOGIA ou (2) MEDICINA INTERNA ou (3) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO; (2) FISIOTERAPIA. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T82.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T82.QuestionA#T82.QuestionA "Obesidade já avaliada e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Obesidade já avaliada e com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T82.QuestionA"
* item[=].enableWhen[+].question = "T82.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T82.Question#T82.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T82.Question = T82.SIM. Se T82.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T82. Se T82.A.NAO → segue para T82.QuestionB. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T82.QuestionB"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T82.QuestionB#T82.QuestionB "Obesidade grau I (IMC 30 - 34,9) ou grau II (IMC 35 - 39,9) sem comorbidades graves para início de acompanhamento?"
* item[=].text = "Obesidade grau I (IMC 30 - 34,9) ou grau II (IMC 35 - 39,9) sem comorbidades graves para início de acompanhamento?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T82.QuestionB"
* item[=].enableWhen[+].question = "T82.QuestionA"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T82.QuestionA#T82.A.NAO
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T82.QuestionA = T82.A.NAO. Se T82.B.SIM → agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE; (2) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO. Encerra a triagem do T82. Se T82.B.NAO → desfecho final do T82. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T83.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T83.Question#T83.Question "Excesso de peso"
* item[=].text = "Excesso de peso"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T83.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T83
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T83.SIM → segue para T83.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Observação: Se: (1) MEDICINA INTERNA ou (2) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO; (2) FISIOTERAPIA. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T83.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T83.QuestionA#T83.QuestionA "Excesso de peso com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Excesso de peso com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T83.QuestionA"
* item[=].enableWhen[+].question = "T83.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T83.Question#T83.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T83.Question = T83.SIM. Se T83.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T83. Se T83.A.NAO → desfecho final do T83. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T85.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T85.Question#T85.Question "Hipertiroidismo/tireotoxicose"
* item[=].text = "Hipertiroidismo/tireotoxicose"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T85.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T85
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T85.SIM → segue para T85.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA; (2) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T85.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T85.QuestionA#T85.QuestionA "Paciente assintomático com TSH baixo e T3/T4 livre normais?"
* item[=].text = "Paciente assintomático com TSH baixo e T3/T4 livre normais?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T85.QuestionA"
* item[=].enableWhen[+].question = "T85.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T85.Question#T85.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T85.Question = T85.SIM. Se T85.A.SIM → agendar com (1) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Encerra a triagem do T85. Se T85.A.NAO → desfecho final do T85. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T86.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T86.Question#T86.Question "Hipotiroidismo/mixedema"
* item[=].text = "Hipotiroidismo/mixedema"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T86.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T86
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T86.SIM → segue para T86.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T86.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T86.QuestionA#T86.QuestionA "Suspeita de hipotireoidismo central (TSH normal ou baixo e T4 livre ou total baixo) ou hipotireoidismo usando mais de 2,5 mcg/kg/dia de levotiroxina?"
* item[=].text = "Suspeita de hipotireoidismo central (TSH normal ou baixo e T4 livre ou total baixo) ou hipotireoidismo usando mais de 2,5 mcg/kg/dia de levotiroxina?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T86.QuestionA"
* item[=].enableWhen[+].question = "T86.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T86.Question#T86.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T86.Question = T86.SIM. Se T86.A.SIM → agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. Encerra a triagem do T86. Se T86.A.NAO → desfecho final do T86. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T87.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T87.Question#T87.Question "Hipoglicemia"
* item[=].text = "Hipoglicemia"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T87.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T87
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T87.SIM → segue para T87.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Observação: Se: (1) MEDICINA INTERNA ou (2) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO. Alerta: Alerta de quadro com potencial para urgência/emergência para tratativa pertinente. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T87.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T87.QuestionA#T87.QuestionA "Suspeita de hiperinsulinismo endógeno (tumor produtor de insulina, pós-cirúrgico, causa autoimune)?"
* item[=].text = "Suspeita de hiperinsulinismo endógeno (tumor produtor de insulina, pós-cirúrgico, causa autoimune)?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T87.QuestionA"
* item[=].enableWhen[+].question = "T87.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T87.Question#T87.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T87.Question = T87.SIM. Se T87.A.SIM → agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. Encerra a triagem do T87. Se T87.A.NAO → segue para T87.QuestionB. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T87.QuestionB"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T87.QuestionB#T87.QuestionB "Hipoglicemia avaliada que ocorre por erro de ingesta com necessidade de plano alimentar/suporte nutricional?"
* item[=].text = "Hipoglicemia avaliada que ocorre por erro de ingesta com necessidade de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T87.QuestionB"
* item[=].enableWhen[+].question = "T87.QuestionA"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T87.QuestionA#T87.A.NAO
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T87.QuestionA = T87.A.NAO. Se T87.B.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T87. Se T87.B.NAO → desfecho final do T87. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T89.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T89.Question#T89.Question "Diabetes insulino-dependente"
* item[=].text = "Diabetes insulino-dependente"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T89.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T89
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T89.SIM → segue para T89.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Observação: Se: (1) ENDOCRINOLOGIA ou (2) MEDICINA INTERNA ou (3) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T89.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T89.QuestionA#T89.QuestionA "Diabetes tipo 1 (ou incerteza do tipo), controle glicêmico alterado usando mais de 1U/Kg/dia de insulina (p.ex. 70kg usando 70U), doença renal com TFG <30?"
* item[=].text = "Diabetes tipo 1 (ou incerteza do tipo), controle glicêmico alterado usando mais de 1U/Kg/dia de insulina (p.ex. 70kg usando 70U), doença renal com TFG <30?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T89.QuestionA"
* item[=].enableWhen[+].question = "T89.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T89.Question#T89.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T89.Question = T89.SIM. Se T89.A.SIM → agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. Encerra a triagem do T89. Se T89.A.NAO → segue para T89.QuestionB. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T89.QuestionB"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T89.QuestionB#T89.QuestionB "Trata-se de Diabetes insulino-dependente com tratamento otimizado e necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Trata-se de Diabetes insulino-dependente com tratamento otimizado e necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T89.QuestionB"
* item[=].enableWhen[+].question = "T89.QuestionA"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T89.QuestionA#T89.A.NAO
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T89.QuestionA = T89.A.NAO. Se T89.B.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T89. Se T89.B.NAO → desfecho final do T89. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T90.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T90.Question#T90.Question "Diabetes não insulino-dependente"
* item[=].text = "Diabetes não insulino-dependente"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T90.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T90
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T90.SIM → segue para T90.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Observação: Se: (1) MEDICINA INTERNA ou (2) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T90.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T90.QuestionA#T90.QuestionA "Trata-se de Diabetes não insulino-dependente com tratamento otimizado e necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Trata-se de Diabetes não insulino-dependente com tratamento otimizado e necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T90.QuestionA"
* item[=].enableWhen[+].question = "T90.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T90.Question#T90.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T90.Question = T90.SIM. Se T90.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T90. Se T90.A.NAO → desfecho final do T90. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T91.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T91.Question#T91.Question "Deficiência vitamínica/nutricional"
* item[=].text = "Deficiência vitamínica/nutricional"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T91.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T91
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T91.SIM → segue para T91.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Observação: Se: (1) MEDICINA INTERNA ou (2) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T91.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T91.QuestionA#T91.QuestionA "Trata-se de Deficiência vitamínica/nutricional avaliada clinicamente, com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Trata-se de Deficiência vitamínica/nutricional avaliada clinicamente, com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T91.QuestionA"
* item[=].enableWhen[+].question = "T91.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T91.Question#T91.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T91.Question = T91.SIM. Se T91.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T91. Se T91.A.NAO → segue para T91.QuestionB. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T91.QuestionB"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T91.QuestionB#T91.QuestionB "Alguma das características: (i) pós-operatório de bariátrica ou cirurgia intestinal; (ii) doença gastrointesinal crônica (celíaca, Chron); (iii) sintomas neurológicos, cognitivos, visuais, ósseos?"
* item[=].text = "Alguma das características: (i) pós-operatório de bariátrica ou cirurgia intestinal; (ii) doença gastrointesinal crônica (celíaca, Chron); (iii) sintomas neurológicos, cognitivos, visuais, ósseos?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T91.QuestionB"
* item[=].enableWhen[+].question = "T91.QuestionA"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T91.QuestionA#T91.A.NAO
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T91.QuestionA = T91.A.NAO. Se T91.B.SIM → agendar com (1) ENDOCRINOLOGIA — CBO 225155 MEDICO ENDOCRINOLOGISTA E METABOLOGISTA. Encerra a triagem do T91. Se T91.B.NAO → desfecho final do T91. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T92.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T92.Question#T92.Question "Gota"
* item[=].text = "Gota"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T92.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T92
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T92.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Observação: Se: (1) MEDICINA INTERNA ou (2) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T93.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T93.Question#T93.Question "Alteração no metabolismo dos lípidos"
* item[=].text = "Alteração no metabolismo dos lípidos"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T93.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T93
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T93.SIM → segue para T93.QuestionA. DESFECHO FINAL (todas as perguntas complementares = NÃO): agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Observação: Se: (1) MEDICINA INTERNA ou (2) MFC -> sinalizar CUIDADO INTEGRADO com (1) NUTRIÇÃO. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T93.QuestionA"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T93.QuestionA#T93.QuestionA "Trata-se de Dislipidemia avaliada clinicamente, com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].text = "Trata-se de Dislipidemia avaliada clinicamente, com necessidade principal de plano alimentar/suporte nutricional?"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T93.QuestionA"
* item[=].enableWhen[+].question = "T93.Question"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://mangara.org.br/fhir/CodeSystem/T93.Question#T93.SIM
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Exibir se T93.Question = T93.SIM. Se T93.A.SIM → agendar com (1) NUTRIÇÃO — CBO 223710 NUTRICIONISTA. Encerra a triagem do T93. Se T93.A.NAO → desfecho final do T93. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"

* item[+].linkId = "T99.Question"
* item[=].code = https://mangara.org.br/fhir/CodeSystem/T99.Question#T99.Question "Outras doenças endocrinológica/metabólica/nutricionais"
* item[=].text = "Outras doenças endocrinológica/metabólica/nutricionais"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://mangara.org.br/fhir/ValueSet/T99.Question"
* item[=].enableWhen[+].question = "T.A1.CIAP.DE2"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCIAP2#T99
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item[=].extension[0].valueMarkdown = "Idade: >16. Se T99.SIM → desfecho final abaixo. DESFECHO FINAL: agendar com (1) MEDICINA INTERNA — CBO 225125 MEDICO CLINICO; (2) MFC — CBO 225130 MEDICO DE FAMILIA E COMUNIDADE. Alerta: Alerta de quadro com potencial para urgência/emergência para tratativa pertinente. CBO: https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO"
