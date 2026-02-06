%dw 2.0
import * from dw::util::Coercions
output application/json
---
{
    "DataHora": now(),
    "CID": correlationId,
    "Nome": "architecture-papi-template",
    "NomeFluxo": vars.run_point.flow,
    "NomeProcessoNegocio": "",
    "Categoria": "excecao",
    "AplicacaoOrigem": "",
    "AplicacaoDestino": "",
    "CodigoErroAplicacao": toString(error.errorType.identifier),
    "Severidade": "",
    "CodigoErro": vars.httpStatus,
    "DescricaoErro": error.detailedDescription,
    "Payload": vars.run_point.payload
}
