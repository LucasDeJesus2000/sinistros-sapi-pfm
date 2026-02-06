%dw 2.0
output application/json indent=false
---
{
  "situacao": attributes.statusCode,
  "mensagem": "Operação realizada com sucesso",
  "dado": [{
  		"previsao": payload.previsao
	}],
  "idCorrelacao": correlationId,
  "dataHora": now()
}