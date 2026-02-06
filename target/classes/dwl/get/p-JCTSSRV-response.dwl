%dw 2.0
output application/json indent = false
---
{
	"situacao": attributes.statusCode,
	"mensagem": "Operação realizada com sucesso",
	"dado": payload."Servicos" map((item,index)->
  		{
			"tipoServico": item."Tipo"  default "",
			"quantidadeTotal": item."Qtd" default "",
			"situacaoViagem": item."Status_Viagem" default "",
			"quantidadeRealizada": item."Qtd_Relz" default "",
			"quantidadeNaoRealizada": item."Qtd_Nao_Relz" default ""
		}  	
  	),
	"idCorrelacao": correlationId,
	"dataHora": now()
}