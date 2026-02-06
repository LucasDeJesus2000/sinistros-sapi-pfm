%dw 2.0
output application/json indent=false
---
{
  "situacao": attributes.statusCode,
  "mensagem": "Operação realizada com sucesso",
  "dado": [ payload.status ],
  "idCorrelacao": correlationId,
  "dataHora": now()
}