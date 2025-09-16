# Workforce Report Repository

This repository generates the **Workforce Report** each month using Quarto.  
It combines data downloaded from the SARD system with automatically updated trend data.

---

## Repository Structure

├── data/ # All required input data (.csv files)

│ ├── appraisees.csv # Exported from SARD

│ ├── appraisers.csv # Exported from SARD

│ ├── compliance.csv # Exported from SARD

│ ├── Trend_data.csv # Auto-updated each run with new monthly data

│ └── old_data/ # Backup of old csv files

│

├── Load_packages.R # Script to install/load required R packages

├── WF_report_update.qmd # Quarto file for report generation

├── Workforce_project.Rproj # R Project file

└── README.md # This document


---

## Setup Instructions

1. Open **Workforce_project.Rproj** in RStudio.  
   *(This ensures the project paths are set correctly.)*

2. Install packages (first time only):  
   - Open `Load_packages.R`  
   - Press **Ctrl + A** (select all), then **Ctrl + Enter** (run all)  

---

## Data Requirements

The `data/` folder must contain **four files**:

- `appraisees.csv` → Download from SARD  
- `appraisers.csv` → Download from SARD  
- `compliance.csv` → Download from SARD  
- `Trend_data.csv` → Auto-updated each month  

⚠️ File names and file type (`.csv`) must stay the same.

Old data should be moved into the `data/old_data/` folder as a backup.

---

## Running the Report

1. Ensure the correct `.csv` files are in the `data/` folder.  
2. Open `WF_report_update.qmd` in RStudio.  
3. Click the **Render** button (or run `quarto render WF_report_update.qmd`).  
4. The output will be:  
   - `WF_report_update.html` → the finished report.

---

## Notes

- `Trend_data.csv` is updated automatically when a new month is detected.  
- Run the report **once at the start of each month** after downloading new SARD data.  
- Keep old files in `data/old_data/` in case you need to roll back.  

---

## Quick Monthly Checklist

✅ Download 3 files from SARD  
✅ Move last month’s files into `old_data/`  
✅ Save new files in `data/` (correct names)  
✅ Open `WF_report_update.qmd` → Click **Render**  
✅ Share the `WF_report_update.html` report 


