Description
This repocontains a Jupbook for analysing taxonomic data. it reads data, handling missing values, calculating quick and very basic summary statistics, and generating stacked barplot visualisations. The work as wel is containerised using Docker for easy.

Features
Data Input: Reads taxonomic data from a CSV file.
Data Cleaning: Handles potential future missing values.
Statistical Analysis: Calculates summary statistics (total, mean, standard devs, min, max) for each phylum.
Visualisation: Generates: Stacked bar charts for species counts per phylum.
Containerised Workflow: Docker as a consistent environment for running the flow.

Prerequisites
Docker must be installed on your system.
Installation instructions: Docker Install Guide

Quick Start
1. Clone the Repository
bash
Copy code
git clone https://github.com/independentdatalab/GenetIQ_JN.git
cd GenetIQ_JN
2. Build the Docker Image
bash
Copy code
docker build -t genetiq_jn .
3. Run the Docker Container
bash
Copy code
docker run -p 8888:8888 -v "$(pwd)":/app genetiq_jn
4. Access the Jupyter Notebook
Copy the URL shown in the terminal (e.g., http://127.0.0.1:8888/?token=<your_token>) and open it in your web browser.

5. Open the Notebook

In Jupyter, open Notebook1.ipynb and execute the cells to run the analysis.

Files in This Repository
Notebook1.ipynb: Jupyter Notebook containing the data analysis.
Dockerfile: Docker configuration for setting up the environment.
taxonomic_data.csv: Sample raw taxonomic data.
Generated Outputs:
phylum_summary_statistics.csv: Summary statistics for each phylum.
total_species_count_stacked.jpeg: Stacked bar chart of species counts.
average_species_count.jpeg: Horizontal bar chart of average species counts with standard deviations.
How It Works
Data Loading: Reads a CSV file containing species, phylum, and count data.
Missing Value Handling: Cleans data based on specified thresholds for rows and columns.
Statistical Calculation: Aggregates total count, mean, standard deviation, min, and max values per phylum.
Visualisation:
Stacked bar chart for total counts per phylum.
Bar chart with error bars for average counts per phylum.
Stopping the Container
To stop the Docker container, press Ctrl + C in the terminal.
