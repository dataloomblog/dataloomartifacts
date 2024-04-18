Copy Data Activity

Source:
Data store type: Workspace
Workspace data store type: Warehouse
Warehouse: DemoWarehouse
Use Query: Table
Table: (Enter Manually) @activity('Lookup1').output.value[0].source_table_schema / @activity('Lookup1').output.value[0].source_table_name

Destination:
Data store type: Workspace
Workspace data store type: Warehouse
Warehouse: DemoWarehouse
Table Option: Auto create Table
Table: (Enter Manually) @activity('Lookup1').output.value[0].target_table_schema
/ @activity('Lookup1').output.value[0].target_table_name




JSON:

{
    "name": "Copy data1",
    "type": "Copy",
    "dependsOn": [
        {
            "activity": "Lookup1",
            "dependencyConditions": [
                "Succeeded"
            ]
        }
    ],
    "policy": {
        "timeout": "0.12:00:00",
        "retry": 0,
        "retryIntervalInSeconds": 30,
        "secureOutput": false,
        "secureInput": false
    },
    "typeProperties": {
        "source": {
            "type": "DataWarehouseSource",
            "queryTimeout": "02:00:00",
            "partitionOption": "None",
            "datasetSettings": {
                "annotations": [],
                "linkedService": {
                    "name": "DemoWarehouse",
                    "properties": {
                        "annotations": [],
                        "type": "DataWarehouse",
                        "typeProperties": {
                            "endpoint": "ybbmtbgcawwunakepy4krdkhpm-dhy7d3libiaelkxdvmtplsstie.datawarehouse.fabric.microsoft.com",
                            "artifactId": "65717d49-03bc-49a9-9734-c2ac40136ba3"
                        }
                    }
                },
                "type": "DataWarehouseTable",
                "schema": [],
                "typeProperties": {
                    "schema": {
                        "value": "@activity('Lookup1').output.value[0].source_table_schema\n",
                        "type": "Expression"
                    },
                    "table": {
                        "value": "@activity('Lookup1').output.value[0].source_table_name\n",
                        "type": "Expression"
                    }
                }
            }
        },
        "sink": {
            "type": "DataWarehouseSink",
            "allowCopyCommand": true,
            "tableOption": "autoCreate",
            "datasetSettings": {
                "annotations": [],
                "linkedService": {
                    "name": "DemoWarehouse",
                    "properties": {
                        "annotations": [],
                        "type": "DataWarehouse",
                        "typeProperties": {
                            "endpoint": "ybbmtbgcawwunakepy4krdkhpm-dhy7d3libiaelkxdvmtplsstie.datawarehouse.fabric.microsoft.com",
                            "artifactId": "65717d49-03bc-49a9-9734-c2ac40136ba3"
                        }
                    }
                },
                "type": "DataWarehouseTable",
                "schema": [],
                "typeProperties": {
                    "schema": {
                        "value": "@activity('Lookup1').output.value[0].target_table_schema\n",
                        "type": "Expression"
                    },
                    "table": {
                        "value": "@activity('Lookup1').output.value[0].target_table_name\n",
                        "type": "Expression"
                    }
                }
            }
        },
        "enableStaging": true,
        "translator": {
            "type": "TabularTranslator",
            "typeConversion": true,
            "typeConversionSettings": {
                "allowDataTruncation": true,
                "treatBooleanAsNumber": false
            }
        }
    }
}