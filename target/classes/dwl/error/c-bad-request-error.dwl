%dw 2.0
output application/json
---
if(!isEmpty(error.errorMessage.payload default []))
	error.errorMessage.payload
else
	errors:[{
		mensagem: "A solicitação é inválida.  Consulte a message de erro correspondente para mais detalhes",
		codigo: "400"
	}]