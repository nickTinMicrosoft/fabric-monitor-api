# Microsoft Fabric Monitoring

[Home](../README.md)

For starting and coordinating data workloads, see [Fabric API - ETL Orchestration](fabric-api-etl-orchestration.md). The references below focus on monitoring.

## Summary

Fabric has its own monitoring surface, separate from Azure Monitor. It covers capacity health and consumption, tenant and workspace activity, item operations through the Fabric REST API, and OneLake storage. Use these links first when the question is about Fabric itself.

Most of these are Fabric-specific. The Capacities API is an Azure Resource Manager API for the `Microsoft.Fabric/capacities` resource. The Admin Activity Events API belongs to the Power BI API family and also returns Fabric activity.

| Area | Link | Notes |
|------|------|-------|
| Microsoft Fabric REST API docs | https://learn.microsoft.com/en-us/rest/api/fabric/articles/ | Entry point for the Fabric APIs |
| Using Microsoft Fabric REST APIs | https://learn.microsoft.com/en-us/rest/api/fabric/articles/get-started/using-fabric-apis | Getting started |
| Fabric API scopes | https://learn.microsoft.com/en-us/rest/api/fabric/articles/scopes | Authentication and permission scopes |
| Fabric API throttling | https://learn.microsoft.com/en-us/rest/api/fabric/articles/throttling | Rate limits |
| Fabric API pagination | https://learn.microsoft.com/en-us/rest/api/fabric/articles/pagination | Paging results |
| Fabric API long-running operations | https://learn.microsoft.com/en-us/rest/api/fabric/articles/long-running-operation | Polling async operations |
| Fabric Capacities REST API | https://learn.microsoft.com/en-us/rest/api/microsoftfabric/fabric-capacities?view=rest-microsoftfabric-2023-11-01 | ARM API for capacity resources |
| Fabric Capacity Metrics app | https://learn.microsoft.com/en-us/fabric/enterprise/metrics-app | Capacity utilization and throttling |
| Fabric admin monitoring workspace | https://learn.microsoft.com/en-us/fabric/admin/monitoring-workspace | Tenant-level usage reports |
| Track user activities in Fabric | https://learn.microsoft.com/en-us/fabric/admin/track-user-activities | Audit and activity tracking |
| Power BI/Fabric Admin Activity Events API | https://learn.microsoft.com/en-us/rest/api/power-bi/admin/get-activity-events | Power BI API that also covers Fabric (partial) |
| OneLake overview, including diagnostics | https://learn.microsoft.com/en-us/fabric/onelake/onelake-overview | Storage overview; diagnostics is a subtopic |
