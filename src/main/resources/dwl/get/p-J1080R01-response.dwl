%dw 2.0
output application/json indent=false
---
{
  "situacao": attributes.statusCode,
  "mensagem": "Operação realizada com sucesso",
  "dado": payload map((item,index)->
		{
		    "nomeSolicitante": item."Nome" default "" ,
		    "horaInicial": item."Hora_Inicial" default "" ,
		    "horaFinal": item."Hora_Final" default "" ,
		    "enderecoSolicitante": item."Endereco" default "" ,
		    "bairroSolicitante": item."Bairro" default "" ,
		    "municipioSolicitante": item."Municipio" default "" ,
		    "quantidadeVolume": item."Qtd_Vol" default "" ,
		    "peso": item."Peso" default "" ,
		    "numeroSolicitacao": item."Numero_Sol" default "" ,
		    "dataSolicitacao": item."Data_Sol" default "" ,
		    "horaSolicitacao": item."Hora_Sol" default "" ,
		    "descricaoProduto": item."Produto_Descricao" default "" ,
		    "sequenciaEndereco": item."Seq_Endereco" default "" ,
		    "filialOrigem": item."Filial_Ori" default "" ,
		    "numeroViagem": item."Num_Viagem" default "" ,
		    "filialDocumento": item."FilDoc" default "" ,
		    "dddTelefone": item."DDD" default "" ,
		    "numeroTelefone": item."Tel" default "" ,
		    "contato": item."Contato" default "" ,
		    "observacao": item."Obs" default "" ,
		    "nomeDestinatario": item."Destinatario" default "" ,
		    "prazoColeta": item."Prazo_Coleta" default "" ,
		    "enderecoDestinatario": item."Endereco_Destinatario" default "" ,
		    "cnpjDestinatario": item."CNPJ_Destinatario" default "" ,
		    "modal": item."modal" default "" ,
		    "idColeta": item."IDCOLETA" default "" 	 
		 }  	
  ),
  "idCorrelacao": correlationId,
  "dataHora": now()
}