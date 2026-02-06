%dw 2.0
output application/json indent=false
---
{
  "situacao": attributes.statusCode,
  "mensagem": "Operação realizada com sucesso",
  "dado": payload map((item,index)->
	   {
        		 codigoOcorrencia: item."Codigo" default "",
        		 descricaoOcorrencia: item."Descricao" default "",
        		 nomeUsuario: item."User" default "",
        		 tipoServico: item."Tipo" default ""
    	 }
  ),
  "idCorrelacao": correlationId,
  "dataHora": now()
}