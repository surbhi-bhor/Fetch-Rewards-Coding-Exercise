# Fetch Rewards Coding Exercise

## Overview

This repository contains the solution for the Fetch Rewards Coding Exercise, focusing on demonstrating reasoning about data, creating a structured relational data model, writing SQL queries to answer business questions, identifying data quality issues, and effectively communicating findings to stakeholders.

## Repository Structure

The repository is structured as follows:

- **Fetch Rewards Relational Data Model.png**: The diagram representing the new structured relational data model based on the provided JSON data files.
- **Queries.sql**: SQL scripts that answer predetermined business questions based on the structured relational data model.
- **Step 1 Relational Data Model.pdf**: A PDF explaining the process and reasoning behind constructing the relational data model.
- **Step 2 SQL.pdf**: A PDF explaining the SQL queries, and how they answer the predetermined business questions.
- **Step 3 Evaluate Data Quality Issue.ipynb**: A Jupyter notebook used to evaluate and identify data quality issues in the dataset.
- **Step 4 Communicate with Stakeholders.pdf**: A PDF containing the communication written to a business stakeholder, summarizing the findings and suggestions regarding the data quality issues.

## Exercise Breakdown

### 1. Review Existing Unstructured Data and Create a Relational Data Model

The first part of this exercise involved reviewing the provided JSON files (receipts, users, brands) and creating a simplified structured relational diagram to represent the data in a warehouse. The diagram includes the following tables:

- **Receipts**
- **Receipt Items**
- **Users**
- **Brands**
- **CPG (Consumer Packaged Goods)**

The relational model diagram (found in `Fetch Rewards Relational Data Model.png`) shows the relationships between these tables, including primary and foreign keys.

### 2. Write SQL Queries for Business Stakeholders

My SQL queries were written to answer specific business questions using the new structured relational data model.
These SQL queries can be found in `Queries.sql`, with explanations provided in `Step 2 SQL.pdf`.

### 3. Evaluate Data Quality Issues

Using Python (Jupyter Notebook), I explored and evaluated the provided data for potential quality issues. Key findings include:

- **Inconsistent date values**: Instances where `purchaseDate` occurs after `dateScanned`, and cases where `pointsAwardedDate` precedes the purchase.
- **Missing or incorrect brand data**: Issues with missing `categoryCode` values in the `Brands` table.
- **Duplicate or incomplete records**: Discrepancies in the user and receipt data.

The code and results are available in `Step 3 Evaluate Data Quality Issue.ipynb`.

### 4. Communicate with Stakeholders

The final part of the exercise involved constructing an email or Slack message to communicate findings to a non-technical product or business leader. The message explains the data quality issues discovered and outlines the next steps to address these concerns. The communication can be found in `Step 4 Communicate with Stakeholders.pdf`.

## SQL Dialect

The SQL dialect used for this exercise is **My SQL**.

## Data Sources

- **Receipts Data**: Provided in `receipts.json.gz`.
- **Users Data**: Provided in `users.json.gz`.
- **Brands Data**: Provided in `brands.json.gz`.

## Requirements

- Develop a structured relational data model from the provided unstructured data.
- Write SQL queries to answer predetermined business questions.
- Identify data quality issues in the provided data.
- Communicate findings effectively to non-technical stakeholders.

## Conclusion

This repository contains all the components of the Fetch Rewards Coding Exercise, including the data model, SQL queries, data quality evaluation, and communication. The work demonstrates the ability to reason about data, generate insights, and communicate effectively with both technical and non-technical stakeholders.
