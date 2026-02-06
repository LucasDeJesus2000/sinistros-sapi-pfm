%dw 2.0
output application/json indent=false
---
{
  "chavedanfe": payload.chaveNotaFiscal default "",
  "endereco": payload.endereco default "",
  "complemento": payload.complemento default "",
  "bairro": payload.bairro default "",
  "municipio": payload.municipio default "",
  "uf": payload.uf default "",
  "cep": payload.cep default "",
  "enderecoDestino": payload.enderecoDestino default true
}