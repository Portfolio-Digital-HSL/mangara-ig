#!/usr/bin/env bash
# Instala no cache FHIR local (~/.fhir/packages) os pacotes do Ministério da Saúde
# de que o guia depende e que não estão em registro público de pacotes.
#
# - br.gov.saude.br-core.fhir 1.7.1: gerado do definitions.json do BR Core. O
#   package.json foi ajustado para depender da terminologia 1.1.0, porque a 1.2.0
#   pedida pelo BR Core ainda não foi publicada.
# - br.gov.saude.ips.fhir 1.0.0: https://ips-brasil.web.app/package.tgz
# - br.gov.saude.terminologia.fhir 1.1.0: https://terminologia.saude.gov.br/fhir/package.tgz
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
CACHE="${FHIR_PACKAGE_CACHE:-$HOME/.fhir/packages}"
for tgz in "$DIR"/*.tgz; do
  nome="$(basename "$tgz" .tgz)"                       # br.gov.saude.ips.fhir-1.0.0
  pacote="${nome%-*}#${nome##*-}"                      # br.gov.saude.ips.fhir#1.0.0
  destino="$CACHE/$pacote"
  rm -rf "$destino"; mkdir -p "$destino"
  tar -xzf "$tgz" -C "$destino"
  echo "instalado $pacote"
done
