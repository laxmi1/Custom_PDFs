--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';



DROP DATABASE IF EXISTS legacy_cyrious_control_development;


CREATE DATABASE  legacy_cyrious_control_development;

\c legacy_cyrious_control_development;


-- Table structure for table 'TransDetail'
--

DROP TABLE IF EXISTS "TransDetail";

CREATE TABLE "TransDetail" (
  "ID" double precision DEFAULT NULL,
  "StoreID" double precision DEFAULT NULL,
  "ClassTypeID" double precision DEFAULT NULL,
  "ModifiedByUser" character varying(255) DEFAULT NULL,
  "ModifiedByComputer" character varying(255) DEFAULT NULL,
  "ModifiedDate" timestamp without time zone DEFAULT NULL,
  "SeqID" double precision DEFAULT NULL,
  "IsSystem" smallint DEFAULT 0,
  "IsActive" smallint DEFAULT 0,
  "TransactionType" double precision DEFAULT NULL,
  "ParentID" double precision DEFAULT NULL,
  "ParentClassTypeID" double precision DEFAULT NULL,
  "TransHeaderID" double precision DEFAULT NULL,
  "TransHeaderClassTypeID" double precision DEFAULT NULL,
  "TransHeaderTransNumber" double precision DEFAULT NULL,
  "GoodsItemID" double precision DEFAULT NULL,
  "GoodsItemClassTypeID" double precision DEFAULT NULL,
  "GoodsItemCode" character varying(255) DEFAULT NULL,
  "PricingLevel" double precision DEFAULT NULL,
  "PricingLevelOverridden" smallint DEFAULT 0,
  "DiscountLevel" double precision DEFAULT NULL,
  "DiscountLevelOverridden" smallint DEFAULT 0,
  "Description" character varying(255) DEFAULT NULL,
  "Quantity" double precision DEFAULT NULL,
  "LineItemIndex" double precision DEFAULT NULL,
  "LineItemNumber" character varying(255) DEFAULT NULL,
  "HTMLShortFormat" text,
  "HTMLLongFormat" text,
  "BasePrice" double precision DEFAULT NULL,
  "BaseCalcPrice" double precision DEFAULT NULL,
  "BaseOverriddenPrice" double precision DEFAULT NULL,
  "BaseIsOverridden" smallint DEFAULT 0,
  "DiscountPrice" double precision DEFAULT NULL,
  "DiscountCalcPrice" double precision DEFAULT NULL,
  "DiscountOverriddenPrice" double precision DEFAULT NULL,
  "DiscountIsOverridden" smallint DEFAULT 0,
  "ModifierPrice" double precision DEFAULT NULL,
  "ModifierCalcPrice" double precision DEFAULT NULL,
  "ModifierOverriddenPrice" double precision DEFAULT NULL,
  "ModifierIsOverridden" smallint DEFAULT 0,
  "RawSubTotalPrice" double precision DEFAULT NULL,
  "RawSubTotalCalcPrice" double precision DEFAULT NULL,
  "RawSubTotalOverriddenPrice" double precision DEFAULT NULL,
  "RawSubTotalIsOverridden" smallint DEFAULT 0,
  "RoundingPrice" double precision DEFAULT NULL,
  "RoundingCalcPrice" double precision DEFAULT NULL,
  "RoundingOverriddenPrice" double precision DEFAULT NULL,
  "RoundingIsOverridden" smallint DEFAULT 0,
  "SubTotalPrice" double precision DEFAULT NULL,
  "SubTotalCalcPrice" double precision DEFAULT NULL,
  "SubTotalOverriddenPrice" double precision DEFAULT NULL,
  "SubTotalIsOverridden" smallint DEFAULT 0,
  "TaxesPrice" double precision DEFAULT NULL,
  "TaxesCalcPrice" double precision DEFAULT NULL,
  "TaxesOverriddenPrice" double precision DEFAULT NULL,
  "TaxesIsOverridden" smallint DEFAULT 0,
  "TotalPrice" double precision DEFAULT NULL,
  "TotalCalcPrice" double precision DEFAULT NULL,
  "TotalOverriddenPrice" double precision DEFAULT NULL,
  "TotalIsOverridden" smallint DEFAULT 0,
  "MeAndSonsBasePrice" double precision DEFAULT NULL,
  "MeAndSonsDiscountPrice" double precision DEFAULT NULL,
  "MeAndSonsModifierPrice" double precision DEFAULT NULL,
  "MeAndSonsRawSubTotalPrice" double precision DEFAULT NULL,
  "MeAndSonsRoundingPrice" double precision DEFAULT NULL,
  "MeAndSonsSubTotalPrice" double precision DEFAULT NULL,
  "MeAndSonsTaxesPrice" double precision DEFAULT NULL,
  "MeAndSonsTotalPrice" double precision DEFAULT NULL,
  "InternalNotes" character varying(255) DEFAULT NULL,
  "UnitParamName" character varying(255) DEFAULT NULL,
  "UnitParamValue" double precision DEFAULT NULL,
  "VariationID" double precision DEFAULT NULL,
  "ImageParamID" character varying(255) DEFAULT NULL,
  "ImageParamStoreID" character varying(255) DEFAULT NULL,
  "ImageParamClassTypeID" character varying(255) DEFAULT NULL,
  "StageID" character varying(255) DEFAULT NULL,
  "StageStoreID" character varying(255) DEFAULT NULL,
  "StageClassTypeID" character varying(255) DEFAULT NULL,
  "SaleAccountID" double precision DEFAULT NULL,
  "SaleAccountStoreID" double precision DEFAULT NULL,
  "SaleAccountClassTypeID" double precision DEFAULT NULL,
  "SaleAccountOverridden" smallint DEFAULT 0,
  "ChildItemCount" double precision DEFAULT NULL,
  "ParameterStr" text,
  "ModifierStr" text,
  "PartStr" text,
  "VarGridParam1ID" double precision DEFAULT NULL,
  "VarGridParam2ID" character varying(255) DEFAULT NULL,
  "VarGridValues1" character varying(255) DEFAULT NULL,
  "VarGridValues2" character varying(255) DEFAULT NULL,
  "VarGridParam1OV" smallint DEFAULT 0,
  "VarGridParam2OV" smallint DEFAULT 0,
  "TaxItems" text,
  "IsComplete" smallint DEFAULT 0,
  "AssignedToID" character varying(255) DEFAULT NULL,
  "TicketItemNumber" double precision DEFAULT NULL,
  "ShippingCompanyID" double precision DEFAULT NULL,
  "ShippingCompanyOV" smallint DEFAULT 0,
  "ShippingContactID" double precision DEFAULT NULL,
  "ShippingContactOV" smallint DEFAULT 0,
  "ShippingAddressID" double precision DEFAULT NULL,
  "ShippingAddressLinkID" double precision DEFAULT NULL,
  "ShippingAddressOV" smallint DEFAULT 0,
  "ShippingTaxClassID" double precision DEFAULT NULL,
  "ShippingTaxClassOV" smallint DEFAULT 0,
  "TotMaterialCost" double precision DEFAULT NULL,
  "TotLaborCost" double precision DEFAULT NULL,
  "TotEquipmentCost" double precision DEFAULT NULL,
  "TotOutSourceCost" double precision DEFAULT NULL,
  "TotOtherCost" double precision DEFAULT NULL,
  "TotPartCost" double precision DEFAULT NULL,
  "HasWorkAssignment" smallint DEFAULT 0,
  "WorkAssignmentID" character varying(255) DEFAULT NULL,
  "WorkAssignmentStoreID" character varying(255) DEFAULT NULL,
  "WorkAssignmentClassTypeID" character varying(255) DEFAULT NULL,
  "TotFreightCost" double precision DEFAULT NULL,
  "PriorityID" character varying(255) DEFAULT NULL,
  "PriorityStoreID" character varying(255) DEFAULT NULL,
  "PriorityClassTypeID" character varying(255) DEFAULT NULL,
  "AssignedToClassTypeID" character varying(255) DEFAULT NULL,
  "ProofApproved" smallint DEFAULT 0,
  "ProofApprovedDate" character varying(255) DEFAULT NULL,
  "ProofApprovedByID" character varying(255) DEFAULT NULL,
  "PercentComplete" double precision DEFAULT NULL,
  "PercentCompleteOV" smallint DEFAULT 0,
  "TermID" character varying(255) DEFAULT NULL,
  "ContractPeriodID" character varying(255) DEFAULT NULL,
  "ContractStartDate" character varying(255) DEFAULT NULL,
  "ContractEndDate" character varying(255) DEFAULT NULL,
  "ShipFromAddressID" character varying(255) DEFAULT NULL,
  "ShipFromAddressLinkID" double precision DEFAULT NULL,
  "ShipFromAddressOV" smallint DEFAULT 0,
  "IsValidTax" smallint DEFAULT 0,
  "IsDirty" smallint DEFAULT 0,
  "TaxNumber" character varying(255) DEFAULT NULL,
  "ShipFromID" character varying(255) DEFAULT NULL,
  "ShipFromClassTypeID" character varying(255) DEFAULT NULL,
  "AssemblyIncluded" smallint DEFAULT 0,
  "AssemblyIncludedOV" smallint DEFAULT 0,
  "AssemblyLocked" smallint DEFAULT 0,
  "AssemblyLinkID" character varying(255) DEFAULT NULL,
  "AssemblyLinkClassTypeID" character varying(255) DEFAULT NULL,
  "OverriddenAssemblies" character varying(255) DEFAULT NULL,
  "StationID" character varying(255) DEFAULT NULL,
  "StationClassTypeID" character varying(255) DEFAULT NULL,
  "GLDepartmentID" character varying(255) DEFAULT NULL,
  "GLDepartmentIDOV" smallint DEFAULT 0,
  "TaxablePrice" double precision DEFAULT NULL,
  "MeAndSonsTaxablePrice" double precision DEFAULT NULL,
  "StationActivityID" character varying(255) DEFAULT NULL,
  "StationActivityClassTypeID" character varying(255) DEFAULT NULL,
  "MaterialExpenseID" character varying(255) DEFAULT NULL,
  "LaborExpenseID" character varying(255) DEFAULT NULL,
  "EquipmentExpenseID" character varying(255) DEFAULT NULL,
  "OutsourceExpenseID" character varying(255) DEFAULT NULL,
  "OtherExpenseID" character varying(255) DEFAULT NULL,
  "FreightExpenseID" character varying(255) DEFAULT NULL,
  "LocationExpenseID" character varying(255) DEFAULT NULL,
  "UseParentExpenseAccounts" smallint DEFAULT 0,
  "WarehouseID" double precision DEFAULT NULL,
  "WarehouseIDOV" smallint DEFAULT 0,
  "RanReturnSQLFuncStatements" character varying(255) DEFAULT NULL,
  "QuantityShipped" character varying(255) DEFAULT NULL,
  "DueDate" timestamp without time zone DEFAULT NULL,
  "DueDateOV" smallint DEFAULT 0,
  "ShipFromCustomerID" double precision DEFAULT NULL,
  "ShipFromCustomerClassTypeID" double precision DEFAULT NULL,
  "ShowMultipleQuantityGrid" smallint DEFAULT 0,
  "MultipleQuantityGridXML" text ,
  "EstimatingWarehouseIDOV"  smallint DEFAULT 0,
  "EstimatingWarehouseID" double precision DEFAULT NULL,
  "ProductionDivisionID" character varying(255) DEFAULT NULL,
  "ProductionDivisionIDOverridden" smallint DEFAULT 0,
  "ProofDate" timestamp without time zone DEFAULT NULL,
  "ProofDateOV" smallint DEFAULT 0,
  "CalcTaxablePrice" double precision DEFAULT NULL,
  "TaxInfo" text,
  "account_name" character varying(255) DEFAULT NULL,
  "account_id" uuid DEFAULT NULL
);

