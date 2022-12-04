CREATE TABLE `data_platform_bank_statement_item_data`
(
	`BusinessPartner`                                  int(12) NOT NULL,            
	`SendingFinInstNumber`                             int(12) NOT NULL,                 
	`FinInstStatementID`                               int(12) NOT NULL,               
	`PayeeKey`                                         varchar(20) NOT NULL,     
	`ShortKey`                                         varchar(8) NOT NULL,     
	`AccountingDocument`                               int(16) NOT NULL,               
	`PostingDateAtBank`                                date DEFAULT NULL,              
	`PostingDateInDocument`                            date DEFAULT NULL,                  
	`ValueDateOfItemToBeCleared`                       date DEFAULT NULL,                       
	`ValueDateTime`                                    datetime DEFAULT NULL,          
	`AccountCurrencyKey`                               varchar(5) DEFAULT NULL,               
	`AmountInAccountCurrency`                          float(13) DEFAULT NULL,                    
	`FeesInAccountCurrency`                            float(13) DEFAULT NULL,                  
	`ForeignCurrencyKey`                               varchar(5) DEFAULT NULL,               
	`ForeignCurrencyAmount`                            float(13) DEFAULT NULL,                  
	`FeesInForeignCurrency`                            float(13) DEFAULT NULL,                  
	`BusinessTransactionCode`                          varchar(3) DEFAULT NULL,                    
	`Transaction`                                      varchar(4) DEFAULT NULL,        
	`ReferenceDocumentID`                              int(16) DEFAULT NULL,                
	`CountryKeyOfHouseBank`                            varchar(3) DEFAULT NULL,                  
	`HouseBank`                                        varchar(5) DEFAULT NULL,      
	`SWIFTCodeOfHouseBank`                             varchar(11) DEFAULT NULL,                 
	`HouseBankAccount`                                 varchar(5) DEFAULT NULL,             
	`CostCenter`                                       varchar(10) DEFAULT NULL,       
	`BusinessArea`                                     varchar(4) DEFAULT NULL,         
	`ProfitCenter`                                     varchar(10) DEFAULT NULL,         
	`ContractNumber`                                   varchar(13) DEFAULT NULL,           
	`ContractType`                                     varchar(1) DEFAULT NULL,         
	`PaymentOnAccountDocument`                         varchar(10) DEFAULT NULL,                     
	`AccountNumberOfAlternativePayer`                  varchar(10) DEFAULT NULL,                            
	`FinInstAccount`                                   varchar(18) DEFAULT NULL,           
	`BatchNumber`                                      varchar(3) DEFAULT NULL,        
	`ExchangeRate`                                     float(8) DEFAULT NULL,         
	`ItemText`                                         varchar(50) DEFAULT NULL,     
	`BankReferenceNumber`                              varchar(35) DEFAULT NULL,                
	`OverdueChargesFromToPartnersInAccountCurrency`    varchar(25) DEFAULT NULL,                                          
	`ProcessingType`                                   varchar(2) DEFAULT NULL,           
	`PaymentReference`                                 varchar(30) DEFAULT NULL,             
	`CustomerToCustomerReference`                      varchar(35) DEFAULT NULL,                        
	`PaymentAdviceAccountType`                         varchar(1) DEFAULT NULL,                     
	`PaymentAdviceNumber`                              varchar(16) DEFAULT NULL,                
	`TransactionID`                                    varchar(35) DEFAULT NULL,          
	`StatusOfChangesRegardingForeignCurrency`          varchar(1) DEFAULT NULL,                                    
	`ExchangeRateForeignCurrencyToAccountCurrency`     float(8) DEFAULT NULL,                                         
	`BusinessPartnerReferenceKey`                      varchar(12) DEFAULT NULL,                        
	`CommitmentItem`                                   varchar(24) DEFAULT NULL,           

    PRIMARY KEY (`BusinessPartner`,`SendingFinInstNumber`, `FinInstStatementID`, `PayeeKey`, `ShortKey`, `AccountingDocument`),

    CONSTRAINT `DataPlatformBankStatementItemData_fk` FOREIGN KEY (`BusinessPartner`, `FinInstStatementID`, `PayeeKey`, `ShortKey`) REFERENCES `data_platform_bank_statement_header_data` (`BusinessPartner`, `FinInstStatementID`, `PayeeKey`, `ShortKey`),
    CONSTRAINT `DataPlatformBankStatementItemDataAccountingDocument_fk` FOREIGN KEY (`AccountingDocument`) REFERENCES `data_platform_accounting_document_accounting_document_item_data` (`AccountingDocument`),
    CONSTRAINT `DataPlatformBankStatementItemDataCountryKeyOfHouseBank_fk` FOREIGN KEY (`CountryKeyOfHouseBank`, `HouseBank`, `SWIFTCodeOfHouseBank`, `HouseBankAccount`) REFERENCES `data_platform_house_bank_house_bank_data` (`FinInstCountry`, `HouseBank`, `FinInstSWIFTCode`, `HouseBankAccount`),
    CONSTRAINT `DataPlatformBankStatementItemDataFinInstAccount_fk` FOREIGN KEY (`FinInstAccount`) REFERENCES `data_platform_fin_inst_account_item_data` (`FinInstAccount`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;