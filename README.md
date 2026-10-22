# Fabric Monitor API

This repo is a curated library of documentation links for Fabric monitoring, Fabric API orchestration, and Azure monitoring. Each solution area has its own page with short summaries and relevant references. The linked product documentation is authoritative; integration sketches are illustrative, not tested deployments.

External documentation links were fetched and checked (HTTP 200 after redirects). Microsoft Fabric has its own monitoring surface, so it is listed first. The Azure Monitor pages are general Azure documentation and do not mention Fabric. They apply to Fabric only for Azure-side telemetry of Fabric capacities (`Microsoft.Fabric/capacities`).

## Fabric API - ETL Orchestration

[Open the Airflow, dbt, and Fabric orchestration reference library](docs/fabric-api-etl-orchestration.md).

Start here to build an external Airflow workflow that starts Fabric ingestion, monitors job completion, runs dbt against Warehouse or Lakehouse/Spark, and handles failure. Includes authentication, execution APIs, Airflow operators, dbt adapters, CI/CD references, and the alternative Fabric-owned orchestration pattern.

### Two-slide architecture deck

[PowerPoint](assets/Fabric-External-Orchestration-Architecture.pptx) | [PDF](assets/Fabric-External-Orchestration-Architecture.pdf)

The PowerPoint contains two generic, customer-neutral diagrams with original illustrated icons, editable connections, clickable documentation links, and presenter notes. The PDF is a static sharing copy.

| Slide | Architecture | Preview |
|-------|--------------|---------|
| 1 | Externally hosted Airflow/dbt coordinates Fabric ingestion and transformations | [View slide](assets/architecture-previews/slide-01.png) |
| 2 | Fabric pipelines start and monitor an externally hosted dbt job service | [View slide](assets/architecture-previews/slide-02.png) |

The diagrams show architectural patterns, not a deployed integration. A dbt Core installation requires a hosting/job-service API before Fabric can launch it remotely.

## Monitoring solutions

| # | Solution | What it covers | Fabric-specific? |
|---|----------|----------------|------------------|
| 1 | [Microsoft Fabric](docs/fabric.md) | Fabric REST API, capacities, Capacity Metrics app, admin monitoring workspace, user activity, OneLake | Yes (one partial link) |
| 2 | [Azure Monitor (platform overview)](docs/azure-monitor.md) | REST API reference and index | No (generic) |
| 3 | [Azure Monitor Metrics](docs/azure-monitor-metrics.md) | Metrics and metric definitions APIs | No (generic) |
| 4 | [Azure Monitor Logs and Log Analytics](docs/azure-monitor-logs.md) | Logs Query, Log Analytics and Logs Ingestion APIs | No (generic) |
| 5 | [Activity Logs and Diagnostic Settings](docs/azure-activity-and-diagnostics.md) | Control-plane events and log/metric routing | No (generic) |
| 6 | [Alerts and Action Groups](docs/azure-monitor-alerts.md) | Scheduled query rules (log alerts) and notifications | No (generic) |

## Link check summary

- Monitoring catalog: 23 reference links, including 11 Fabric-specific, 1 partial (Power BI Admin Activity Events API), and 11 generic Azure Monitor.
- The complete library contains 56 unique external reference URLs, including the separate orchestration catalog's Microsoft, Apache Airflow, and dbt references. Links were checked on October 22, 2026; redirected documentation URLs are followed.

## Rebuild the architecture deck

With `python-pptx` and `Pillow` available (dependencies listed in `tools/requirements.txt`):

```powershell
python .\tools\build_architecture_deck.py
.\tools\render_architecture_deck.ps1
```

The first command generates the PowerPoint and original icon images. The second requires Windows with Microsoft PowerPoint installed and exports the PDF and slide previews while checking text fit. It opens the generated deck read-only, closes only that presentation, and does not quit PowerPoint or close user-owned presentations.
