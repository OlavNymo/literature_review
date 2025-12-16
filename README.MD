# TIØ4550 Financial Engineering - Specialization Project (Part A)

**Revisiting the Spanning Hypothesis with Machine Learning Methods: A Systematic Literature Review**

This repository contains the code and data for the methodology chapter of Part A of the specialization project in TIØ4550 Financial Engineering, Specialization Project, Autumn 2025 at NTNU. This part is a systematic literature review (SLR) of the spanning hypothesis in sovereign bond markets, specifically examining the intersection of traditional factor models and modern machine learning techniques.

The codebase documents the entire screening process, from the initial retrieval of articles from academic databases to the final selection of papers for the review.

## Project overview

The objective of this codebase is to ensure transparency and reproducibility in our systematic literature review. It handles the merging of search results, deduplication, and the distribution of articles for manual screening among the project members.

## Repository structure

### Screening Process
The screening was conducted in two main phases, organized into separate folders:

*   **`Screening_1/`**: Contains the initial processing of raw search results.
    *   `PrepareArticles.ipynb`: Merges raw CSV exports from databases (IEEE Xplore, ProQuest, Scopus, WoS), removes duplicates, and prepares the master list.
    *   `Screening.ipynb`: Logic for the first pass of title/abstract screening.
    *   `raw_data/`: Original export files from the academic databases.
    *   `outputs/`: Intermediate CSV files tracking decisions (Yes/No/Maybe) from each reviewer.

*   **`Screening_2/`**: Contains the second phase of full-text screening.
    *   `Screening2_Assignment.ipynb`: Assigns the remaining papers to reviewers for detailed analysis.
    *   `*_screening2.csv`: Individual decision files for the project members.

### Analysis & Visualization
*   **`Analysis/`**: Notebooks used to generate figures and statistics for the methodology chapter.
    *   `final_papers.csv`: The final set of included papers.
    *   `plots_datasets_and_variables.ipynb`: Analysis of the datasets and variables used across the selected literature.
    *   `plots.ipynb`: General descriptive statistics of the literature set (e.g., publication years, journals).

This readme file was partially generated using Google's Gemini 3 Pro