--
-- Table structure for table `TransDetailParam`
--

DROP TABLE IF EXISTS "TransDetailParam";

CREATE TABLE "TransDetailParam" (
  "ID" double precision DEFAULT NULL,
  "StoreID" double precision DEFAULT NULL,
  "ClassTypeID" double precision DEFAULT NULL,
  "ModifiedByUser" character varying(255) DEFAULT NULL,
  "ModifiedByComputer" character varying(255) DEFAULT NULL,
  "ModifiedDate" timestamp without time zone DEFAULT NULL,
  "SeqID" double precision DEFAULT NULL,
  "IsSystem" smallint DEFAULT 0,
  "IsActive" smallint DEFAULT 0,
  "ParentID" double precision DEFAULT NULL,
  "ParentClassTypeID" double precision DEFAULT NULL,
  "TransactionType" double precision DEFAULT NULL,
  "TransHeaderID" double precision DEFAULT NULL,
  "TransHeaderClassTypeID" double precision DEFAULT NULL,
  "ParameterID" character varying(255) DEFAULT NULL,
  "ParameterClassTypeID" character varying(255) DEFAULT NULL,
  "ParameterName" character varying(255) DEFAULT NULL,
  "FormattedText" character varying(255) DEFAULT NULL,
  "ListID" character varying(255) DEFAULT NULL,
  "ListValue" double precision DEFAULT NULL,
  "Units" double precision DEFAULT NULL,
  "ValueType" double precision DEFAULT NULL,
  "ValueAsString" character varying(255) DEFAULT NULL,
  "ValueAsFloat" double precision DEFAULT NULL,
  "ValueAsInteger" double precision DEFAULT NULL,
  "ValueAsDateTime" character varying(255) DEFAULT NULL,
  "ValueAsBinary" character varying(255) DEFAULT NULL,
  "ValueAsBlob" character varying(255) DEFAULT NULL,
  "ValueAsStr25" character varying(255) DEFAULT NULL,
  "BlobType" double precision DEFAULT NULL,
  "Overridden" smallint DEFAULT 0,
  "VariableID" double precision DEFAULT NULL,
  "PropertyBag" text,
  "account_name" character varying(255) DEFAULT NULL,
  "account_id" uuid DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TransPart`
--

DROP TABLE IF EXISTS "TransPart";

CREATE TABLE "TransPart" (
  "ID" double precision DEFAULT NULL,
  "StoreID" double precision DEFAULT NULL,
  "ClassTypeID" double precision DEFAULT NULL,
  "ModifiedByUser" character varying(255) DEFAULT NULL,
  "ModifiedByComputer" character varying(255) DEFAULT NULL,
  "ModifiedDate" timestamp without time zone DEFAULT NULL,
  "SeqID" double precision DEFAULT NULL,
  "IsSystem" smallint DEFAULT 0,
  "IsActive" smallint DEFAULT 0,
  "TransHeaderID" double precision DEFAULT NULL,
  "TransHeaderClassTypeID" double precision DEFAULT NULL,
  "ParentID" double precision DEFAULT NULL,
  "ParentClassTypeID" double precision DEFAULT NULL,
  "PartID" double precision DEFAULT NULL,
  "PartClassTypeID" double precision DEFAULT NULL,
  "PartCode" character varying(255) DEFAULT NULL,
  "GoodsItemID" double precision DEFAULT NULL,
  "GoodsItemClassTypeID" double precision DEFAULT NULL,
  "GoodsItemCode" character varying(255) DEFAULT NULL,
  "Include" smallint DEFAULT 0,
  "IncludeCalculated" smallint DEFAULT 0,
  "IncludeOverridden" smallint DEFAULT 0,
  "CalculatedValue" double precision DEFAULT NULL,
  "EstimatedValue" double precision DEFAULT NULL,
  "EstimatedOverridden" smallint DEFAULT 0,
  "ActualValue" double precision DEFAULT NULL,
  "ActualOverridden" smallint DEFAULT 0,
  "SortOrder" double precision DEFAULT NULL,
  "UnitID" double precision DEFAULT NULL,
  "UnitsText" character varying(255) DEFAULT NULL,
  "LineItemNumber" character varying(255) DEFAULT NULL,
  "InternalNotes" character varying(255) DEFAULT NULL,
  "PartLinkID" double precision DEFAULT NULL,
  "PartLinkClassTypeID" double precision DEFAULT NULL,
  "IsAutomatic" smallint DEFAULT 0,
  "ReferenceNumber" double precision DEFAULT NULL,
  "CalculatedCost" double precision DEFAULT NULL,
  "EstimatedCost" double precision DEFAULT NULL,
  "EstimatedCostOverridden" smallint DEFAULT 0,
  "ActualCost" double precision DEFAULT NULL,
  "ActualCostOverridden" smallint DEFAULT 0,
  "TransDetailID" double precision DEFAULT NULL,
  "TransModID" character varying(255) DEFAULT NULL,
  "ParameterID" character varying(255) DEFAULT NULL,
  "ParameterStoreID" character varying(255) DEFAULT NULL,
  "ParameterClassTypeID" character varying(255) DEFAULT NULL,
  "CostMultiplier" character varying(255) DEFAULT NULL,
  "CostMultiplierType" double precision DEFAULT NULL,
  "TransDetailClassTypeID" double precision DEFAULT NULL,
  "TransModClassTypeID" character varying(255) DEFAULT NULL,
  "IsPart2" smallint DEFAULT 0,
  "FixedCostMultiplier" character varying(255) DEFAULT NULL,
  "Vendor" character varying(255) DEFAULT NULL,
  "VendorPartNumber" character varying(255) DEFAULT NULL,
  "ActualPrice" double precision DEFAULT NULL,
  "PartIndex" double precision DEFAULT NULL,
  "VariableID" double precision DEFAULT NULL,
  "VariableStoreID" character varying(255) DEFAULT NULL,
  "VariableClassTypeID" double precision DEFAULT NULL,
  "EstimatedPrice" double precision DEFAULT NULL,
  "StationID" double precision DEFAULT NULL,
  "StationClassTypeID" double precision DEFAULT NULL,
  "StationOverridden" smallint DEFAULT 0,
  "IsAttachedToVTrans" smallint DEFAULT 0,
  "InventoryID" double precision DEFAULT NULL,
  "InventoryClassTypeID" double precision DEFAULT NULL,
  "ActualPriceOverridden" smallint DEFAULT 0,
  "SuggestedPrice" double precision DEFAULT NULL,
  "AttachedPODetailID" character varying(255) DEFAULT NULL,
  "AttachedBillDetailID" character varying(255) DEFAULT NULL,
  "AttachedRDDetailID" character varying(255) DEFAULT NULL,
  "Description" character varying(255) DEFAULT NULL,
  "WarehouseID" double precision DEFAULT NULL,
  "WarehouseIDOV" smallint DEFAULT 0,
  "HasReplenishedInventory" smallint DEFAULT 0,
  "GLReplenishAdjID" character varying(255) DEFAULT NULL,
  "GLReplenishAdjClassTypeID" character varying(255) DEFAULT NULL,
  "IsReplenishingPart" smallint DEFAULT 0,
  "EstimatingWarehouseID" double precision DEFAULT NULL,
  "EstimatingWarehouseIDOV"  smallint DEFAULT 0,
  "ScheduledInstanceID"  double precision DEFAULT NULL,
  "ScheduledInstanceClassTypeID"      double precision DEFAULT NULL,
  "account_name" character varying(255) DEFAULT NULL,
  "account_id" uuid DEFAULT NULL 
);

DROP TABLE IF EXISTS "TransHeader";
CREATE TABLE "TransHeader" (
  "ID" integer NOT NULL,
  "StoreID" integer NOT NULL,
  "ClassTypeID" integer NOT NULL,
  "ModifiedByUser" VARCHAR(25) ,
  "ModifiedByComputer" VARCHAR(25)  ,
  "ModifiedDate" timestamp without time zone,
  "SeqID" integer,
  "IsSystem" bit,
  "IsActive" bit,
  "TransactionType" integer,
  "EstimateNumber" integer,
  "OrderNumber" integer,
  "OrderTemplateNumber" integer,
  "Version" integer,
  "Description"text  ,
  "AccountID" integer,
  "AccountStoreID" integer,
  "ContactID" integer,
  "SalesPerson1ID" integer,
  "SalesPerson2ID" integer,
  "SalesPerson3ID" integer,
  "OrderNotes" text ,
  "PONumber" VARCHAR(25)  ,
  "ProductionNotes" text  ,
  "PricingLevel" double precision,
  "PricingLevelOverridden" bit,
  "DiscountLevel" double precision,
  "DiscountLevelOverridden" bit,
  "EstimateCreatedDate" timestamp without time zone,
  "OrderCreatedDate" timestamp without time zone,
  "BuiltDate" timestamp without time zone,
  "SaleDate" timestamp without time zone,
  "ClosedDate" timestamp without time zone,
  "VoidedDate" timestamp without time zone,
  "ConvertedDate" timestamp without time zone,
  "RejectedDate" timestamp without time zone,
  "DueDate" timestamp without time zone,
  "ProofDate" timestamp without time zone,
  "LastFinanceChargeDate" timestamp without time zone,
  "DispositionID" integer,
  "SalesDispositionID" integer,
  "EnteredByID" integer,
  "HTMLShortFormat" text  ,
  "HTMLLongFormat" text  ,
  "BasePrice" decimal(20,4),
  "DiscountPrice" decimal(20,4),
  "ModifierPrice" decimal(20,4),
  "RawSubTotalPrice" decimal(20,4),
  "RoundingPrice" decimal(20,4),
  "SubTotalPrice" decimal(20,4),
  "TaxesPrice" decimal(20,4),
  "TotalPrice" decimal(20,4),
  "SonsBasePrice" decimal(20,4),
  "SonsDiscountPrice" decimal(20,4),
  "SonsModifierPrice" decimal(20,4),
  "SonsRawSubTotalPrice" decimal(20,4),
  "SonsRoundingPrice" decimal(20,4),
  "SonsSubTotalPrice" decimal(20,4),
  "SonsTaxesPrice" decimal(20,4),
  "SonsTotalPrice" decimal(20,4),
  "FinanceChargeAmount" decimal(20,4),
  "BalanceDue" decimal(20,4),
  "PaymentTotal" decimal(20,4),
  "WriteOffAmount" decimal(20,4),
  "StatusID" integer,
  "StatusText" VARCHAR(50)  ,
  "TaxClassID" integer,
  "TaxClassOverridden" bit,
  "InvoiceAddressID" integer,
  "InvoiceAddressOverridden" bit,
  "InvoiceContactID" integer,
  "ShippingAddressID" integer,
  "ShippingAddressOverridden" bit,
  "ShippingContactID" integer,
  "InvoiceAddressLinkID" integer,
  "ShippingAddressLinkID" integer,
  "EstimateGreeting" text  ,
  "EstimateGreetingTemplate" text,
  "IsTaxExempt" bit,
  "TaxNumber" VARCHAR(25) ,
  "OrderOriginID" integer,
  "OrderOriginName" VARCHAR(25)  ,
  "ManuallyReOpened" bit,
  "CreditMemoAmount" double precision,
  "CreditMemoOrderID" integer,
  "NextRefNumber" integer,
  "PricingLevelID" integer,
  "PromotionID" integer,
  "UseTaxLookup" bit,
  "TaxItems" text  ,
  "InvoiceNumber" integer,
  "ServiceTicketNumber" integer,
  "DivisionID" integer,
  "DivisionIDOverridden" bit,
  "OrderNotesTemplate" text ,
  "ProductionNotesTemplate" text  ,
  "IsFirmDueDate" bit,
  "ShippingCompanyID" integer,
  "ShippingCompanyOV" bit,
  "ShippingContactOV" bit,
  "InvoiceCompanyID" integer,
  "InvoiceCompanyOV" bit,
  "InvoiceContactOV" bit,
  "UseProgressBilling" bit,
  "PercentComplete" double precision,
  "RecurrenceType" integer,
  "RecurrenceEndDate" timestamp without time zone,
  "LastRecurrence" timestamp without time zone,
  "ScheduledPaymentPlanID" integer,
  "ScheduledPaymentDate" timestamp without time zone,
  "ScheduledPayments" integer,
  "ScheduledPaymentIntervals" integer,
  "UsePaymentPlan" bit,
  "DroppedDate" timestamp without time zone,
  "PurchaseOrderNumber" integer,
  "POPaymentTermsID" integer,
  "POShippingMethodID" integer,
  "RequestedDate" timestamp without time zone,
  "ApprovedDate" timestamp without time zone,
  "OrderedDate" timestamp without time zone,
  "ReceivedDate" timestamp without time zone,
  "RequestedByID" integer,
  "ApprovedByID" integer,
  "OrderedByID" integer,
  "ReceivedByID" integer,
  "ShipFromAddressLinkID" integer,
  "ShipFromAddressID" integer,
  "ShipFromID" integer,
  "IsValidTax" bit,
  "TipsAmount" double precision,
  "TipsPaidOut" double precision,
  "IsDirty" bit,
  "BillNumber" integer,
  "ReceivingDocNumber" integer,
  "BillDate" timestamp without time zone,
  "ShipFromClassTypeID" integer,
  "ShipFromAddressOverridden" bit,
  "ExpectedPayID" integer,
  "ExpectedPayClassTypeID" integer,
  "StationID" integer,
  "StationClassTypeID" integer,
  "SalesStationID" integer,
  "SalesStationClassTypeID" integer,
  "DefaultOrderID" integer,
  "DefaultOrderClassTypeID" integer,
  "DefaultOrderItemID" integer,
  "DefaultOrderItemClassTypeID" integer,
  "TaxablePrice" double precision,
  "SonsTaxablePrice" double precision,
  "StationActivityID" integer,
  "StationActivityClassTypeID" integer,
  "PayrollID" integer,
  "PayrollClassTypeID" integer,
  "EarlyPaymentDiscountOVAmount" double precision,
  "IsEarlyPaymentDiscountOV" bit,
  "RecurrenceStartDate" timestamp without time zone,
  "IsReturnDocument" bit,
  "WarehouseID" integer,
  "WarehouseIDOV" bit,
  "FinanceChargeTaxXML" text  ,
  "IsPricingLocked" bit,
  "ShipFromPhoneNumberID" integer,
  "ShipFromEmailAddress" VARCHAR(50)  ,
  "UseShippingAccountInfo" bit,
  "ShippingAccountNumber" VARCHAR(100)  ,
  "ShippingCarrierID" integer,
  "ShippingCarrierClassTypeID" integer,
  "ShippingAccountPostalCode" VARCHAR(25),
  "ShipmentType" integer,
  "ShipmentTypeText" VARCHAR(25)  ,
  "IsShippingLocked" bit,
  "ShipFromCustomerID" integer,
  "ShipFromCustomerClassTypeID" integer,
  "ShipFromDivisionID" integer,
  "ShipFromDivisionClassTypeID" integer,
  "OverriddenUserFields" text,
  "EstimatingWarehouseID" double precision DEFAULT NULL,
  "EstimatingWarehouseIDOV" bit,
  "ProductionDivisionID"  double precision DEFAULT NULL,
  "ProductionDivisionIDOverridden" bit,
  "IsTaxExemptOV" bit,
  "ShipToAddressType" integer,
  "ClonedFromTransactionNumber" VARCHAR(100)  ,
  "ClonedFromTransactionType" integer,
  "TaxInfo" text,
  "account_name" character varying(255) DEFAULT NULL,
  "account_id" uuid DEFAULT NULL
);


