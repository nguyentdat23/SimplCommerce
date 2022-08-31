CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);

START TRANSACTION;

CREATE TABLE "ActivityLog_ActivityType" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    CONSTRAINT "PK_ActivityLog_ActivityType" PRIMARY KEY ("Id")
);

CREATE TABLE "Catalog_Brand" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Slug" character varying(450) NOT NULL,
    "Description" text NULL,
    "IsPublished" boolean NOT NULL,
    "IsDeleted" boolean NOT NULL,
    CONSTRAINT "PK_Catalog_Brand" PRIMARY KEY ("Id")
);

CREATE TABLE "Catalog_ProductAttributeGroup" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    CONSTRAINT "PK_Catalog_ProductAttributeGroup" PRIMARY KEY ("Id")
);

CREATE TABLE "Catalog_ProductOption" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    CONSTRAINT "PK_Catalog_ProductOption" PRIMARY KEY ("Id")
);

CREATE TABLE "Catalog_ProductTemplate" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    CONSTRAINT "PK_Catalog_ProductTemplate" PRIMARY KEY ("Id")
);

CREATE TABLE "Cms_Menu" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "IsPublished" boolean NOT NULL,
    "IsSystem" boolean NOT NULL,
    CONSTRAINT "PK_Cms_Menu" PRIMARY KEY ("Id")
);

CREATE TABLE "Contacts_ContactArea" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "IsDeleted" boolean NOT NULL,
    CONSTRAINT "PK_Contacts_ContactArea" PRIMARY KEY ("Id")
);

CREATE TABLE "Core_AppSetting" (
    "Id" text NOT NULL,
    "Value" character varying(450) NULL,
    "Module" character varying(450) NULL,
    "IsVisibleInCommonSettingPage" boolean NOT NULL,
    CONSTRAINT "PK_Core_AppSetting" PRIMARY KEY ("Id")
);

CREATE TABLE "Core_Country" (
    "Id" text NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Code3" character varying(450) NULL,
    "IsBillingEnabled" boolean NOT NULL,
    "IsShippingEnabled" boolean NOT NULL,
    "IsCityEnabled" boolean NOT NULL,
    "IsZipCodeEnabled" boolean NOT NULL,
    "IsDistrictEnabled" boolean NOT NULL,
    CONSTRAINT "PK_Core_Country" PRIMARY KEY ("Id")
);

CREATE TABLE "Core_CustomerGroup" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Description" text NULL,
    "IsActive" boolean NOT NULL,
    "IsDeleted" boolean NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_Core_CustomerGroup" PRIMARY KEY ("Id")
);

CREATE TABLE "Core_EntityType" (
    "Id" text NOT NULL,
    "IsMenuable" boolean NOT NULL,
    "AreaName" character varying(450) NULL,
    "RoutingController" character varying(450) NULL,
    "RoutingAction" character varying(450) NULL,
    CONSTRAINT "PK_Core_EntityType" PRIMARY KEY ("Id")
);

CREATE TABLE "Core_Media" (
    "Id" bigint NOT NULL,
    "Caption" character varying(450) NULL,
    "FileSize" integer NOT NULL,
    "FileName" character varying(450) NULL,
    "MediaType" integer NOT NULL,
    CONSTRAINT "PK_Core_Media" PRIMARY KEY ("Id")
);

CREATE TABLE "Core_Role" (
    "Id" bigint NOT NULL,
    "Name" character varying(256) NULL,
    "NormalizedName" character varying(256) NULL,
    "ConcurrencyStamp" text NULL,
    CONSTRAINT "PK_Core_Role" PRIMARY KEY ("Id")
);

CREATE TABLE "Core_Vendor" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Slug" character varying(450) NOT NULL,
    "Description" text NULL,
    "Email" text NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    "IsActive" boolean NOT NULL,
    "IsDeleted" boolean NOT NULL,
    CONSTRAINT "PK_Core_Vendor" PRIMARY KEY ("Id")
);

CREATE TABLE "Core_Widget" (
    "Id" text NOT NULL,
    "Name" character varying(450) NOT NULL,
    "ViewComponentName" character varying(450) NULL,
    "CreateUrl" character varying(450) NULL,
    "EditUrl" character varying(450) NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "IsPublished" boolean NOT NULL,
    CONSTRAINT "PK_Core_Widget" PRIMARY KEY ("Id")
);

CREATE TABLE "Core_WidgetZone" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Description" text NULL,
    CONSTRAINT "PK_Core_WidgetZone" PRIMARY KEY ("Id")
);

CREATE TABLE "Localization_Culture" (
    "Id" text NOT NULL,
    "Name" character varying(450) NOT NULL,
    CONSTRAINT "PK_Localization_Culture" PRIMARY KEY ("Id")
);

CREATE TABLE "News_NewsCategory" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Slug" character varying(450) NOT NULL,
    "MetaTitle" character varying(450) NULL,
    "MetaKeywords" character varying(450) NULL,
    "MetaDescription" text NULL,
    "Description" text NULL,
    "DisplayOrder" integer NOT NULL,
    "IsPublished" boolean NOT NULL,
    "IsDeleted" boolean NOT NULL,
    CONSTRAINT "PK_News_NewsCategory" PRIMARY KEY ("Id")
);

CREATE TABLE "Payments_PaymentProvider" (
    "Id" text NOT NULL,
    "Name" character varying(450) NOT NULL,
    "IsEnabled" boolean NOT NULL,
    "ConfigureUrl" character varying(450) NULL,
    "LandingViewComponentName" character varying(450) NULL,
    "AdditionalSettings" text NULL,
    CONSTRAINT "PK_Payments_PaymentProvider" PRIMARY KEY ("Id")
);

CREATE TABLE "Pricing_CartRule" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Description" text NULL,
    "IsActive" boolean NOT NULL,
    "StartOn" timestamp with time zone NULL,
    "EndOn" timestamp with time zone NULL,
    "IsCouponRequired" boolean NOT NULL,
    "RuleToApply" character varying(450) NULL,
    "DiscountAmount" numeric NOT NULL,
    "MaxDiscountAmount" numeric NULL,
    "DiscountStep" integer NULL,
    "UsageLimitPerCoupon" integer NULL,
    "UsageLimitPerCustomer" integer NULL,
    CONSTRAINT "PK_Pricing_CartRule" PRIMARY KEY ("Id")
);

CREATE TABLE "Pricing_CatalogRule" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Description" text NULL,
    "IsActive" boolean NOT NULL,
    "StartOn" timestamp with time zone NULL,
    "EndOn" timestamp with time zone NULL,
    "RuleToApply" character varying(450) NULL,
    "DiscountAmount" numeric NOT NULL,
    "MaxDiscountAmount" numeric NULL,
    CONSTRAINT "PK_Pricing_CatalogRule" PRIMARY KEY ("Id")
);

CREATE TABLE "ProductRecentlyViewed_RecentlyViewedProduct" (
    "Id" bigint NOT NULL,
    "UserId" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "LatestViewedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_ProductRecentlyViewed_RecentlyViewedProduct" PRIMARY KEY ("Id")
);

CREATE TABLE "Search_Query" (
    "Id" bigint NOT NULL,
    "QueryText" character varying(500) NOT NULL,
    "ResultsCount" integer NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_Search_Query" PRIMARY KEY ("Id")
);

CREATE TABLE "Shipping_ShippingProvider" (
    "Id" text NOT NULL,
    "Name" character varying(450) NOT NULL,
    "IsEnabled" boolean NOT NULL,
    "ConfigureUrl" character varying(450) NULL,
    "ToAllShippingEnabledCountries" boolean NOT NULL,
    "OnlyCountryIdsString" character varying(1000) NULL,
    "ToAllShippingEnabledStatesOrProvinces" boolean NOT NULL,
    "OnlyStateOrProvinceIdsString" character varying(1000) NULL,
    "AdditionalSettings" text NULL,
    "ShippingPriceServiceTypeName" character varying(450) NULL,
    CONSTRAINT "PK_Shipping_ShippingProvider" PRIMARY KEY ("Id")
);

CREATE TABLE "Tax_TaxClass" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    CONSTRAINT "PK_Tax_TaxClass" PRIMARY KEY ("Id")
);

