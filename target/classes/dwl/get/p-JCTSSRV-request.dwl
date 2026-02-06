%dw 2.0
output application/json indent=false
---

{
  "dataref": attributes.queryParams.dataReferencia  default "",
  "filial":	attributes.uriParams.'codigoFilial'  default ""

}
