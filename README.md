# End-to-End Data Engineering Project: dbt, BigQuery & GitHub  

This project demonstrates how to **integrate dbt (Data Build Tool) with Google BigQuery** to perform data transformations on a dataset containing **1 million+ records**. The entire pipeline is built step by step, including data modeling, transformations, and version control using GitHub.  

## Project Overview  

- **Generate Sample Data**: Create a synthetic dataset of **1M+ records** in BigQuery.  
- **Set Up dbt**: Configure dbt to work with BigQuery for efficient data transformations.  
- **Develop dbt Models**: Implement **staging and transformation models** using SQL & Jinja macros.  
- **Use GitHub for Version Control**: Track changes, collaborate, and manage dbt project files.  
- **Run dbt Pipelines**: Execute transformations and validate results in BigQuery.  

## Project Structure  
The project is organized as follows:

models/ - Contains dbt models for transformation
staging/ - Raw data staging models
marts/ - Final transformed models
macros/ - Reusable Jinja macros
seeds/ - Static CSV data for dbt seeds
dbt_project.yml - dbt project configuration
profiles.yml - dbt BigQuery credentials (not included for security reasons)
README.md - Project documentation
.gitignore - Specifies files to be excluded from GitHub


## Technologies Used  

- **dbt (Data Build Tool)** – SQL-based data transformation  
- **Google BigQuery** – Cloud data warehouse  
- **GitHub** – Version control for dbt project  
- **Jinja Macros** – Dynamic SQL for reusable transformations  
- **SQL** – Data modeling and transformation  

## Getting Started  

### Prerequisites  

- A **Google Cloud Platform (GCP) account**  
- **BigQuery enabled** on GCP  
- **Python 3.7+ installed**  
- **dbt CLI installed** (`pip install dbt-bigquery`)  
- **Git installed** and GitHub repository set up  

### Clone the Repository  

```sh
git clone https://github.com/your-username/dbt_bigquery_project.git
cd dbt_bigquery_project
```

Configure dbt
Update profiles.yml (ensure it contains your BigQuery project details)
Authenticate with GCP:

```sh
gcloud auth application-default login
```

Run dbt Models

```sh
dbt debug        # Check connection with BigQuery  
dbt seed         # Load seed data (if applicable)  
dbt run          # Run all models  
dbt test         # Run tests on models
```  




