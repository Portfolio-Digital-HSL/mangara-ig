<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile BRCorePatient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://ips.saude.gov.br/fhir/StructureDefinition/identidade-genero-br-ips']) &lt;= 1">extension with URL = 'https://ips.saude.gov.br/fhir/StructureDefinition/identidade-genero-br-ips': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://ips.saude.gov.br/fhir/StructureDefinition/raca-br-ips']) &lt;= 1">extension with URL = 'https://ips.saude.gov.br/fhir/StructureDefinition/raca-br-ips': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://ips.saude.gov.br/fhir/StructureDefinition/povo-indigena-br-ips']) &lt;= 1">extension with URL = 'https://ips.saude.gov.br/fhir/StructureDefinition/povo-indigena-br-ips': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://ips.saude.gov.br/fhir/StructureDefinition/sexo-nascimento-br-ips']) &lt;= 1">extension with URL = 'https://ips.saude.gov.br/fhir/StructureDefinition/sexo-nascimento-br-ips': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-populacaotradicional']) &lt;= 1">extension with URL = 'https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-populacaotradicional': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-povoitinerante']) &lt;= 1">extension with URL = 'https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-povoitinerante': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:contact) &lt;= 1">contact: maximum cardinality of 'contact' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name</sch:title>
    <sch:rule context="f:Patient/f:name">
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address</sch:title>
    <sch:rule context="f:Patient/f:address">
      <sch:assert test="count(f:extension[@url = 'https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-aldeia']) &lt;= 1">extension with URL = 'https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-aldeia': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-municipio']) &lt;= 1">extension with URL = 'https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-municipio': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:contact</sch:title>
    <sch:rule context="f:Patient/f:contact">
      <sch:assert test="count(f:relationship) &gt;= 1">relationship: minimum cardinality of 'relationship' is 1</sch:assert>
      <sch:assert test="count(f:relationship) &lt;= 1">relationship: maximum cardinality of 'relationship' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
