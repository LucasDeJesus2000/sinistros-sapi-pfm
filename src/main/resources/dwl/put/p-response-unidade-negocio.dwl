%dw 2.0
output application/json
---
{
  erros: [
    {
      codigo: "123456",
      mensagem: "examplo de erro"
    }
  ]
} as Object {encoding: "UTF-8", mediaType: "application/json"}