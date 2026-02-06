%dw 2.0
output application/json indent=false
---
{
  "FilOri": payload.codigoFilialOrigem default "",
  "Veiculo": payload.codigoVeiculo default "",
  "Numsol": payload.numeroSolicitacao default "",
  "Dados": payload.notasFiscais map((item,index) ->
  		{
      		"Chave": item.chaveNotaFiscal
    	}
  	
  ) 
}