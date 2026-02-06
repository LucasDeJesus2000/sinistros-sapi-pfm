%dw 2.0
output application/json indent=false
---
{
  "situacao": attributes.statusCode,
  "mensagem": "Operação realizada com sucesso",
  "dado":[payload],
  "idCorrelacao": correlationId,
  "dataHora": now()
}