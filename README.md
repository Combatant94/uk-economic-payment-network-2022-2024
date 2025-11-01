# 🇬🇧 UK Inter-Industry Economic Network (2022–2024)

Hey, I’m **Mohd Nafees** – MSc Data Science graduate from Birkbeck, University of London.  
This project started with a simple question:  
> *Who actually pays whom across UK industries?*

So I grabbed real data from the Office for National Statistics (ONS) and went digging.

<img width="847" height="440" alt="Screenshot 2025-11-01 at 12 30 24" src="https://github.com/user-attachments/assets/8cfdf784-1dfe-4696-9ebc-c996c9908306" />

<sub><em>Each circle represents an industry; the brighter the node, the higher its influence in the UK economy.</em></sub>

Between 2022 and 2024, almost **£4 trillion** moved between sectors.  
I treated every industry as a node, every transaction as a connection — and built a network to see which sectors drive the economy.

### 💡 Highlights
- **Core + Connectors** (manufacturing, logistics, retail): handle **85%+ of daily transactions**  
- **Finance sector**: controls the network despite <10% of flow — **63% of systemic influence**  
- **Peripheral sectors**: small players (care, arts, local services) — but essential for stabilit
That gap between *money flow* and *network power* was eye-opening.

<img width="660" height="595" alt="Screenshot 2025-11-01 at 12 38 55" src="https://github.com/user-attachments/assets/6aeaaa5c-da18-4b79-a912-4d3837075745" />
<p align="center"><sub><em>
Each line represents an industry cluster derived from PCA + K-Means.  
Cluster 3 (red): Core & Financial sectors – drive most of the UK’s trade volume and influence.  
Cluster 2 (green): Connectors – retail, logistics, and construction industries supporting national flow.  
Cluster 1 (orange): Bridge sectors – moderate trade volume but high betweenness, linking major groups.  
Cluster 0 (blue): Peripheral industries – care, arts, and local services that stabilize the system.  
</em></sub></p>

### Insight and summary report Preview
![Preview_Insight_Report](https://github.com/user-attachments/assets/9ac5feed-767e-434e-8f93-3c8601c69d05)


### PowerBI Dasboarb preview
![preview_powerbi_small](https://github.com/user-attachments/assets/14d763c0-2a29-476a-82d5-5879d5a00ce9)


---

### 📂 What’s Inside

| Folder/File | Description |
|--------------|-------------|
| `ukindustrytoindustrypaymentflowsjanuary2017tonovember2024final.xlsx` | Raw ONS data – industry payment flows |
| `publisheduksicsummaryofstructureworksheet.xlsx` | SIC industry structure reference |
| `industry_transactions_final_typed.csv.zip` | Cleaned transaction dataset (compressed due to GitHub’s 25 MB limit) |
| `industry_clusters_stable.csv` | Final network clusters from PCA + K-Means |
| `UK_paymnet_flows.ipynb` | Python notebook – NetworkX analysis, PCA, and K-Means clustering |
| `uk_industry_payments_analysis.sql` | SQL script – database creation, transformations, and fact/dimension tables |
| `UK_payment_flows_Report.pdf` | Final summary report with visuals |

---
### Code Preview
![preview_python_code_tiny](https://github.com/user-attachments/assets/55c66add-3048-40e9-a75f-4032733078f5)

### 🧠 Tools & Methods
- **Python**: pandas, numpy, NetworkX, matplotlib, sklearn  
- **SQL**: fact/dimension modelling, aggregation, joins  
- **Power BI**: DAX measures, dashboards, KPI visuals  
- **ONS Data**: UK Inter-industry transactions (2017–2024)

---

## 🔧 How I Built It (End-to-End Workflow)
	1.	📊 Data Collection

Downloaded official ONS datasets:
	•	ukindustrytoindustrypaymentflowsjanuary2017tonovember2024final.xlsx
	•	publisheduksicsummaryofstructureworksheet.xlsx
	
  2.	🧹 Data Cleaning & Mapping
Cleaned and mapped SIC codes in Python (pandas, numpy), saved as:
	•	industry_transactions_final_typed.csv
	•	industry_clusters_stable.csv
	
  3.	🧠 Network & Clustering Analysis
Built economic networks (NetworkX), computed centralities & ran K-Means + PCA
→ Notebook: notebooks/UK_paymnet_flows.ipynb

  4.	🗃️ SQL Modelling
Created Fact and Dimension tables from cleaned data
→ SQL File: sql/uk_industry_payments_analysis.sql
	
  5.	📈 Power BI Visualization
Built dashboard with DAX measures (flows, clusters, systemic influence)
→ Published interactive version on NovyPro (link below)
	
  6.	📝 Report
Combined visuals & findings into final report:
→ report/UK_payment_flows_Report.pdf

⸻

### 🚀 Live Dashboard
🎥 Explore the Interactive Dashboard: *(Coming soon – will be published on [NovyPro](https://www.novypro.com/) shortly)*  

Below is a preview image from the Power BI dashboard built with DAX measures and ONS trade data.

<img width="789" height="452" alt="Screenshot 2025-11-01 at 12 36 37" src="https://github.com/user-attachments/assets/7823920e-ccee-4224-9c98-b9c19e29f0b1" />

<img width="802" height="442" alt="Screenshot 2025-11-01 at 12 37 05" src="https://github.com/user-attachments/assets/0c491ebf-8e60-472a-82a9-8b19de6b1d82" />


## Run This Project Yourself
### 🧭 How to Run

1. Clone the repo  
   ```bash
   git clone https://github.com/Combatant94/uk-economic-payment-network-2022-2024.git
   Create database
   CREATE DATABASE uk_industry_payments;
   Import CSVs and run queries from
   sql/uk_industry_payments_analysis.sql
   
2.	Open the Jupyter notebook (UK_paymnet_flows.ipynb)
3.	Unzip industry_transactions_final_typed.csv.zip before loading
4.	Run the SQL script to create the database and tables
5.	Open Power BI dashboard (if available) to explore visual insights

### 🗂️ Data Source
All datasets used in this project are publicly available from the **Office for National Statistics (ONS)**:
- UK Inter-Industry Payment Flows (January 2017 – November 2024)
- UK Standard Industrial Classification (SIC) Structure Summary

Data is used under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

## Mohd Nafees
📍 London | 🎓 MSc Data Science – Birkbeck, University of London

🔗 LinkedIn￼ https://www.linkedin.com/in/mohd-nafees-59863524b/

📧 nafees.mohd.datascientist25@gmail.com

🗓️ October 2025

---
### 🌍 About This Repository
Built as part of my data science portfolio — combining public data, analytical storytelling, and visualization.  
I’m always open to feedback, collaboration, or entry-level data roles in London.
