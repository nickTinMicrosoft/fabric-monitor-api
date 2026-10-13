# Fabric Monitor API

Azure offers many monitoring solutions. This repo is a curated collection of documentation links, not original content. Each solution area has its own page with a short summary and the relevant links.

Each link was fetched and checked (all return HTTP 200). Microsoft Fabric has its own monitoring surface, so it is listed first. The Azure Monitor pages are general Azure documentation and do not mention Fabric. They apply to Fabric only for Azure-side telemetry of Fabric capacities (`Microsoft.Fabric/capacities`).

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

- 23 links in total: 11 Fabric-specific, 1 partial (Power BI Admin Activity Events API) and 11 generic Azure Monitor.
