CREATE TABLE companies (
    companyID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
    symbol VARCHAR(7) NOT NULL,
    companyName VARCHAR(100) NOT NULL,
	sector VARCHAR(50),
	subSector VARCHAR(60),
	city VARCHAR(35),
    companyState VARCHAR(35),
    cikCode INTEGER
);

CREATE TABLE transactions (
	transactionID INT PRIMARY KEY,
	dateTransaction DATE NOT NULL,
	companyID INT NOT NULL,
	openTransaction DECIMAL(14,10),
	closeTransaction DECIMAL(14,10) NOT NULL,
	lowTransaction DECIMAL(14,10),
	highTransaction DECIMAL(14,10),
	stockVolume INT
);

CREATE TABLE financialReports (
	reportID INTEGER PRIMARY KEY,
    companyID INTEGER NOT NULL,
    periodEnding DATE NOT NULL,
    costRevenue INTEGER,
    depreciation INTEGER,
    earningsBeforeTax INTEGER,
    grossProfit INTEGER,
    incomeTax INTEGER,
    interest INTEGER,
    netCashFlowOperating INTEGER,
    netCashFlowFinancing INTEGER,
    netCashFlowInvesting INTEGER,
    netCashFlow INTEGER,
    netIncome INTEGER NOT NULL,
    operatingIncome INTEGER,
    salesGeneralAdmin INTEGER,
    totalRevenue INTEGER
)