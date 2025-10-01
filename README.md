# TXC_Test - COBOL Customer Management System

## Overview

This repository contains a COBOL-based customer management system designed to run on IBM CICS (Customer Information Control System) environments. The application provides comprehensive customer data management capabilities including customer creation, inquiry, updates, and control operations.

## Copyright

Copyright IBM Corp. 2023

## Repository Structure

```
TXC_Test/
├── cobol/          # COBOL source programs
│   ├── crecust.cbl    # Customer creation program
│   ├── inqcust.cbl    # Customer inquiry program
│   ├── updcust.cbl    # Customer update program
│   └── custctrl.cbl   # Customer control program
└── copylib/        # COBOL copybooks (data structures)
    ├── customer.cpy   # Customer record structure
    ├── crecust.cpy    # Create customer communication area
    ├── inqcust.cpy    # Inquiry customer communication area
    ├── updcust.cpy    # Update customer communication area
    ├── custctrl.cpy   # Control customer communication area
    ├── proctran.cpy   # Process transaction structure
    ├── procdb2.cpy    # DB2 process structure
    ├── abndinfo.cpy   # Abend information structure
    └── sortcode.cpy   # Sort code definition
```

## COBOL Programs

### 1. CRECUST (Customer Creation)
**Author:** Jon Collett

**Purpose:** Creates new customer records in the system

**Key Features:**
- Accepts customer information (name, address, date of birth) from BMS application
- Determines appropriate datastore (VSAM or DB2) based on SORTCODE
- Manages customer number generation using Named Counters with enqueue/dequeue
- Performs credit checks via multiple credit agencies using Async API
- Aggregates and averages credit scores from multiple sources
- Writes customer records to CUSTOMER datastore
- Creates transaction records in PROCTRAN datastore
- Implements comprehensive error handling with rollback capabilities

### 2. INQCUST (Customer Inquiry)
**Author:** Jon Collett

**Purpose:** Retrieves customer information for viewing

**Key Features:**
- Accepts customer number as input
- Queries CUSTOMER datastore (VSAM)
- Returns complete customer record via communication area
- Returns low values if customer not found
- Implements CICS abend handling
- Supports VSAM RLS (Record Level Sharing) with storm drain pattern

### 3. UPDCUST (Customer Update)
**Author:** Jon Collett

**Purpose:** Updates existing customer records

**Key Features:**
- Accepts updated customer information
- Accesses VSAM datastore for record updates
- Validates field changes (limited fields are updateable)
- Does not create PROCTRAN records for updates
- Returns success/failure status to calling program
- Presentation layer responsible for field validation

### 4. CUSTCTRL (Customer Control)
**Author:** OGRADYJ

**Purpose:** Provides control operations for customer management

**Key Features:**
- Manages customer count operations
- Reads customer records from VSAM
- Returns control information via communication area
- Implements standard CICS response handling

## Technical Environment

### Platform
- **Target System:** IBM-370 (IBM Mainframe)
- **Transaction Manager:** CICS (Customer Information Control System)
- **Compiler:** IBM Enterprise COBOL

### Data Storage
- **VSAM:** Primary customer data storage
- **DB2:** Transaction processing records (PROCTRAN)
- **Named Counters:** Customer number generation and management

### Key Technologies
- CICS EDF (Execution Diagnostic Facility) support
- CICS Async API for credit agency integration
- VSAM RLS (Record Level Sharing)
- DB2 SQL embedded in COBOL
- BMS (Basic Mapping Support) for screen handling

## Data Structures

### Customer Record
The customer record includes:
- **Eyecatcher:** 4-character identifier ('CUST')
- **Customer Key:**
  - Sort Code: 6-digit numeric (default: 987654)
  - Customer Number: 10-digit numeric
- **Customer Name:** 60 characters
- **Address:** 160 characters
- **Date of Birth:** 8-digit numeric (DDMMYYYY)
- **Credit Score:** 3-digit numeric
- **Credit Score Review Date:** 8-digit numeric (DDMMYYYY)

## Error Handling

The system implements comprehensive error handling including:
- CICS HANDLE ABEND for abnormal termination management
- ABNDPROC program for standardized abend processing
- Storm drain pattern for VSAM RLS abends (AFCR, AFCS, AFCT)
- Retry mechanisms for SYSIDERR and other recoverable errors
- Rollback capabilities for failed transactions

## Program Flow

### Customer Creation Flow (CRECUST)
1. Receive customer data from BMS application
2. Determine datastore (VSAM/DB2) based on SORTCODE
3. Enqueue Named Counter for customer number
4. Increment and retrieve new customer number
5. Execute async credit checks to multiple agencies
6. Wait for responses (3 seconds)
7. Aggregate and average credit scores
8. Write customer record to CUSTOMER datastore
9. Write transaction record to PROCTRAN datastore
10. Dequeue Named Counter
11. Return SORTCODE and customer number to caller

If any write operation fails, the system decrements the Named Counter and performs cleanup.

## Development Notes

- Programs are compiled with CICS('SP,EDF') for debugging support
- SQL programs require CBL SQL compiler directive
- Debug mode available via SOURCE-COMPUTER WITH DEBUGGING MODE
- Standard COBOL divisions structure maintained throughout

## Authors

- **Jon Collett** - Primary developer (CRECUST, INQCUST, UPDCUST)
- **OGRADYJ** - Customer control operations (CUSTCTRL)

## Usage

These programs are designed to be called from CICS transactions. They communicate via DFHCOMMAREA (CICS communication area) and should be invoked through appropriate CICS transaction definitions.

## Dependencies

- IBM CICS Transaction Server
- IBM Db2 for z/OS (for PROCTRAN operations)
- VSAM datasets for customer records
- CICS Named Counter resources
- Credit agency API endpoints (for CRECUST async operations)
