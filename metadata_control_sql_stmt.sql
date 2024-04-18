SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[md_tables]
(
	[ID] [int]  NOT NULL,
    [integration_name] [varchar](100) NULL,
	[source_table_name] [varchar](100)  NULL,
	[source_table_schema] [varchar](100)  NULL,
	[source_connection] [varchar](100)  NULL,
	[source_connection_type] [varchar](255)  NULL,
	[source_database] [varchar](255)  NULL,
	[source_data_store_type] [varchar](255)  NULL,
	[source_workspace_data_store_type] [varchar](255)  NULL,
	[data_store] [varchar](255)  NULL,
	[source_root_folder] [varchar](255)  NULL,
	[use_query] [varchar](255)  NULL,
	[source_table_extraction_mode] [varchar](255)  NULL,
	[target_table_name] [varchar](255)  NULL,
    [target_data_store_type] [varchar](100)  NULL,
    [target_workspace_data_store_type] [varchar](100)  NULL,
    [target_root_folder] [varchar](100)  NULL,
	[target_table_alias] [varchar](100)  NULL,
	[target_table_schema] [varchar](100)  NULL,
	[target_connection_dataset] [varchar](100)  NULL,
	[target_connection_linked_service] [varchar](100)  NULL,
	[refresh_frequency] [varchar](255)  NULL,
	[landing_zone_enabled] [bit]  NULL,
	[bronze_layer_enabled] [bit]  NULL,
	[silver_layer_enabled] [bit]  NULL,
	[gold_layer_enabled] [bit]  NULL,
	[last_successful_load_time_landing] [datetime2](6)  NULL,
	[last_successful_load_time_bronze] [datetime2](6)  NULL,
	[last_successful_load_time_silver] [datetime2](6)  NULL,
	[last_successful_load_time_gold] [datetime2](6)  NULL,
	[comments] [varchar](100)  NULL,
	[target_file_system] [varchar](100)  NULL,
	[target_directory] [varchar](100)  NULL,
	[target_file_name] [varchar](100)  NULL,
	[target_lakehouse] [varchar](100)  NULL,
	[bronze_layer_file_system] [varchar](100)  NULL,
	[bronze_layer_directory] [varchar](100)  NULL,
	[silver_layer_file_system] [varchar](100)  NULL,
	[silver_layer_directory] [varchar](100)  NULL,
	[bronze_layer_lakehouse] [varchar](100)  NULL,
	[silver_layer_lakehouse] [varchar](100)  NULL
)
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

