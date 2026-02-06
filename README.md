# 🚀 PFM Porto - MuleSoft Architecture Training
### Auto Claims Ingestion System (Sistema de Ingestão de Sinistros)

![MuleSoft](https://img.shields.io/badge/MuleSoft-Anypoint_Platform-blue?style=for-the-badge&logo=mulesoft)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)
![License](https://img.shields.io/badge/Course-Porto_Seguros-orange?style=for-the-badge)

Este repositório contém o código-fonte, especificações de API (RAML) e scripts de infraestrutura desenvolvidos durante o treinamento técnico **PFM Porto**.

O projeto simula uma **System API** robusta para o ecossistema de Seguros Auto, demonstrando a transição de uma arquitetura legada (Ponto-a-Ponto) para uma arquitetura moderna baseada em **API-led Connectivity** e **Event-Driven Architecture (EDA)**.

---

## 🏗️ Arquitetura da Solução

O sistema adota uma arquitetura **Híbrida (Síncrona/Assíncrona)** para garantir alta disponibilidade na ingestão e consistência imediata na gestão do ciclo de vida do sinistro.

### Diagrama de Fluxo (V2)

```mermaid
graph TD
    User((App Cliente))
    S3[Object Storage\nAWS S3/Azure]
    
    subgraph "MuleSoft - System API"
        API[Sinistros SAPI]
    end
    
    subgraph "Backend Core"
        DB[(MySQL\nSystem of Record)]
        Kafka{{Confluent Kafka\nEvent Broker}}
    end

    %% Fluxo de Ingestão
    User -- "1. POST /sinistros (JSON)" --> API
    API -- "2. Insert (Sync)" --> DB
    API -- "3. Publish Event (Async)" --> Kafka
    
    %% Fluxo de Evidências
    User -- "4. Upload Foto" --> S3
    S3 -.-> |URL Assinada| User
    User -- "5. POST /evidencias (URLs)" --> API
    API -- "6. Bulk Insert" --> DB
    
    %% Fluxo de Consulta
    User -- "7. GET Status" --> API
    API -- "8. Select" --> DB
