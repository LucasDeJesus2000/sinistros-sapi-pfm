%dw 2.0

output application/json 
---
{
    "DataHora": now(),
    "CID": correlationId,
    "Nome": "Nome da API",
    "NomeFluxo": "Nome do Fluxo",
    "NomeProcessoNegocio": "Nome do Processo de negócio",
    "Categoria": "padrao",
    "Etapa": "Fim",
    "AplicacaoOrigem": "Aplicacao de origem",
    "AplicacaoDestino": " Aplicacao de destino"
}