INSERT INTO dbo.md_tables
(
	ID,
    integration_name,
	source_table_name,
	source_table_schema,
	source_connection,
	source_connection_type,
	source_database,
	source_data_store_type,
	source_workspace_data_store_type,
	data_store,
	source_root_folder,
	use_query,
	source_table_extraction_mode,
	target_table_name,
	target_data_store_type,
	target_workspace_data_store_type,
	target_root_folder,
	target_table_alias,
	target_table_schema,
	target_connection_dataset,
	target_connection_linked_service,
	refresh_frequency,
	landing_zone_enabled,
	bronze_layer_enabled,
	silver_layer_enabled,
	gold_layer_enabled,
	last_successful_load_time_landing,
	last_successful_load_time_bronze,
	last_successful_load_time_silver,
	last_successful_load_time_gold,
	comments,
	target_file_system,
	target_directory,
	target_file_name,
	target_lakehouse,
	bronze_layer_file_system,
	bronze_layer_directory,
	silver_layer_file_system,
	silver_layer_directory,
	bronze_layer_lakehouse,
	silver_layer_lakehouse
)
VALUES
(6, 'IntProduct', 'ProductDescription', 'dbo', 'local-azure-sql-sample-data-connection', 'Azure SQL Database', 'eus-azure-sql-db-sample-data', 'External', '', '', '', 'Table', 'Full', 'NewTableFromDemo', 'Workspace', 'Lakehouse', 'Tables', 'ProductDescription', 'SalesLT', '', '', '', 1, 1, 1, 1, '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '', '', '', '', 'TargetLakehouse', 'BronzeFileSystem', 'BronzeDirectory', 'SilverFileSystem', 'SilverDirectory', 'BronzeLakehouse', 'SilverLakehouse'),
(7, 'IntProduct', 'ProductModel', 'dbo', 'local-azure-sql-sample-data-connection', 'Azure SQL Database', 'eus-azure-sql-db-sample-data', 'External', '', '', '', 'Table', 'Full', 'ProductModel', 'Workspace', 'Lakehouse', 'Tables', 'ProductModel', 'SalesLT', '', '', '', 1, 1, 1, 1, '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '', '', '', '', 'TargetLakehouse', 'BronzeFileSystem', 'BronzeDirectory', 'SilverFileSystem', 'SilverDirectory', 'BronzeLakehouse', 'SilverLakehouse'),
(8, 'IntProduct', 'ProductModelProductDescription', 'dbo', 'local-azure-sql-sample-data-connection', 'Azure SQL Database', 'eus-azure-sql-db-sample-data', 'External', '', '', '', 'Table', 'Full', 'ProductModelProductDescription', 'Workspace', 'Lakehouse', 'ProductModelProductDescription', 'Address', 'SalesLT', '', '', '', 1, 1, 1, 1, '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '', '', '', '', 'TargetLakehouse', 'BronzeFileSystem', 'BronzeDirectory', 'SilverFileSystem', 'SilverDirectory', 'BronzeLakehouse', 'SilverLakehouse'),
(9, 'IntSales', 'SalesOrderDetail', 'dbo', 'local-azure-sql-sample-data-connection', 'Azure SQL Database', 'eus-azure-sql-db-sample-data', 'External', '', '', '', 'Table', 'Full', 'SalesOrderDetail', 'Workspace', 'Lakehouse', 'Tables', 'SalesOrderDetail', 'SalesLT', '', '', '', 1, 1, 1, 1, '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '', '', '', '', 'TargetLakehouse', 'BronzeFileSystem', 'BronzeDirectory', 'SilverFileSystem', 'SilverDirectory', 'BronzeLakehouse', 'SilverLakehouse'),
(10, 'IntSales', 'SalesOrderHeader', 'dbo', 'local-azure-sql-sample-data-connection', 'Azure SQL Database', 'eus-azure-sql-db-sample-data', 'External', '', '', '', 'Table', 'Full', 'SalesOrderHeader', 'Workspace', 'Lakehouse', 'Tables', 'SalesOrderHeader', 'SalesLT', '', '', '', 1, 1, 1, 1, '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '1999-01-01T00:00:00', '', '', '', '', 'TargetLakehouse', 'BronzeFileSystem', 'BronzeDirectory', 'SilverFileSystem', 'SilverDirectory', 'BronzeLakehouse', 'SilverLakehouse')

CREATE TABLE dbo.SalesOrderHeader
(
    OrderID INT,
    CustomerID INT,
    OrderDate DATETIME2(6),
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(50),
    SalesPersonID INT
);
GO

INSERT INTO SalesOrderHeader (OrderID, CustomerID, OrderDate, TotalAmount, Status, SalesPersonID)
VALUES
(1, 101, '2024-01-15 14:25:00', 150.00, 'Completed', 501),
(2, 102, '2024-02-20 09:42:00', 200.50, 'Pending', 502),
(3, 103, '2024-03-25 16:15:00', 980.00, 'Completed', 503),
(4, 104, '2024-04-10 10:30:00', 450.75, 'Shipped', 504),
(5, 105, '2024-04-12 12:07:00', 120.00, 'Cancelled', 505);
GO

CREATE TABLE dbo.SalesOrderDetail
(
    DetailID INT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    LineTotal DECIMAL(10, 2)
);
GO

INSERT INTO dbo.SalesOrderDetail (DetailID, OrderID, ProductID, Quantity, UnitPrice, LineTotal)
VALUES
(1, 1, 1001, 2, 50.00, 100.00),
(2, 1, 1002, 1, 50.00, 50.00),
(3, 2, 1003, 1, 200.50, 200.50),
(4, 3, 1004, 10, 98.00, 980.00),
(5, 4, 1005, 5, 90.15, 450.75),
(6, 4, 1006, 1, 90.15, 90.15),
(7, 5, 1007, 2, 60.00, 120.00);
GO

CREATE TABLE dbo.ProductModel
(
    ModelID INT,
    Name VARCHAR(255),
    Description VARCHAR(255),
    Category VARCHAR(100)
);
GO

INSERT INTO dbo.ProductModel (ModelID, Name, Description, Category)
VALUES
(1001, 'Road-150', 'High-end racing bike.', 'Bicycles'),
(1002, 'Mountain-100', 'Heavy duty mountain bike designed for rugged terrain.', 'Bicycles'),
(1003, 'Touring-3000', 'Touring bike suitable for long-distance travel.', 'Bicycles'),
(1004, 'Road-750', 'Mid-range road bike with excellent performance.', 'Bicycles'),
(1005, 'Hybrid-500', 'Perfect blend of road and mountain bike features.', 'Bicycles');
GO

CREATE TABLE dbo.ProductDescription
(
    DescriptionID INT,
    Description VARCHAR(255),
    LanguageCode CHAR(2)
);
GO

INSERT INTO dbo.ProductDescription (DescriptionID, Description, LanguageCode)
VALUES
(1, 'This high-end racing bike delivers uncompromised performance.', 'EN'),
(2, 'Built for the toughest terrains, our mountain bike is both durable and comfortable.', 'EN'),
(3, 'Designed for long distances, this touring bike offers a smooth and reliable ride.', 'EN'),
(4, 'A versatile road bike that combines speed and comfort for everyday use.', 'EN'),
(5, 'Ideal for city commuting or off-road adventures, this hybrid bike adapts to your needs.', 'EN');
GO

CREATE TABLE dbo.ProductModelProductDescription
(
    ModelID INT,
    DescriptionID INT,
    DateAdded DATETIME2(6)
);
GO

INSERT INTO dbo.ProductModelProductDescription (ModelID, DescriptionID, DateAdded)
VALUES
(1001, 1, '2024-04-01 10:00:00'),
(1002, 2, '2024-04-01 10:00:00'),
(1003, 3, '2024-04-01 10:00:00'),
(1004, 4, '2024-04-01 10:00:00'),
(1005, 5, '2024-04-01 10:00:00'),
(1005, 1, '2024-04-02 10:00:00');
GO