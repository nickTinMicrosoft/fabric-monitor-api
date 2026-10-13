# Fabric Monitor API

A curated list of links and subjects for monitoring Microsoft Fabric via APIs.

Each link was fetched and checked (all return HTTP 200). The **Fabric-specific?** column shows whether the page itself is about Fabric:

- **Yes** – a Fabric page.
- **Partial** – the page is not Fabric-branded (Power BI API), but the API covers Fabric activity.
- **No (generic)** – general Azure Monitor documentation. It applies only to Azure resources such as a Fabric capacity (`Microsoft.Fabric/capacities`) when diagnostic settings or logs are routed to Azure Monitor. These pages do not mention Fabric.

| Area | Link | Fabric-specific? |
|------|------|------------------|
| Azure Monitor REST API reference | https://learn.microsoft.com/en-us/rest/api/monitor/ | No (generic) |
| Azure Monitor REST API index | https://learn.microsoft.com/en-us/azure/azure-monitor/fundamentals/azure-monitor-rest-api-index | No (generic) |
| Azure Monitor Logs Query API overview | https://learn.microsoft.com/en-us/azure/azure-monitor/logs/api/overview | No (generic) |
| Log Analytics REST APIs | https://learn.microsoft.com/en-us/rest/api/loganalytics/ | No (generic) |
| Logs Ingestion API | https://learn.microsoft.com/en-us/azure/azure-monitor/logs/logs-ingestion-api-overview | No (generic) |
| Azure Monitor metrics API | https://learn.microsoft.com/en-us/rest/api/monitor/metrics/list | No (generic) |
| Azure Monitor metric definitions API | https://learn.microsoft.com/en-us/rest/api/monitor/metric-definitions/list | No (generic) |
| Azure Monitor activity logs API | https://learn.microsoft.com/en-us/rest/api/monitor/activity-logs/list | No (generic) |
| Azure Monitor diagnostic settings API | https://learn.microsoft.com/en-us/rest/api/monitor/diagnostic-settings | No (generic) |
| Azure Monitor scheduled query rules / log alerts | https://learn.microsoft.com/en-us/rest/api/monitor/scheduled-query-rules | No (generic) |
| Azure Monitor action groups | https://learn.microsoft.com/en-us/rest/api/monitor/action-groups | No (generic) |
| Microsoft Fabric REST API docs | https://learn.microsoft.com/en-us/rest/api/fabric/articles/ | Yes |
| Using Microsoft Fabric REST APIs | https://learn.microsoft.com/en-us/rest/api/fabric/articles/get-started/using-fabric-apis | Yes |
| Fabric API scopes | https://learn.microsoft.com/en-us/rest/api/fabric/articles/scopes | Yes |
| Fabric API throttling | https://learn.microsoft.com/en-us/rest/api/fabric/articles/throttling | Yes |
| Fabric API pagination | https://learn.microsoft.com/en-us/rest/api/fabric/articles/pagination | Yes |
| Fabric API long-running operations | https://learn.microsoft.com/en-us/rest/api/fabric/articles/long-running-operation | Yes |
| Fabric Capacities REST API | https://learn.microsoft.com/en-us/rest/api/microsoftfabric/fabric-capacities?view=rest-microsoftfabric-2023-11-01 | Yes (ARM resource provider) |
| Fabric Capacity Metrics app | https://learn.microsoft.com/en-us/fabric/enterprise/metrics-app | Yes |
| Fabric admin monitoring workspace | https://learn.microsoft.com/en-us/fabric/admin/monitoring-workspace | Yes |
| Track user activities in Fabric | https://learn.microsoft.com/en-us/fabric/admin/track-user-activities | Yes |
| Power BI/Fabric Admin Activity Events API | https://learn.microsoft.com/en-us/rest/api/power-bi/admin/get-activity-events | Partial (Power BI API) |
| OneLake overview, including diagnostics | https://learn.microsoft.com/en-us/fabric/onelake/onelake-overview | Yes (overview; diagnostics is a subtopic) |

## Summary

- 11 of 23 links are Fabric-specific, 1 is partial and 11 are generic Azure Monitor.
- The 11 generic Azure Monitor links came from a broad monitoring search. They are useful only for Azure-side telemetry of Fabric capacities, not for Fabric workspace or item monitoring.