CREATE TABLE "ActivityLog_Activity" (
    "Id" bigint NOT NULL,
    "ActivityTypeId" bigint NOT NULL,
    "UserId" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "EntityId" bigint NOT NULL,
    "EntityTypeId" character varying(450) NOT NULL,
    CONSTRAINT "PK_ActivityLog_Activity" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_ActivityLog_Activity_ActivityLog_ActivityType_ActivityTypeId" FOREIGN KEY ("ActivityTypeId") REFERENCES "ActivityLog_ActivityType" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_ProductAttribute" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "GroupId" bigint NOT NULL,
    CONSTRAINT "PK_Catalog_ProductAttribute" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_ProductAttribute_Catalog_ProductAttributeGroup_GroupId" FOREIGN KEY ("GroupId") REFERENCES "Catalog_ProductAttributeGroup" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Contacts_Contact" (
    "Id" bigint NOT NULL,
    "FullName" character varying(450) NULL,
    "PhoneNumber" character varying(450) NULL,
    "EmailAddress" character varying(450) NULL,
    "Address" character varying(450) NULL,
    "Content" text NULL,
    "ContactAreaId" bigint NOT NULL,
    "IsDeleted" boolean NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_Contacts_Contact" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Contacts_Contact_Contacts_ContactArea_ContactAreaId" FOREIGN KEY ("ContactAreaId") REFERENCES "Contacts_ContactArea" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Core_StateOrProvince" (
    "Id" bigint NOT NULL,
    "CountryId" character varying(450) NULL,
    "Code" character varying(450) NULL,
    "Name" character varying(450) NOT NULL,
    "Type" character varying(450) NULL,
    CONSTRAINT "PK_Core_StateOrProvince" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Core_StateOrProvince_Core_Country_CountryId" FOREIGN KEY ("CountryId") REFERENCES "Core_Country" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Core_Entity" (
    "Id" bigint NOT NULL,
    "Slug" character varying(450) NOT NULL,
    "Name" character varying(450) NOT NULL,
    "EntityId" bigint NOT NULL,
    "EntityTypeId" character varying(450) NULL,
    CONSTRAINT "PK_Core_Entity" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Core_Entity_Core_EntityType_EntityTypeId" FOREIGN KEY ("EntityTypeId") REFERENCES "Core_EntityType" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_Category" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Slug" character varying(450) NOT NULL,
    "MetaTitle" character varying(450) NULL,
    "MetaKeywords" character varying(450) NULL,
    "MetaDescription" text NULL,
    "Description" text NULL,
    "DisplayOrder" integer NOT NULL,
    "IsPublished" boolean NOT NULL,
    "IncludeInMenu" boolean NOT NULL,
    "IsDeleted" boolean NOT NULL,
    "ParentId" bigint NULL,
    "ThumbnailImageId" bigint NULL,
    CONSTRAINT "PK_Catalog_Category" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_Category_Catalog_Category_ParentId" FOREIGN KEY ("ParentId") REFERENCES "Catalog_Category" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Catalog_Category_Core_Media_ThumbnailImageId" FOREIGN KEY ("ThumbnailImageId") REFERENCES "Core_Media" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Core_RoleClaim" (
    "Id" integer NOT NULL,
    "RoleId" bigint NOT NULL,
    "ClaimType" text NULL,
    "ClaimValue" text NULL,
    CONSTRAINT "PK_Core_RoleClaim" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Core_RoleClaim_Core_Role_RoleId" FOREIGN KEY ("RoleId") REFERENCES "Core_Role" ("Id") ON DELETE CASCADE
);

CREATE TABLE "Core_WidgetInstance" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    "PublishStart" timestamp with time zone NULL,
    "PublishEnd" timestamp with time zone NULL,
    "WidgetId" character varying(450) NULL,
    "WidgetZoneId" bigint NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "Data" text NULL,
    "HtmlData" text NULL,
    CONSTRAINT "PK_Core_WidgetInstance" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Core_WidgetInstance_Core_Widget_WidgetId" FOREIGN KEY ("WidgetId") REFERENCES "Core_Widget" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Core_WidgetInstance_Core_WidgetZone_WidgetZoneId" FOREIGN KEY ("WidgetZoneId") REFERENCES "Core_WidgetZone" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Localization_Resource" (
    "Id" bigint NOT NULL,
    "Key" character varying(450) NOT NULL,
    "Value" text NULL,
    "CultureId" text NOT NULL,
    CONSTRAINT "PK_Localization_Resource" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Localization_Resource_Localization_Culture_CultureId" FOREIGN KEY ("CultureId") REFERENCES "Localization_Culture" ("Id") ON DELETE CASCADE
);

CREATE TABLE "Pricing_CartRuleCustomerGroup" (
    "CartRuleId" bigint NOT NULL,
    "CustomerGroupId" bigint NOT NULL,
    CONSTRAINT "PK_Pricing_CartRuleCustomerGroup" PRIMARY KEY ("CartRuleId", "CustomerGroupId"),
    CONSTRAINT "FK_Pricing_CartRuleCustomerGroup_Pricing_CartRule_CartRuleId" FOREIGN KEY ("CartRuleId") REFERENCES "Pricing_CartRule" ("Id") ON DELETE CASCADE,
    CONSTRAINT "FK_Pricing_CartRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId" FOREIGN KEY ("CustomerGroupId") REFERENCES "Core_CustomerGroup" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Pricing_Coupon" (
    "Id" bigint NOT NULL,
    "CartRuleId" bigint NOT NULL,
    "Code" character varying(450) NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_Pricing_Coupon" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Pricing_Coupon_Pricing_CartRule_CartRuleId" FOREIGN KEY ("CartRuleId") REFERENCES "Pricing_CartRule" ("Id") ON DELETE CASCADE
);

CREATE TABLE "Pricing_CatalogRuleCustomerGroup" (
    "CatalogRuleId" bigint NOT NULL,
    "CustomerGroupId" bigint NOT NULL,
    CONSTRAINT "PK_Pricing_CatalogRuleCustomerGroup" PRIMARY KEY ("CatalogRuleId", "CustomerGroupId"),
    CONSTRAINT "FK_Pricing_CatalogRuleCustomerGroup_Pricing_CatalogRule_CatalogRuleId" FOREIGN KEY ("CatalogRuleId") REFERENCES "Pricing_CatalogRule" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Pricing_CatalogRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId" FOREIGN KEY ("CustomerGroupId") REFERENCES "Core_CustomerGroup" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_ProductTemplateProductAttribute" (
    "ProductTemplateId" bigint NOT NULL,
    "ProductAttributeId" bigint NOT NULL,
    CONSTRAINT "PK_Catalog_ProductTemplateProductAttribute" PRIMARY KEY ("ProductTemplateId", "ProductAttributeId"),
    CONSTRAINT "FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductAttribute_ProductAttributeId" FOREIGN KEY ("ProductAttributeId") REFERENCES "Catalog_ProductAttribute" ("Id") ON DELETE CASCADE,
    CONSTRAINT "FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductTemplate_ProductTemplateId" FOREIGN KEY ("ProductTemplateId") REFERENCES "Catalog_ProductTemplate" ("Id") ON DELETE CASCADE
);

CREATE TABLE "Core_District" (
    "Id" bigint NOT NULL,
    "StateOrProvinceId" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Type" character varying(450) NULL,
    "Location" text NULL,
    CONSTRAINT "PK_Core_District" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Core_District_Core_StateOrProvince_StateOrProvinceId" FOREIGN KEY ("StateOrProvinceId") REFERENCES "Core_StateOrProvince" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Tax_TaxRate" (
    "Id" bigint NOT NULL,
    "TaxClassId" bigint NOT NULL,
    "CountryId" character varying(450) NULL,
    "StateOrProvinceId" bigint NULL,
    "Rate" numeric NOT NULL,
    "ZipCode" character varying(450) NULL,
    CONSTRAINT "PK_Tax_TaxRate" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Tax_TaxRate_Core_Country_CountryId" FOREIGN KEY ("CountryId") REFERENCES "Core_Country" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Tax_TaxRate_Core_StateOrProvince_StateOrProvinceId" FOREIGN KEY ("StateOrProvinceId") REFERENCES "Core_StateOrProvince" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Tax_TaxRate_Tax_TaxClass_TaxClassId" FOREIGN KEY ("TaxClassId") REFERENCES "Tax_TaxClass" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Cms_MenuItem" (
    "Id" bigint NOT NULL,
    "ParentId" bigint NULL,
    "MenuId" bigint NOT NULL,
    "EntityId" bigint NULL,
    "CustomLink" character varying(450) NULL,
    "Name" character varying(450) NULL,
    "DisplayOrder" integer NOT NULL,
    CONSTRAINT "PK_Cms_MenuItem" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Cms_MenuItem_Core_Entity_EntityId" FOREIGN KEY ("EntityId") REFERENCES "Core_Entity" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Cms_MenuItem_Cms_Menu_MenuId" FOREIGN KEY ("MenuId") REFERENCES "Cms_Menu" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Cms_MenuItem_Cms_MenuItem_ParentId" FOREIGN KEY ("ParentId") REFERENCES "Cms_MenuItem" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Pricing_CartRuleCategory" (
    "CategoryId" bigint NOT NULL,
    "CartRuleId" bigint NOT NULL,
    CONSTRAINT "PK_Pricing_CartRuleCategory" PRIMARY KEY ("CartRuleId", "CategoryId"),
    CONSTRAINT "FK_Pricing_CartRuleCategory_Pricing_CartRule_CartRuleId" FOREIGN KEY ("CartRuleId") REFERENCES "Pricing_CartRule" ("Id") ON DELETE CASCADE,
    CONSTRAINT "FK_Pricing_CartRuleCategory_Catalog_Category_CategoryId" FOREIGN KEY ("CategoryId") REFERENCES "Catalog_Category" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Core_Address" (
    "Id" bigint NOT NULL,
    "ContactName" character varying(450) NULL,
    "Phone" character varying(450) NULL,
    "AddressLine1" character varying(450) NULL,
    "AddressLine2" character varying(450) NULL,
    "City" character varying(450) NULL,
    "ZipCode" character varying(450) NULL,
    "DistrictId" bigint NULL,
    "StateOrProvinceId" bigint NOT NULL,
    "CountryId" character varying(450) NOT NULL,
    CONSTRAINT "PK_Core_Address" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Core_Address_Core_Country_CountryId" FOREIGN KEY ("CountryId") REFERENCES "Core_Country" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Core_Address_Core_District_DistrictId" FOREIGN KEY ("DistrictId") REFERENCES "Core_District" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Core_Address_Core_StateOrProvince_StateOrProvinceId" FOREIGN KEY ("StateOrProvinceId") REFERENCES "Core_StateOrProvince" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Orders_OrderAddress" (
    "Id" bigint NOT NULL,
    "ContactName" character varying(450) NULL,
    "Phone" character varying(450) NULL,
    "AddressLine1" character varying(450) NULL,
    "AddressLine2" character varying(450) NULL,
    "City" character varying(450) NULL,
    "ZipCode" character varying(450) NULL,
    "DistrictId" bigint NULL,
    "StateOrProvinceId" bigint NOT NULL,
    "CountryId" character varying(450) NULL,
    CONSTRAINT "PK_Orders_OrderAddress" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Orders_OrderAddress_Core_Country_CountryId" FOREIGN KEY ("CountryId") REFERENCES "Core_Country" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Orders_OrderAddress_Core_District_DistrictId" FOREIGN KEY ("DistrictId") REFERENCES "Core_District" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Orders_OrderAddress_Core_StateOrProvince_StateOrProvinceId" FOREIGN KEY ("StateOrProvinceId") REFERENCES "Core_StateOrProvince" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "ShippingTableRate_PriceAndDestination" (
    "Id" bigint NOT NULL,
    "CountryId" character varying(450) NULL,
    "StateOrProvinceId" bigint NULL,
    "DistrictId" bigint NULL,
    "ZipCode" character varying(450) NULL,
    "Note" text NULL,
    "MinOrderSubtotal" numeric NOT NULL,
    "ShippingPrice" numeric NOT NULL,
    CONSTRAINT "PK_ShippingTableRate_PriceAndDestination" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_ShippingTableRate_PriceAndDestination_Core_Country_CountryId" FOREIGN KEY ("CountryId") REFERENCES "Core_Country" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_ShippingTableRate_PriceAndDestination_Core_District_DistrictId" FOREIGN KEY ("DistrictId") REFERENCES "Core_District" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_ShippingTableRate_PriceAndDestination_Core_StateOrProvince_StateOrProvinceId" FOREIGN KEY ("StateOrProvinceId") REFERENCES "Core_StateOrProvince" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Inventory_Warehouse" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "AddressId" bigint NOT NULL,
    "VendorId" bigint NULL,
    CONSTRAINT "PK_Inventory_Warehouse" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Inventory_Warehouse_Core_Address_AddressId" FOREIGN KEY ("AddressId") REFERENCES "Core_Address" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Inventory_Warehouse_Core_Vendor_VendorId" FOREIGN KEY ("VendorId") REFERENCES "Core_Vendor" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_Product" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Slug" character varying(450) NOT NULL,
    "MetaTitle" character varying(450) NULL,
    "MetaKeywords" character varying(450) NULL,
    "MetaDescription" text NULL,
    "IsPublished" boolean NOT NULL,
    "PublishedOn" timestamp with time zone NULL,
    "IsDeleted" boolean NOT NULL,
    "CreatedById" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedById" bigint NOT NULL,
    "ShortDescription" character varying(450) NULL,
    "Description" text NULL,
    "Specification" text NULL,
    "Price" numeric NOT NULL,
    "OldPrice" numeric NULL,
    "SpecialPrice" numeric NULL,
    "SpecialPriceStart" timestamp with time zone NULL,
    "SpecialPriceEnd" timestamp with time zone NULL,
    "HasOptions" boolean NOT NULL,
    "IsVisibleIndividually" boolean NOT NULL,
    "IsFeatured" boolean NOT NULL,
    "IsCallForPricing" boolean NOT NULL,
    "IsAllowToOrder" boolean NOT NULL,
    "StockTrackingIsEnabled" boolean NOT NULL,
    "StockQuantity" integer NOT NULL,
    "Sku" character varying(450) NULL,
    "Gtin" character varying(450) NULL,
    "NormalizedName" character varying(450) NULL,
    "DisplayOrder" integer NOT NULL,
    "VendorId" bigint NULL,
    "ThumbnailImageId" bigint NULL,
    "ReviewsCount" integer NOT NULL,
    "RatingAverage" double precision NULL,
    "BrandId" bigint NULL,
    "TaxClassId" bigint NULL,
    CONSTRAINT "PK_Catalog_Product" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_Product_Catalog_Brand_BrandId" FOREIGN KEY ("BrandId") REFERENCES "Catalog_Brand" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Catalog_Product_Tax_TaxClass_TaxClassId" FOREIGN KEY ("TaxClassId") REFERENCES "Tax_TaxClass" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Catalog_Product_Core_Media_ThumbnailImageId" FOREIGN KEY ("ThumbnailImageId") REFERENCES "Core_Media" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_ProductAttributeValue" (
    "Id" bigint NOT NULL,
    "AttributeId" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "Value" text NULL,
    CONSTRAINT "PK_Catalog_ProductAttributeValue" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_ProductAttributeValue_Catalog_ProductAttribute_AttributeId" FOREIGN KEY ("AttributeId") REFERENCES "Catalog_ProductAttribute" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Catalog_ProductAttributeValue_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_ProductCategory" (
    "Id" bigint NOT NULL,
    "IsFeaturedProduct" boolean NOT NULL,
    "DisplayOrder" integer NOT NULL,
    "CategoryId" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    CONSTRAINT "PK_Catalog_ProductCategory" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_ProductCategory_Catalog_Category_CategoryId" FOREIGN KEY ("CategoryId") REFERENCES "Catalog_Category" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Catalog_ProductCategory_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_ProductLink" (
    "Id" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "LinkedProductId" bigint NOT NULL,
    "LinkType" integer NOT NULL,
    CONSTRAINT "PK_Catalog_ProductLink" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_ProductLink_Catalog_Product_LinkedProductId" FOREIGN KEY ("LinkedProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Catalog_ProductLink_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_ProductMedia" (
    "Id" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "MediaId" bigint NOT NULL,
    "DisplayOrder" integer NOT NULL,
    CONSTRAINT "PK_Catalog_ProductMedia" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_ProductMedia_Core_Media_MediaId" FOREIGN KEY ("MediaId") REFERENCES "Core_Media" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Catalog_ProductMedia_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_ProductOptionCombination" (
    "Id" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "OptionId" bigint NOT NULL,
    "Value" character varying(450) NULL,
    "SortIndex" integer NOT NULL,
    CONSTRAINT "PK_Catalog_ProductOptionCombination" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_ProductOptionCombination_Catalog_ProductOption_OptionId" FOREIGN KEY ("OptionId") REFERENCES "Catalog_ProductOption" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Catalog_ProductOptionCombination_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_ProductOptionValue" (
    "Id" bigint NOT NULL,
    "OptionId" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "Value" character varying(450) NULL,
    "DisplayType" character varying(450) NULL,
    "SortIndex" integer NOT NULL,
    CONSTRAINT "PK_Catalog_ProductOptionValue" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_ProductOptionValue_Catalog_ProductOption_OptionId" FOREIGN KEY ("OptionId") REFERENCES "Catalog_ProductOption" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Catalog_ProductOptionValue_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Inventory_Stock" (
    "Id" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "WarehouseId" bigint NOT NULL,
    "Quantity" integer NOT NULL,
    "ReservedQuantity" integer NOT NULL,
    CONSTRAINT "PK_Inventory_Stock" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Inventory_Stock_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Inventory_Stock_Inventory_Warehouse_WarehouseId" FOREIGN KEY ("WarehouseId") REFERENCES "Inventory_Warehouse" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Pricing_CartRuleProduct" (
    "ProductId" bigint NOT NULL,
    "CartRuleId" bigint NOT NULL,
    CONSTRAINT "PK_Pricing_CartRuleProduct" PRIMARY KEY ("CartRuleId", "ProductId"),
    CONSTRAINT "FK_Pricing_CartRuleProduct_Pricing_CartRule_CartRuleId" FOREIGN KEY ("CartRuleId") REFERENCES "Pricing_CartRule" ("Id") ON DELETE CASCADE,
    CONSTRAINT "FK_Pricing_CartRuleProduct_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Catalog_ProductPriceHistory" (
    "Id" bigint NOT NULL,
    "ProductId" bigint NULL,
    "CreatedById" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "Price" numeric NULL,
    "OldPrice" numeric NULL,
    "SpecialPrice" numeric NULL,
    "SpecialPriceStart" timestamp with time zone NULL,
    "SpecialPriceEnd" timestamp with time zone NULL,
    CONSTRAINT "PK_Catalog_ProductPriceHistory" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Catalog_ProductPriceHistory_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Inventory_StockHistory" (
    "Id" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "WarehouseId" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "CreatedById" bigint NOT NULL,
    "AdjustedQuantity" bigint NOT NULL,
    "Note" character varying(1000) NULL,
    CONSTRAINT "PK_Inventory_StockHistory" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Inventory_StockHistory_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Inventory_StockHistory_Inventory_Warehouse_WarehouseId" FOREIGN KEY ("WarehouseId") REFERENCES "Inventory_Warehouse" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Orders_OrderItem" (
    "Id" bigint NOT NULL,
    "OrderId" bigint NULL,
    "ProductId" bigint NOT NULL,
    "ProductPrice" numeric NOT NULL,
    "Quantity" integer NOT NULL,
    "DiscountAmount" numeric NOT NULL,
    "TaxAmount" numeric NOT NULL,
    "TaxPercent" numeric NOT NULL,
    CONSTRAINT "PK_Orders_OrderItem" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Orders_OrderItem_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "ProductComparison_ComparingProduct" (
    "Id" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "UserId" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    CONSTRAINT "PK_ProductComparison_ComparingProduct" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_ProductComparison_ComparingProduct_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Shipments_ShipmentItem" (
    "Id" bigint NOT NULL,
    "ShipmentId" bigint NOT NULL,
    "OrderItemId" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "Quantity" integer NOT NULL,
    CONSTRAINT "PK_Shipments_ShipmentItem" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Shipments_ShipmentItem_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "ShoppingCart_CartItem" (
    "Id" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "ProductId" bigint NOT NULL,
    "Quantity" integer NOT NULL,
    "CartId" bigint NOT NULL,
    CONSTRAINT "PK_ShoppingCart_CartItem" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_ShoppingCart_CartItem_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "WishList_WishListItem" (
    "Id" bigint NOT NULL,
    "WishListId" bigint NOT NULL,
    "ProductId" bigint NOT NULL,
    "Description" text NULL,
    "Quantity" integer NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_WishList_WishListItem" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_WishList_WishListItem_Catalog_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES "Catalog_Product" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Core_UserAddress" (
    "Id" bigint NOT NULL,
    "UserId" bigint NOT NULL,
    "AddressId" bigint NOT NULL,
    "AddressType" integer NOT NULL,
    "LastUsedOn" timestamp with time zone NULL,
    CONSTRAINT "PK_Core_UserAddress" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Core_UserAddress_Core_Address_AddressId" FOREIGN KEY ("AddressId") REFERENCES "Core_Address" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Core_User" (
    "Id" bigint NOT NULL,
    "UserName" character varying(256) NULL,
    "NormalizedUserName" character varying(256) NULL,
    "Email" character varying(256) NULL,
    "NormalizedEmail" character varying(256) NULL,
    "EmailConfirmed" boolean NOT NULL,
    "PasswordHash" text NULL,
    "SecurityStamp" text NULL,
    "ConcurrencyStamp" text NULL,
    "PhoneNumber" text NULL,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "TwoFactorEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone NULL,
    "LockoutEnabled" boolean NOT NULL,
    "AccessFailedCount" integer NOT NULL,
    "UserGuid" uuid NOT NULL,
    "FullName" character varying(450) NOT NULL,
    "VendorId" bigint NULL,
    "IsDeleted" boolean NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    "DefaultShippingAddressId" bigint NULL,
    "DefaultBillingAddressId" bigint NULL,
    "RefreshTokenHash" character varying(450) NULL,
    "Culture" character varying(450) NULL,
    "ExtensionData" text NULL,
    CONSTRAINT "PK_Core_User" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Core_User_Core_UserAddress_DefaultBillingAddressId" FOREIGN KEY ("DefaultBillingAddressId") REFERENCES "Core_UserAddress" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Core_User_Core_UserAddress_DefaultShippingAddressId" FOREIGN KEY ("DefaultShippingAddressId") REFERENCES "Core_UserAddress" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Core_User_Core_Vendor_VendorId" FOREIGN KEY ("VendorId") REFERENCES "Core_Vendor" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Cms_Page" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Slug" character varying(450) NOT NULL,
    "MetaTitle" character varying(450) NULL,
    "MetaKeywords" character varying(450) NULL,
    "MetaDescription" text NULL,
    "IsPublished" boolean NOT NULL,
    "PublishedOn" timestamp with time zone NULL,
    "IsDeleted" boolean NOT NULL,
    "CreatedById" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedById" bigint NOT NULL,
    "Body" text NULL,
    CONSTRAINT "PK_Cms_Page" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Cms_Page_Core_User_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Cms_Page_Core_User_LatestUpdatedById" FOREIGN KEY ("LatestUpdatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Comments_Comment" (
    "Id" bigint NOT NULL,
    "UserId" bigint NOT NULL,
    "CommentText" text NULL,
    "CommenterName" character varying(450) NULL,
    "Status" integer NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "EntityTypeId" character varying(450) NULL,
    "EntityId" bigint NOT NULL,
    "ParentId" bigint NULL,
    CONSTRAINT "PK_Comments_Comment" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Comments_Comment_Comments_Comment_ParentId" FOREIGN KEY ("ParentId") REFERENCES "Comments_Comment" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Comments_Comment_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Core_CustomerGroupUser" (
    "UserId" bigint NOT NULL,
    "CustomerGroupId" bigint NOT NULL,
    CONSTRAINT "PK_Core_CustomerGroupUser" PRIMARY KEY ("UserId", "CustomerGroupId"),
    CONSTRAINT "FK_Core_CustomerGroupUser_Core_CustomerGroup_CustomerGroupId" FOREIGN KEY ("CustomerGroupId") REFERENCES "Core_CustomerGroup" ("Id") ON DELETE CASCADE,
    CONSTRAINT "FK_Core_CustomerGroupUser_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE CASCADE
);

CREATE TABLE "Core_UserClaim" (
    "Id" integer NOT NULL,
    "UserId" bigint NOT NULL,
    "ClaimType" text NULL,
    "ClaimValue" text NULL,
    CONSTRAINT "PK_Core_UserClaim" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Core_UserClaim_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE CASCADE
);

CREATE TABLE "Core_UserLogin" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text NULL,
    "UserId" bigint NOT NULL,
    CONSTRAINT "PK_Core_UserLogin" PRIMARY KEY ("LoginProvider", "ProviderKey"),
    CONSTRAINT "FK_Core_UserLogin_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE CASCADE
);

CREATE TABLE "Core_UserRole" (
    "UserId" bigint NOT NULL,
    "RoleId" bigint NOT NULL,
    CONSTRAINT "PK_Core_UserRole" PRIMARY KEY ("UserId", "RoleId"),
    CONSTRAINT "FK_Core_UserRole_Core_Role_RoleId" FOREIGN KEY ("RoleId") REFERENCES "Core_Role" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Core_UserRole_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Core_UserToken" (
    "UserId" bigint NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text NULL,
    CONSTRAINT "PK_Core_UserToken" PRIMARY KEY ("UserId", "LoginProvider", "Name"),
    CONSTRAINT "FK_Core_UserToken_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE CASCADE
);

CREATE TABLE "News_NewsItem" (
    "Id" bigint NOT NULL,
    "Name" character varying(450) NOT NULL,
    "Slug" character varying(450) NOT NULL,
    "MetaTitle" character varying(450) NULL,
    "MetaKeywords" character varying(450) NULL,
    "MetaDescription" text NULL,
    "IsPublished" boolean NOT NULL,
    "PublishedOn" timestamp with time zone NULL,
    "IsDeleted" boolean NOT NULL,
    "CreatedById" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedById" bigint NOT NULL,
    "ShortContent" character varying(450) NULL,
    "FullContent" text NULL,
    "ThumbnailImageId" bigint NULL,
    CONSTRAINT "PK_News_NewsItem" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_News_NewsItem_Core_User_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_News_NewsItem_Core_User_LatestUpdatedById" FOREIGN KEY ("LatestUpdatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_News_NewsItem_Core_Media_ThumbnailImageId" FOREIGN KEY ("ThumbnailImageId") REFERENCES "Core_Media" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Orders_Order" (
    "Id" bigint NOT NULL,
    "CustomerId" bigint NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedById" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "CreatedById" bigint NOT NULL,
    "VendorId" bigint NULL,
    "CouponCode" character varying(450) NULL,
    "CouponRuleName" character varying(450) NULL,
    "DiscountAmount" numeric NOT NULL,
    "SubTotal" numeric NOT NULL,
    "SubTotalWithDiscount" numeric NOT NULL,
    "ShippingAddressId" bigint NOT NULL,
    "BillingAddressId" bigint NOT NULL,
    "OrderStatus" integer NOT NULL,
    "OrderNote" character varying(1000) NULL,
    "ParentId" bigint NULL,
    "IsMasterOrder" boolean NOT NULL,
    "ShippingMethod" character varying(450) NULL,
    "ShippingFeeAmount" numeric NOT NULL,
    "TaxAmount" numeric NOT NULL,
    "OrderTotal" numeric NOT NULL,
    "PaymentMethod" character varying(450) NULL,
    "PaymentFeeAmount" numeric NOT NULL,
    CONSTRAINT "PK_Orders_Order" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Orders_Order_Orders_OrderAddress_BillingAddressId" FOREIGN KEY ("BillingAddressId") REFERENCES "Orders_OrderAddress" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Orders_Order_Core_User_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Orders_Order_Core_User_CustomerId" FOREIGN KEY ("CustomerId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Orders_Order_Core_User_LatestUpdatedById" FOREIGN KEY ("LatestUpdatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Orders_Order_Orders_Order_ParentId" FOREIGN KEY ("ParentId") REFERENCES "Orders_Order" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Orders_Order_Orders_OrderAddress_ShippingAddressId" FOREIGN KEY ("ShippingAddressId") REFERENCES "Orders_OrderAddress" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Pricing_CartRuleUsage" (
    "Id" bigint NOT NULL,
    "CartRuleId" bigint NOT NULL,
    "CouponId" bigint NULL,
    "UserId" bigint NOT NULL,
    "OrderId" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_Pricing_CartRuleUsage" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Pricing_CartRuleUsage_Pricing_CartRule_CartRuleId" FOREIGN KEY ("CartRuleId") REFERENCES "Pricing_CartRule" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Pricing_CartRuleUsage_Pricing_Coupon_CouponId" FOREIGN KEY ("CouponId") REFERENCES "Pricing_Coupon" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Pricing_CartRuleUsage_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Reviews_Review" (
    "Id" bigint NOT NULL,
    "UserId" bigint NOT NULL,
    "Title" character varying(450) NULL,
    "Comment" text NULL,
    "Rating" integer NOT NULL,
    "ReviewerName" character varying(450) NULL,
    "Status" integer NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "EntityTypeId" character varying(450) NULL,
    "EntityId" bigint NOT NULL,
    CONSTRAINT "PK_Reviews_Review" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Reviews_Review_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "ShoppingCart_Cart" (
    "Id" bigint NOT NULL,
    "CustomerId" bigint NOT NULL,
    "CreatedById" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    "IsActive" boolean NOT NULL,
    "CouponCode" character varying(450) NULL,
    "CouponRuleName" character varying(450) NULL,
    "ShippingMethod" character varying(450) NULL,
    "IsProductPriceIncludeTax" boolean NOT NULL,
    "ShippingAmount" numeric NULL,
    "TaxAmount" numeric NULL,
    "ShippingData" text NULL,
    "OrderNote" character varying(1000) NULL,
    CONSTRAINT "PK_ShoppingCart_Cart" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_ShoppingCart_Cart_Core_User_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_ShoppingCart_Cart_Core_User_CustomerId" FOREIGN KEY ("CustomerId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "WishList_WishList" (
    "Id" bigint NOT NULL,
    "UserId" bigint NOT NULL,
    "SharingCode" character varying(450) NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_WishList_WishList" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_WishList_WishList_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "News_NewsItemCategory" (
    "CategoryId" bigint NOT NULL,
    "NewsItemId" bigint NOT NULL,
    CONSTRAINT "PK_News_NewsItemCategory" PRIMARY KEY ("CategoryId", "NewsItemId"),
    CONSTRAINT "FK_News_NewsItemCategory_News_NewsCategory_CategoryId" FOREIGN KEY ("CategoryId") REFERENCES "News_NewsCategory" ("Id") ON DELETE CASCADE,
    CONSTRAINT "FK_News_NewsItemCategory_News_NewsItem_NewsItemId" FOREIGN KEY ("NewsItemId") REFERENCES "News_NewsItem" ("Id") ON DELETE CASCADE
);

CREATE TABLE "Orders_OrderHistory" (
    "Id" bigint NOT NULL,
    "OrderId" bigint NOT NULL,
    "OldStatus" integer NULL,
    "NewStatus" integer NOT NULL,
    "OrderSnapshot" text NULL,
    "Note" character varying(1000) NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "CreatedById" bigint NOT NULL,
    CONSTRAINT "PK_Orders_OrderHistory" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Orders_OrderHistory_Core_User_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Orders_OrderHistory_Orders_Order_OrderId" FOREIGN KEY ("OrderId") REFERENCES "Orders_Order" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Payments_Payment" (
    "Id" bigint NOT NULL,
    "OrderId" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    "Amount" numeric NOT NULL,
    "PaymentFee" numeric NOT NULL,
    "PaymentMethod" character varying(450) NULL,
    "GatewayTransactionId" character varying(450) NULL,
    "Status" integer NOT NULL,
    "FailureMessage" text NULL,
    CONSTRAINT "PK_Payments_Payment" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Payments_Payment_Orders_Order_OrderId" FOREIGN KEY ("OrderId") REFERENCES "Orders_Order" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Shipments_Shipment" (
    "Id" bigint NOT NULL,
    "OrderId" bigint NOT NULL,
    "TrackingNumber" character varying(450) NULL,
    "WarehouseId" bigint NOT NULL,
    "VendorId" bigint NULL,
    "CreatedById" bigint NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    "LatestUpdatedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_Shipments_Shipment" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Shipments_Shipment_Core_User_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Shipments_Shipment_Orders_Order_OrderId" FOREIGN KEY ("OrderId") REFERENCES "Orders_Order" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Shipments_Shipment_Inventory_Warehouse_WarehouseId" FOREIGN KEY ("WarehouseId") REFERENCES "Inventory_Warehouse" ("Id") ON DELETE RESTRICT
);

CREATE TABLE "Reviews_Reply" (
    "Id" bigint NOT NULL,
    "ReviewId" bigint NOT NULL,
    "UserId" bigint NOT NULL,
    "Comment" text NULL,
    "ReplierName" character varying(450) NULL,
    "Status" integer NOT NULL,
    "CreatedOn" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_Reviews_Reply" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Reviews_Reply_Reviews_Review_ReviewId" FOREIGN KEY ("ReviewId") REFERENCES "Reviews_Review" ("Id") ON DELETE RESTRICT,
    CONSTRAINT "FK_Reviews_Reply_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT
);

INSERT INTO "ActivityLog_ActivityType" ("Id", "Name")
VALUES (1, 'EntityView');

INSERT INTO "Catalog_ProductOption" ("Id", "Name")
VALUES (1, 'Color');
INSERT INTO "Catalog_ProductOption" ("Id", "Name")
VALUES (2, 'Size');

INSERT INTO "Cms_Menu" ("Id", "IsPublished", "IsSystem", "Name")
VALUES (1, TRUE, TRUE, 'Customer Services');
INSERT INTO "Cms_Menu" ("Id", "IsPublished", "IsSystem", "Name")
VALUES (2, TRUE, TRUE, 'Information');

INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Theme', FALSE, 'Core', 'Generic');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Tax.DefaultTaxClassId', TRUE, 'Tax', '1');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('News.PageSize', TRUE, 'News', '10');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('SmtpPassword', FALSE, 'EmailSenderSmpt', '');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('SmtpUsername', FALSE, 'EmailSenderSmpt', '');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('SmtpPort', FALSE, 'EmailSenderSmpt', '587');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('SmtpServer', FALSE, 'EmailSenderSmpt', 'smtp.gmail.com');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('GoogleAppKey', FALSE, 'Contact', '');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Global.AssetVersion', TRUE, 'Core', '1.0');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Catalog.IsCommentsRequireApproval', TRUE, 'Catalog', 'true');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Catalog.IsProductPriceIncludeTax', TRUE, 'Catalog', 'true');
INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Catalog.ProductPageSize', TRUE, 'Catalog', '10');

INSERT INTO "Core_Country" ("Id", "Code3", "IsBillingEnabled", "IsCityEnabled", "IsDistrictEnabled", "IsShippingEnabled", "IsZipCodeEnabled", "Name")
VALUES ('VN', 'VNM', TRUE, FALSE, TRUE, TRUE, FALSE, 'Việt Nam');
INSERT INTO "Core_Country" ("Id", "Code3", "IsBillingEnabled", "IsCityEnabled", "IsDistrictEnabled", "IsShippingEnabled", "IsZipCodeEnabled", "Name")
VALUES ('US', 'USA', TRUE, TRUE, FALSE, TRUE, TRUE, 'United States');

INSERT INTO "Core_EntityType" ("Id", "AreaName", "IsMenuable", "RoutingAction", "RoutingController")
VALUES ('NewsItem', 'News', FALSE, 'NewsItemDetail', 'NewsItem');
INSERT INTO "Core_EntityType" ("Id", "AreaName", "IsMenuable", "RoutingAction", "RoutingController")
VALUES ('Vendor', 'Core', FALSE, 'VendorDetail', 'Vendor');
INSERT INTO "Core_EntityType" ("Id", "AreaName", "IsMenuable", "RoutingAction", "RoutingController")
VALUES ('NewsCategory', 'News', TRUE, 'NewsCategoryDetail', 'NewsCategory');
INSERT INTO "Core_EntityType" ("Id", "AreaName", "IsMenuable", "RoutingAction", "RoutingController")
VALUES ('Page', 'Cms', TRUE, 'PageDetail', 'Page');
INSERT INTO "Core_EntityType" ("Id", "AreaName", "IsMenuable", "RoutingAction", "RoutingController")
VALUES ('Category', 'Catalog', TRUE, 'CategoryDetail', 'Category');
INSERT INTO "Core_EntityType" ("Id", "AreaName", "IsMenuable", "RoutingAction", "RoutingController")
VALUES ('Brand', 'Catalog', TRUE, 'BrandDetail', 'Brand');
INSERT INTO "Core_EntityType" ("Id", "AreaName", "IsMenuable", "RoutingAction", "RoutingController")
VALUES ('Product', 'Catalog', FALSE, 'ProductDetail', 'Product');

INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName")
VALUES (1, '4776a1b2-dbe4-4056-82ec-8bed211d1454', 'admin', 'ADMIN');
INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName")
VALUES (2, '00d172be-03a0-4856-8b12-26d63fcf4374', 'customer', 'CUSTOMER');
INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName")
VALUES (3, 'd4754388-8355-4018-b728-218018836817', 'guest', 'GUEST');
INSERT INTO "Core_Role" ("Id", "ConcurrencyStamp", "Name", "NormalizedName")
VALUES (4, '71f10604-8c4d-4a7d-ac4a-ffefb11cefeb', 'vendor', 'VENDOR');

INSERT INTO "Core_User" ("Id", "AccessFailedCount", "ConcurrencyStamp", "CreatedOn", "Culture", "DefaultBillingAddressId", "DefaultShippingAddressId", "Email", "EmailConfirmed", "ExtensionData", "FullName", "IsDeleted", "LatestUpdatedOn", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "RefreshTokenHash", "SecurityStamp", "TwoFactorEnabled", "UserGuid", "UserName", "VendorId")
VALUES (10, 0, 'c83afcbc-312c-4589-bad7-8686bd4754c0', TIMESTAMPTZ '2018-05-29 04:33:39.19+07:00', NULL, NULL, NULL, 'admin@simplcommerce.com', FALSE, NULL, 'Shop Admin', FALSE, TIMESTAMPTZ '2018-05-29 04:33:39.19+07:00', FALSE, NULL, 'ADMIN@SIMPLCOMMERCE.COM', 'ADMIN@SIMPLCOMMERCE.COM', 'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', NULL, FALSE, NULL, 'd6847450-47f0-4c7a-9fed-0c66234bf61f', FALSE, 'ed8210c3-24b0-4823-a744-80078cf12eb4', 'admin@simplcommerce.com', NULL);
INSERT INTO "Core_User" ("Id", "AccessFailedCount", "ConcurrencyStamp", "CreatedOn", "Culture", "DefaultBillingAddressId", "DefaultShippingAddressId", "Email", "EmailConfirmed", "ExtensionData", "FullName", "IsDeleted", "LatestUpdatedOn", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "RefreshTokenHash", "SecurityStamp", "TwoFactorEnabled", "UserGuid", "UserName", "VendorId")
VALUES (2, 0, '101cd6ae-a8ef-4a37-97fd-04ac2dd630e4', TIMESTAMPTZ '2018-05-29 04:33:39.189+07:00', NULL, NULL, NULL, 'system@simplcommerce.com', FALSE, NULL, 'System User', TRUE, TIMESTAMPTZ '2018-05-29 04:33:39.189+07:00', FALSE, NULL, 'SYSTEM@SIMPLCOMMERCE.COM', 'SYSTEM@SIMPLCOMMERCE.COM', 'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', NULL, FALSE, NULL, 'a9565acb-cee6-425f-9833-419a793f5fba', FALSE, '5f72f83b-7436-4221-869c-1b69b2e23aae', 'system@simplcommerce.com', NULL);

INSERT INTO "Core_Widget" ("Id", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName")
VALUES ('RecentlyViewedWidget', 'widget-recently-viewed-create', TIMESTAMPTZ '2018-05-29 04:33:39.164+07:00', 'widget-recently-viewed-edit', FALSE, 'Recently Viewed Widget', 'RecentlyViewedWidget');
INSERT INTO "Core_Widget" ("Id", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName")
VALUES ('CategoryWidget', 'widget-category-create', TIMESTAMPTZ '2018-05-29 04:33:39.16+07:00', 'widget-category-edit', FALSE, 'Category Widget', 'CategoryWidget');
INSERT INTO "Core_Widget" ("Id", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName")
VALUES ('ProductWidget', 'widget-product-create', TIMESTAMPTZ '2018-05-29 04:33:39.163+07:00', 'widget-product-edit', FALSE, 'Product Widget', 'ProductWidget');
INSERT INTO "Core_Widget" ("Id", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName")
VALUES ('SimpleProductWidget', 'widget-simple-product-create', TIMESTAMPTZ '2018-05-29 04:33:39.163+07:00', 'widget-simple-product-edit', FALSE, 'Simple Product Widget', 'SimpleProductWidget');
INSERT INTO "Core_Widget" ("Id", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName")
VALUES ('HtmlWidget', 'widget-html-create', TIMESTAMPTZ '2018-05-29 04:33:39.164+07:00', 'widget-html-edit', FALSE, 'Html Widget', 'HtmlWidget');
INSERT INTO "Core_Widget" ("Id", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName")
VALUES ('CarouselWidget', 'widget-carousel-create', TIMESTAMPTZ '2018-05-29 04:33:39.164+07:00', 'widget-carousel-edit', FALSE, 'Carousel Widget', 'CarouselWidget');
INSERT INTO "Core_Widget" ("Id", "CreateUrl", "CreatedOn", "EditUrl", "IsPublished", "Name", "ViewComponentName")
VALUES ('SpaceBarWidget', 'widget-spacebar-create', TIMESTAMPTZ '2018-05-29 04:33:39.164+07:00', 'widget-spacebar-edit', FALSE, 'SpaceBar Widget', 'SpaceBarWidget');

INSERT INTO "Core_WidgetZone" ("Id", "Description", "Name")
VALUES (3, NULL, 'Home After Main Content');
INSERT INTO "Core_WidgetZone" ("Id", "Description", "Name")
VALUES (1, NULL, 'Home Featured');
INSERT INTO "Core_WidgetZone" ("Id", "Description", "Name")
VALUES (2, NULL, 'Home Main Content');

INSERT INTO "Localization_Culture" ("Id", "Name")
VALUES ('en-US', 'English (US)');

INSERT INTO "Payments_PaymentProvider" ("Id", "AdditionalSettings", "ConfigureUrl", "IsEnabled", "LandingViewComponentName", "Name")
VALUES ('Braintree', '{"PublicKey": "6j4d7qspt5n48kx4", "PrivateKey" : "bd1c26e53a6d811243fcc3eb268113e1", "MerchantId" : "ncsh7wwqvzs3cx9q", "IsProduction" : "false"}', 'payments-braintree-config', TRUE, 'BraintreeLanding', 'Braintree');
INSERT INTO "Payments_PaymentProvider" ("Id", "AdditionalSettings", "ConfigureUrl", "IsEnabled", "LandingViewComponentName", "Name")
VALUES ('CoD', NULL, 'payments-cod-config', TRUE, 'CoDLanding', 'Cash On Delivery');
INSERT INTO "Payments_PaymentProvider" ("Id", "AdditionalSettings", "ConfigureUrl", "IsEnabled", "LandingViewComponentName", "Name")
VALUES ('PaypalExpress', '{ "IsSandbox":true, "ClientId":"", "ClientSecret":"" }', 'payments-paypalExpress-config', TRUE, 'PaypalExpressLanding', 'Paypal Express');
INSERT INTO "Payments_PaymentProvider" ("Id", "AdditionalSettings", "ConfigureUrl", "IsEnabled", "LandingViewComponentName", "Name")
VALUES ('Stripe', '{"PublicKey": "pk_test_6pRNASCoBOKtIshFeQd4XMUh", "PrivateKey" : "sk_test_BQokikJOvBiI2HlWgH4olfQ2"}', 'payments-stripe-config', TRUE, 'StripeLanding', 'Stripe');

INSERT INTO "Shipping_ShippingProvider" ("Id", "AdditionalSettings", "ConfigureUrl", "IsEnabled", "Name", "OnlyCountryIdsString", "OnlyStateOrProvinceIdsString", "ShippingPriceServiceTypeName", "ToAllShippingEnabledCountries", "ToAllShippingEnabledStatesOrProvinces")
VALUES ('FreeShip', '{MinimumOrderAmount : 1}', '', TRUE, 'Free Ship', NULL, NULL, 'SimplCommerce.Module.ShippingFree.Services.FreeShippingServiceProvider,SimplCommerce.Module.ShippingFree', TRUE, TRUE);
INSERT INTO "Shipping_ShippingProvider" ("Id", "AdditionalSettings", "ConfigureUrl", "IsEnabled", "Name", "OnlyCountryIdsString", "OnlyStateOrProvinceIdsString", "ShippingPriceServiceTypeName", "ToAllShippingEnabledCountries", "ToAllShippingEnabledStatesOrProvinces")
VALUES ('TableRate', NULL, 'shipping-table-rate-config', TRUE, 'Table Rate', NULL, NULL, 'SimplCommerce.Module.ShippingTableRate.Services.TableRateShippingServiceProvider,SimplCommerce.Module.ShippingTableRate', TRUE, TRUE);

INSERT INTO "Tax_TaxClass" ("Id", "Name")
VALUES (1, 'Standard VAT');

INSERT INTO "Core_StateOrProvince" ("Id", "Code", "CountryId", "Name", "Type")
VALUES (1, NULL, 'VN', 'Hồ Chí Minh', 'Thành Phố');

INSERT INTO "Core_StateOrProvince" ("Id", "Code", "CountryId", "Name", "Type")
VALUES (2, 'WA', 'US', 'Washington', NULL);

INSERT INTO "Core_UserRole" ("UserId", "RoleId")
VALUES (10, 1);

INSERT INTO "Core_Address" ("Id", "AddressLine1", "AddressLine2", "City", "ContactName", "CountryId", "DistrictId", "Phone", "StateOrProvinceId", "ZipCode")
VALUES (1, '364 Cong Hoa', NULL, NULL, 'Thien Nguyen', 'VN', NULL, NULL, 1, NULL);

INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type")
VALUES (1, NULL, 'Quận 1', 1, 'Quận');

INSERT INTO "Core_District" ("Id", "Location", "Name", "StateOrProvinceId", "Type")
VALUES (2, NULL, 'Quận 2', 1, 'Quận');

INSERT INTO "Inventory_Warehouse" ("Id", "AddressId", "Name", "VendorId")
VALUES (1, 1, 'Default warehouse', NULL);

CREATE INDEX "IX_ActivityLog_Activity_ActivityTypeId" ON "ActivityLog_Activity" ("ActivityTypeId");

CREATE INDEX "IX_Catalog_Category_ParentId" ON "Catalog_Category" ("ParentId");

CREATE INDEX "IX_Catalog_Category_ThumbnailImageId" ON "Catalog_Category" ("ThumbnailImageId");

CREATE INDEX "IX_Catalog_Product_BrandId" ON "Catalog_Product" ("BrandId");

CREATE INDEX "IX_Catalog_Product_CreatedById" ON "Catalog_Product" ("CreatedById");

CREATE INDEX "IX_Catalog_Product_LatestUpdatedById" ON "Catalog_Product" ("LatestUpdatedById");

CREATE INDEX "IX_Catalog_Product_TaxClassId" ON "Catalog_Product" ("TaxClassId");

CREATE INDEX "IX_Catalog_Product_ThumbnailImageId" ON "Catalog_Product" ("ThumbnailImageId");

CREATE INDEX "IX_Catalog_ProductAttribute_GroupId" ON "Catalog_ProductAttribute" ("GroupId");

CREATE INDEX "IX_Catalog_ProductAttributeValue_AttributeId" ON "Catalog_ProductAttributeValue" ("AttributeId");

CREATE INDEX "IX_Catalog_ProductAttributeValue_ProductId" ON "Catalog_ProductAttributeValue" ("ProductId");

CREATE INDEX "IX_Catalog_ProductCategory_CategoryId" ON "Catalog_ProductCategory" ("CategoryId");

CREATE INDEX "IX_Catalog_ProductCategory_ProductId" ON "Catalog_ProductCategory" ("ProductId");

CREATE INDEX "IX_Catalog_ProductLink_LinkedProductId" ON "Catalog_ProductLink" ("LinkedProductId");

CREATE INDEX "IX_Catalog_ProductLink_ProductId" ON "Catalog_ProductLink" ("ProductId");

CREATE INDEX "IX_Catalog_ProductMedia_MediaId" ON "Catalog_ProductMedia" ("MediaId");

CREATE INDEX "IX_Catalog_ProductMedia_ProductId" ON "Catalog_ProductMedia" ("ProductId");

CREATE INDEX "IX_Catalog_ProductOptionCombination_OptionId" ON "Catalog_ProductOptionCombination" ("OptionId");

CREATE INDEX "IX_Catalog_ProductOptionCombination_ProductId" ON "Catalog_ProductOptionCombination" ("ProductId");

CREATE INDEX "IX_Catalog_ProductOptionValue_OptionId" ON "Catalog_ProductOptionValue" ("OptionId");

CREATE INDEX "IX_Catalog_ProductOptionValue_ProductId" ON "Catalog_ProductOptionValue" ("ProductId");

CREATE INDEX "IX_Catalog_ProductPriceHistory_CreatedById" ON "Catalog_ProductPriceHistory" ("CreatedById");

CREATE INDEX "IX_Catalog_ProductPriceHistory_ProductId" ON "Catalog_ProductPriceHistory" ("ProductId");

CREATE INDEX "IX_Catalog_ProductTemplateProductAttribute_ProductAttributeId" ON "Catalog_ProductTemplateProductAttribute" ("ProductAttributeId");

CREATE INDEX "IX_Cms_MenuItem_EntityId" ON "Cms_MenuItem" ("EntityId");

CREATE INDEX "IX_Cms_MenuItem_MenuId" ON "Cms_MenuItem" ("MenuId");

CREATE INDEX "IX_Cms_MenuItem_ParentId" ON "Cms_MenuItem" ("ParentId");

CREATE INDEX "IX_Cms_Page_CreatedById" ON "Cms_Page" ("CreatedById");

CREATE INDEX "IX_Cms_Page_LatestUpdatedById" ON "Cms_Page" ("LatestUpdatedById");

CREATE INDEX "IX_Comments_Comment_ParentId" ON "Comments_Comment" ("ParentId");

CREATE INDEX "IX_Comments_Comment_UserId" ON "Comments_Comment" ("UserId");

CREATE INDEX "IX_Contacts_Contact_ContactAreaId" ON "Contacts_Contact" ("ContactAreaId");

CREATE INDEX "IX_Core_Address_CountryId" ON "Core_Address" ("CountryId");

CREATE INDEX "IX_Core_Address_DistrictId" ON "Core_Address" ("DistrictId");

CREATE INDEX "IX_Core_Address_StateOrProvinceId" ON "Core_Address" ("StateOrProvinceId");

CREATE UNIQUE INDEX "IX_Core_CustomerGroup_Name" ON "Core_CustomerGroup" ("Name");

CREATE INDEX "IX_Core_CustomerGroupUser_CustomerGroupId" ON "Core_CustomerGroupUser" ("CustomerGroupId");

CREATE INDEX "IX_Core_District_StateOrProvinceId" ON "Core_District" ("StateOrProvinceId");

CREATE INDEX "IX_Core_Entity_EntityTypeId" ON "Core_Entity" ("EntityTypeId");

CREATE UNIQUE INDEX "RoleNameIndex" ON "Core_Role" ("NormalizedName") WHERE [NormalizedName] IS NOT NULL;

CREATE INDEX "IX_Core_RoleClaim_RoleId" ON "Core_RoleClaim" ("RoleId");

CREATE INDEX "IX_Core_StateOrProvince_CountryId" ON "Core_StateOrProvince" ("CountryId");

CREATE INDEX "IX_Core_User_DefaultBillingAddressId" ON "Core_User" ("DefaultBillingAddressId");

CREATE INDEX "IX_Core_User_DefaultShippingAddressId" ON "Core_User" ("DefaultShippingAddressId");

CREATE INDEX "EmailIndex" ON "Core_User" ("NormalizedEmail");

CREATE UNIQUE INDEX "UserNameIndex" ON "Core_User" ("NormalizedUserName") WHERE [NormalizedUserName] IS NOT NULL;

CREATE INDEX "IX_Core_User_VendorId" ON "Core_User" ("VendorId");

CREATE INDEX "IX_Core_UserAddress_AddressId" ON "Core_UserAddress" ("AddressId");

CREATE INDEX "IX_Core_UserAddress_UserId" ON "Core_UserAddress" ("UserId");

CREATE INDEX "IX_Core_UserClaim_UserId" ON "Core_UserClaim" ("UserId");

CREATE INDEX "IX_Core_UserLogin_UserId" ON "Core_UserLogin" ("UserId");

CREATE INDEX "IX_Core_UserRole_RoleId" ON "Core_UserRole" ("RoleId");

CREATE INDEX "IX_Core_WidgetInstance_WidgetId" ON "Core_WidgetInstance" ("WidgetId");

CREATE INDEX "IX_Core_WidgetInstance_WidgetZoneId" ON "Core_WidgetInstance" ("WidgetZoneId");

CREATE INDEX "IX_Inventory_Stock_ProductId" ON "Inventory_Stock" ("ProductId");

CREATE INDEX "IX_Inventory_Stock_WarehouseId" ON "Inventory_Stock" ("WarehouseId");

CREATE INDEX "IX_Inventory_StockHistory_CreatedById" ON "Inventory_StockHistory" ("CreatedById");

CREATE INDEX "IX_Inventory_StockHistory_ProductId" ON "Inventory_StockHistory" ("ProductId");

CREATE INDEX "IX_Inventory_StockHistory_WarehouseId" ON "Inventory_StockHistory" ("WarehouseId");

CREATE INDEX "IX_Inventory_Warehouse_AddressId" ON "Inventory_Warehouse" ("AddressId");

CREATE INDEX "IX_Inventory_Warehouse_VendorId" ON "Inventory_Warehouse" ("VendorId");

CREATE INDEX "IX_Localization_Resource_CultureId" ON "Localization_Resource" ("CultureId");

CREATE INDEX "IX_News_NewsItem_CreatedById" ON "News_NewsItem" ("CreatedById");

CREATE INDEX "IX_News_NewsItem_LatestUpdatedById" ON "News_NewsItem" ("LatestUpdatedById");

CREATE INDEX "IX_News_NewsItem_ThumbnailImageId" ON "News_NewsItem" ("ThumbnailImageId");

CREATE INDEX "IX_News_NewsItemCategory_NewsItemId" ON "News_NewsItemCategory" ("NewsItemId");

CREATE INDEX "IX_Orders_Order_BillingAddressId" ON "Orders_Order" ("BillingAddressId");

CREATE INDEX "IX_Orders_Order_CreatedById" ON "Orders_Order" ("CreatedById");

CREATE INDEX "IX_Orders_Order_CustomerId" ON "Orders_Order" ("CustomerId");

CREATE INDEX "IX_Orders_Order_LatestUpdatedById" ON "Orders_Order" ("LatestUpdatedById");

CREATE INDEX "IX_Orders_Order_ParentId" ON "Orders_Order" ("ParentId");

CREATE INDEX "IX_Orders_Order_ShippingAddressId" ON "Orders_Order" ("ShippingAddressId");

CREATE INDEX "IX_Orders_OrderAddress_CountryId" ON "Orders_OrderAddress" ("CountryId");

CREATE INDEX "IX_Orders_OrderAddress_DistrictId" ON "Orders_OrderAddress" ("DistrictId");

CREATE INDEX "IX_Orders_OrderAddress_StateOrProvinceId" ON "Orders_OrderAddress" ("StateOrProvinceId");

CREATE INDEX "IX_Orders_OrderHistory_CreatedById" ON "Orders_OrderHistory" ("CreatedById");

CREATE INDEX "IX_Orders_OrderHistory_OrderId" ON "Orders_OrderHistory" ("OrderId");

CREATE INDEX "IX_Orders_OrderItem_OrderId" ON "Orders_OrderItem" ("OrderId");

CREATE INDEX "IX_Orders_OrderItem_ProductId" ON "Orders_OrderItem" ("ProductId");

CREATE INDEX "IX_Payments_Payment_OrderId" ON "Payments_Payment" ("OrderId");

CREATE INDEX "IX_Pricing_CartRuleCategory_CategoryId" ON "Pricing_CartRuleCategory" ("CategoryId");

CREATE INDEX "IX_Pricing_CartRuleCustomerGroup_CustomerGroupId" ON "Pricing_CartRuleCustomerGroup" ("CustomerGroupId");

CREATE INDEX "IX_Pricing_CartRuleProduct_ProductId" ON "Pricing_CartRuleProduct" ("ProductId");

CREATE INDEX "IX_Pricing_CartRuleUsage_CartRuleId" ON "Pricing_CartRuleUsage" ("CartRuleId");

CREATE INDEX "IX_Pricing_CartRuleUsage_CouponId" ON "Pricing_CartRuleUsage" ("CouponId");

CREATE INDEX "IX_Pricing_CartRuleUsage_UserId" ON "Pricing_CartRuleUsage" ("UserId");

CREATE INDEX "IX_Pricing_CatalogRuleCustomerGroup_CustomerGroupId" ON "Pricing_CatalogRuleCustomerGroup" ("CustomerGroupId");

CREATE INDEX "IX_Pricing_Coupon_CartRuleId" ON "Pricing_Coupon" ("CartRuleId");

CREATE INDEX "IX_ProductComparison_ComparingProduct_ProductId" ON "ProductComparison_ComparingProduct" ("ProductId");

CREATE INDEX "IX_ProductComparison_ComparingProduct_UserId" ON "ProductComparison_ComparingProduct" ("UserId");

CREATE INDEX "IX_Reviews_Reply_ReviewId" ON "Reviews_Reply" ("ReviewId");

CREATE INDEX "IX_Reviews_Reply_UserId" ON "Reviews_Reply" ("UserId");

CREATE INDEX "IX_Reviews_Review_UserId" ON "Reviews_Review" ("UserId");

CREATE INDEX "IX_Shipments_Shipment_CreatedById" ON "Shipments_Shipment" ("CreatedById");

CREATE INDEX "IX_Shipments_Shipment_OrderId" ON "Shipments_Shipment" ("OrderId");

CREATE INDEX "IX_Shipments_Shipment_WarehouseId" ON "Shipments_Shipment" ("WarehouseId");

CREATE INDEX "IX_Shipments_ShipmentItem_ProductId" ON "Shipments_ShipmentItem" ("ProductId");

CREATE INDEX "IX_Shipments_ShipmentItem_ShipmentId" ON "Shipments_ShipmentItem" ("ShipmentId");

CREATE INDEX "IX_ShippingTableRate_PriceAndDestination_CountryId" ON "ShippingTableRate_PriceAndDestination" ("CountryId");

CREATE INDEX "IX_ShippingTableRate_PriceAndDestination_DistrictId" ON "ShippingTableRate_PriceAndDestination" ("DistrictId");

CREATE INDEX "IX_ShippingTableRate_PriceAndDestination_StateOrProvinceId" ON "ShippingTableRate_PriceAndDestination" ("StateOrProvinceId");

CREATE INDEX "IX_ShoppingCart_Cart_CreatedById" ON "ShoppingCart_Cart" ("CreatedById");

CREATE INDEX "IX_ShoppingCart_Cart_CustomerId" ON "ShoppingCart_Cart" ("CustomerId");

CREATE INDEX "IX_ShoppingCart_CartItem_CartId" ON "ShoppingCart_CartItem" ("CartId");

CREATE INDEX "IX_ShoppingCart_CartItem_ProductId" ON "ShoppingCart_CartItem" ("ProductId");

CREATE INDEX "IX_Tax_TaxRate_CountryId" ON "Tax_TaxRate" ("CountryId");

CREATE INDEX "IX_Tax_TaxRate_StateOrProvinceId" ON "Tax_TaxRate" ("StateOrProvinceId");

CREATE INDEX "IX_Tax_TaxRate_TaxClassId" ON "Tax_TaxRate" ("TaxClassId");

CREATE INDEX "IX_WishList_WishList_UserId" ON "WishList_WishList" ("UserId");

CREATE INDEX "IX_WishList_WishListItem_ProductId" ON "WishList_WishListItem" ("ProductId");

CREATE INDEX "IX_WishList_WishListItem_WishListId" ON "WishList_WishListItem" ("WishListId");

ALTER TABLE "Catalog_Product" ADD CONSTRAINT "FK_Catalog_Product_Core_User_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Catalog_Product" ADD CONSTRAINT "FK_Catalog_Product_Core_User_LatestUpdatedById" FOREIGN KEY ("LatestUpdatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Catalog_ProductPriceHistory" ADD CONSTRAINT "FK_Catalog_ProductPriceHistory_Core_User_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Inventory_StockHistory" ADD CONSTRAINT "FK_Inventory_StockHistory_Core_User_CreatedById" FOREIGN KEY ("CreatedById") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Orders_OrderItem" ADD CONSTRAINT "FK_Orders_OrderItem_Orders_Order_OrderId" FOREIGN KEY ("OrderId") REFERENCES "Orders_Order" ("Id") ON DELETE RESTRICT;

ALTER TABLE "ProductComparison_ComparingProduct" ADD CONSTRAINT "FK_ProductComparison_ComparingProduct_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Shipments_ShipmentItem" ADD CONSTRAINT "FK_Shipments_ShipmentItem_Shipments_Shipment_ShipmentId" FOREIGN KEY ("ShipmentId") REFERENCES "Shipments_Shipment" ("Id") ON DELETE RESTRICT;

ALTER TABLE "ShoppingCart_CartItem" ADD CONSTRAINT "FK_ShoppingCart_CartItem_ShoppingCart_Cart_CartId" FOREIGN KEY ("CartId") REFERENCES "ShoppingCart_Cart" ("Id") ON DELETE RESTRICT;

ALTER TABLE "WishList_WishListItem" ADD CONSTRAINT "FK_WishList_WishListItem_WishList_WishList_WishListId" FOREIGN KEY ("WishListId") REFERENCES "WishList_WishList" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Core_UserAddress" ADD CONSTRAINT "FK_Core_UserAddress_Core_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Core_User" ("Id") ON DELETE RESTRICT;

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190212090153_SimplCommerce_v1_0_0', '6.0.8');

COMMIT;

START TRANSACTION;

ALTER TABLE "ShoppingCart_Cart" ADD "LockedOnCheckout" boolean NOT NULL DEFAULT FALSE;

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190224050227_AddedCartLockOnCheckout', '6.0.8');

COMMIT;

START TRANSACTION;

INSERT INTO "Payments_PaymentProvider" ("Id", "AdditionalSettings", "ConfigureUrl", "IsEnabled", "LandingViewComponentName", "Name")
VALUES ('MomoPayment', '{"IsSandbox":true,"PartnerCode":"MOMOIQA420180417","AccessKey":"SvDmj2cOTYZmQQ3H","SecretKey":"PPuDXq1KowPT1ftR8DvlQTHhC03aul17","PaymentFee":0.0}', 'payments-momo-config', TRUE, 'MomoLanding', 'Momo Payment');

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190302122027_MomoPayment', '6.0.8');

COMMIT;

START TRANSACTION;

INSERT INTO "Payments_PaymentProvider" ("Id", "AdditionalSettings", "ConfigureUrl", "IsEnabled", "LandingViewComponentName", "Name")
VALUES ('NganLuong', '{"IsSandbox":true, "MerchantId": 47249, "MerchantPassword": "e530745693dbde678f9da98a7c821a07", "ReceiverEmail": "nlqthien@gmail.com"}', 'payments-nganluong-config', TRUE, 'NganLuongLanding', 'Ngan Luong Payment');

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190314044223_AddedNganLuongPayment', '6.0.8');

COMMIT;

START TRANSACTION;

INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Global.DefaultCultureUI', TRUE, 'Core', 'en-US');

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190710165614_DefaultCultureConfiguration', '6.0.8');

COMMIT;

START TRANSACTION;

UPDATE "Core_AppSetting" SET "Module" = 'Core'
WHERE "Id" = 'Global.DefaultCultureUI';

INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Global.CurrencyCulture', TRUE, 'Core', 'en-US');

INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Global.CurrencyDecimalPlace', TRUE, 'Core', '2');

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190726221912_AddedCurrencySetting', '6.0.8');

COMMIT;

START TRANSACTION;

CREATE TABLE "Localization_LocalizedContentProperty" (
    "Id" bigint NOT NULL,
    "EntityId" bigint NOT NULL,
    "EntityType" character varying(450) NULL,
    "CultureId" text NOT NULL,
    "ProperyName" character varying(450) NOT NULL,
    "Value" text NULL,
    CONSTRAINT "PK_Localization_LocalizedContentProperty" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Localization_LocalizedContentProperty_Localization_Culture_CultureId" FOREIGN KEY ("CultureId") REFERENCES "Localization_Culture" ("Id") ON DELETE CASCADE
);

INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Localization.LocalizedConentEnable', TRUE, 'Localization', 'true');

CREATE INDEX "IX_Localization_LocalizedContentProperty_CultureId" ON "Localization_LocalizedContentProperty" ("CultureId");

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190727083300_AddedContentLocalization', '6.0.8');

COMMIT;

START TRANSACTION;

INSERT INTO "Payments_PaymentProvider" ("Id", "AdditionalSettings", "ConfigureUrl", "IsEnabled", "LandingViewComponentName", "Name")
VALUES ('Cashfree', '{ "IsSandbox":true, "AppId":"358035b02486f36ca27904540853", "SecretKey":"26f48dcd6a27f89f59f28e65849e587916dd57b9" }', 'payments-cashfree-config', TRUE, 'CashfreeLanding', 'Cashfree Payment Gateway');

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190801065533_AddedCashfreePayment', '6.0.8');

COMMIT;

START TRANSACTION;

INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Global.AssetBundling', TRUE, 'Core', 'false');

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20190803175214_AddedAssetBundlingConfig', '6.0.8');

COMMIT;

START TRANSACTION;

ALTER TABLE "Catalog_ProductAttribute" DROP CONSTRAINT "FK_Catalog_ProductAttribute_Catalog_ProductAttributeGroup_GroupId";

ALTER TABLE "Catalog_ProductAttributeValue" DROP CONSTRAINT "FK_Catalog_ProductAttributeValue_Catalog_ProductAttribute_AttributeId";

ALTER TABLE "Catalog_ProductOptionCombination" DROP CONSTRAINT "FK_Catalog_ProductOptionCombination_Catalog_ProductOption_OptionId";

ALTER TABLE "Catalog_ProductTemplateProductAttribute" DROP CONSTRAINT "FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductAttribute_ProductAttributeId";

ALTER TABLE "Catalog_ProductTemplateProductAttribute" DROP CONSTRAINT "FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductTemplate_ProductTemplateId";

ALTER TABLE "Localization_LocalizedContentProperty" DROP CONSTRAINT "FK_Localization_LocalizedContentProperty_Localization_Culture_CultureId";

ALTER TABLE "Pricing_CartRuleCustomerGroup" DROP CONSTRAINT "FK_Pricing_CartRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId";

ALTER TABLE "Pricing_CatalogRuleCustomerGroup" DROP CONSTRAINT "FK_Pricing_CatalogRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId";

ALTER TABLE "Pricing_CatalogRuleCustomerGroup" DROP CONSTRAINT "FK_Pricing_CatalogRuleCustomerGroup_Pricing_CatalogRule_CatalogRuleId";

ALTER TABLE "ShippingTableRate_PriceAndDestination" DROP CONSTRAINT "FK_ShippingTableRate_PriceAndDestination_Core_District_DistrictId";

ALTER TABLE "ShippingTableRate_PriceAndDestination" DROP CONSTRAINT "FK_ShippingTableRate_PriceAndDestination_Core_StateOrProvince_StateOrProvinceId";

DROP INDEX "UserNameIndex";

DROP INDEX "RoleNameIndex";

ALTER TABLE "WishList_WishListItem" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "WishList_WishListItem" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "WishList_WishList" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "WishList_WishList" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Tax_TaxRate" ALTER COLUMN "Rate" TYPE numeric(18,2);

ALTER TABLE "Tax_TaxRate" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Tax_TaxRate" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Tax_TaxClass" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Tax_TaxClass" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "ShoppingCart_CartItem" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "ShoppingCart_CartItem" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "ShoppingCart_Cart" ALTER COLUMN "TaxAmount" TYPE numeric(18,2);

ALTER TABLE "ShoppingCart_Cart" ALTER COLUMN "ShippingAmount" TYPE numeric(18,2);

ALTER TABLE "ShoppingCart_Cart" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "ShoppingCart_Cart" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "ShippingTableRate_PriceAndDestination" ALTER COLUMN "ShippingPrice" TYPE numeric(18,2);

ALTER TABLE "ShippingTableRate_PriceAndDestination" ALTER COLUMN "MinOrderSubtotal" TYPE numeric(18,2);

ALTER TABLE "ShippingTableRate_PriceAndDestination" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "ShippingTableRate_PriceAndDestination" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Shipments_ShipmentItem" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Shipments_ShipmentItem" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Shipments_Shipment" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Shipments_Shipment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Search_Query" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Search_Query" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Reviews_Review" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Reviews_Review" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Reviews_Reply" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Reviews_Reply" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "ProductRecentlyViewed_RecentlyViewedProduct" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "ProductRecentlyViewed_RecentlyViewedProduct" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "ProductComparison_ComparingProduct" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "ProductComparison_ComparingProduct" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Pricing_Coupon" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Pricing_Coupon" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Pricing_CatalogRule" ALTER COLUMN "MaxDiscountAmount" TYPE numeric(18,2);

ALTER TABLE "Pricing_CatalogRule" ALTER COLUMN "DiscountAmount" TYPE numeric(18,2);

ALTER TABLE "Pricing_CatalogRule" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Pricing_CatalogRule" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Pricing_CartRuleUsage" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Pricing_CartRuleUsage" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Pricing_CartRule" ALTER COLUMN "MaxDiscountAmount" TYPE numeric(18,2);

ALTER TABLE "Pricing_CartRule" ALTER COLUMN "DiscountAmount" TYPE numeric(18,2);

ALTER TABLE "Pricing_CartRule" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Pricing_CartRule" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Payments_Payment" ALTER COLUMN "PaymentFee" TYPE numeric(18,2);

ALTER TABLE "Payments_Payment" ALTER COLUMN "Amount" TYPE numeric(18,2);

ALTER TABLE "Payments_Payment" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Payments_Payment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Orders_OrderItem" ALTER COLUMN "TaxPercent" TYPE numeric(18,2);

ALTER TABLE "Orders_OrderItem" ALTER COLUMN "TaxAmount" TYPE numeric(18,2);

ALTER TABLE "Orders_OrderItem" ALTER COLUMN "ProductPrice" TYPE numeric(18,2);

ALTER TABLE "Orders_OrderItem" ALTER COLUMN "DiscountAmount" TYPE numeric(18,2);

ALTER TABLE "Orders_OrderItem" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Orders_OrderItem" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Orders_OrderHistory" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Orders_OrderHistory" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Orders_OrderAddress" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Orders_OrderAddress" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Orders_Order" ALTER COLUMN "TaxAmount" TYPE numeric(18,2);

ALTER TABLE "Orders_Order" ALTER COLUMN "SubTotalWithDiscount" TYPE numeric(18,2);

ALTER TABLE "Orders_Order" ALTER COLUMN "SubTotal" TYPE numeric(18,2);

ALTER TABLE "Orders_Order" ALTER COLUMN "ShippingFeeAmount" TYPE numeric(18,2);

ALTER TABLE "Orders_Order" ALTER COLUMN "PaymentFeeAmount" TYPE numeric(18,2);

ALTER TABLE "Orders_Order" ALTER COLUMN "OrderTotal" TYPE numeric(18,2);

ALTER TABLE "Orders_Order" ALTER COLUMN "DiscountAmount" TYPE numeric(18,2);

ALTER TABLE "Orders_Order" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Orders_Order" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "News_NewsItem" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "News_NewsItem" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "News_NewsCategory" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "News_NewsCategory" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Localization_Resource" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Localization_Resource" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Localization_LocalizedContentProperty" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Localization_LocalizedContentProperty" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Inventory_Warehouse" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Inventory_Warehouse" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Inventory_StockHistory" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Inventory_StockHistory" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Inventory_Stock" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Inventory_Stock" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_WidgetZone" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_WidgetZone" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_WidgetInstance" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_WidgetInstance" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_Vendor" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_Vendor" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_UserClaim" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_UserClaim" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_UserAddress" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_UserAddress" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_User" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_User" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_StateOrProvince" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_StateOrProvince" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_RoleClaim" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_RoleClaim" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_Role" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_Role" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_Media" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_Media" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_Entity" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_Entity" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_District" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_District" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_CustomerGroup" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_CustomerGroup" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Core_Address" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Core_Address" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Contacts_ContactArea" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Contacts_ContactArea" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Contacts_Contact" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Contacts_Contact" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Comments_Comment" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Comments_Comment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Cms_Page" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Cms_Page" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Cms_MenuItem" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Cms_MenuItem" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Cms_Menu" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Cms_Menu" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductTemplate" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductTemplate" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductPriceHistory" ALTER COLUMN "SpecialPrice" TYPE numeric(18,2);

ALTER TABLE "Catalog_ProductPriceHistory" ALTER COLUMN "Price" TYPE numeric(18,2);

ALTER TABLE "Catalog_ProductPriceHistory" ALTER COLUMN "OldPrice" TYPE numeric(18,2);

ALTER TABLE "Catalog_ProductPriceHistory" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductPriceHistory" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductOptionValue" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductOptionValue" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductOptionCombination" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductOptionCombination" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductOption" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductOption" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductMedia" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductMedia" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductLink" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductLink" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductCategory" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductCategory" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductAttributeValue" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductAttributeValue" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductAttributeGroup" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductAttributeGroup" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_ProductAttribute" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_ProductAttribute" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_Product" ALTER COLUMN "SpecialPrice" TYPE numeric(18,2);

ALTER TABLE "Catalog_Product" ALTER COLUMN "Price" TYPE numeric(18,2);

ALTER TABLE "Catalog_Product" ALTER COLUMN "OldPrice" TYPE numeric(18,2);

ALTER TABLE "Catalog_Product" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_Product" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_Category" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_Category" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "Catalog_Brand" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "Catalog_Brand" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "ActivityLog_ActivityType" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "ActivityLog_ActivityType" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "ActivityLog_Activity" ALTER COLUMN "Id" DROP DEFAULT;
ALTER TABLE "ActivityLog_Activity" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;

INSERT INTO "Core_AppSetting" ("Id", "IsVisibleInCommonSettingPage", "Module", "Value")
VALUES ('Global.DefaultCultureAdminUI', TRUE, 'Core', 'en-US');

CREATE UNIQUE INDEX "UserNameIndex" ON "Core_User" ("NormalizedUserName");

CREATE UNIQUE INDEX "RoleNameIndex" ON "Core_Role" ("NormalizedName");

ALTER TABLE "Catalog_ProductAttribute" ADD CONSTRAINT "FK_Catalog_ProductAttribute_Catalog_ProductAttributeGroup_Grou~" FOREIGN KEY ("GroupId") REFERENCES "Catalog_ProductAttributeGroup" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Catalog_ProductAttributeValue" ADD CONSTRAINT "FK_Catalog_ProductAttributeValue_Catalog_ProductAttribute_Attr~" FOREIGN KEY ("AttributeId") REFERENCES "Catalog_ProductAttribute" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Catalog_ProductOptionCombination" ADD CONSTRAINT "FK_Catalog_ProductOptionCombination_Catalog_ProductOption_Opti~" FOREIGN KEY ("OptionId") REFERENCES "Catalog_ProductOption" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Catalog_ProductTemplateProductAttribute" ADD CONSTRAINT "FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductAttr~" FOREIGN KEY ("ProductAttributeId") REFERENCES "Catalog_ProductAttribute" ("Id") ON DELETE CASCADE;

ALTER TABLE "Catalog_ProductTemplateProductAttribute" ADD CONSTRAINT "FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductTemp~" FOREIGN KEY ("ProductTemplateId") REFERENCES "Catalog_ProductTemplate" ("Id") ON DELETE CASCADE;

ALTER TABLE "Localization_LocalizedContentProperty" ADD CONSTRAINT "FK_Localization_LocalizedContentProperty_Localization_Culture_~" FOREIGN KEY ("CultureId") REFERENCES "Localization_Culture" ("Id") ON DELETE CASCADE;

ALTER TABLE "Pricing_CartRuleCustomerGroup" ADD CONSTRAINT "FK_Pricing_CartRuleCustomerGroup_Core_CustomerGroup_CustomerGr~" FOREIGN KEY ("CustomerGroupId") REFERENCES "Core_CustomerGroup" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Pricing_CatalogRuleCustomerGroup" ADD CONSTRAINT "FK_Pricing_CatalogRuleCustomerGroup_Core_CustomerGroup_Custome~" FOREIGN KEY ("CustomerGroupId") REFERENCES "Core_CustomerGroup" ("Id") ON DELETE RESTRICT;

ALTER TABLE "Pricing_CatalogRuleCustomerGroup" ADD CONSTRAINT "FK_Pricing_CatalogRuleCustomerGroup_Pricing_CatalogRule_Catalo~" FOREIGN KEY ("CatalogRuleId") REFERENCES "Pricing_CatalogRule" ("Id") ON DELETE RESTRICT;

ALTER TABLE "ShippingTableRate_PriceAndDestination" ADD CONSTRAINT "FK_ShippingTableRate_PriceAndDestination_Core_District_Distric~" FOREIGN KEY ("DistrictId") REFERENCES "Core_District" ("Id") ON DELETE RESTRICT;

ALTER TABLE "ShippingTableRate_PriceAndDestination" ADD CONSTRAINT "FK_ShippingTableRate_PriceAndDestination_Core_StateOrProvince_~" FOREIGN KEY ("StateOrProvinceId") REFERENCES "Core_StateOrProvince" ("Id") ON DELETE RESTRICT;

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20220831092442_initialSchema', '6.0.8');

COMMIT;

