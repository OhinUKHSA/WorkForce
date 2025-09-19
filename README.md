# Workforce Report – Standard Operating Procedure (SOP)

## Contents
1. Repository Structure
1. Description  
2. Before You Start  
3. Install Packages (first time only)  
4. Prepare the Data  
5. Create Main Report  
6. Important Notes  
7. Quick Monthly Checklist  

---

## 1. Repository Structure

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

## 1. Description  
This guide explains how to generate the **Workforce Report** each month. It covers setting up the repository, preparing data, and running the automated report in RStudio with Quarto.  

⚠️ **Note:** Only run the pipeline once new monthly data from SARD is available at the **start of the next month**. Running at the end of the month can cause issues with compliance trend data. You can re-run the report with old data as many times as needed.  

---

## 2. Before You Start  
1. Request installation of the following from the Service Now portal:  
   - **R**  
   - **RStudio**  
   - **Git (x64)**  

2. Download the repository from GitHub:  
   - Open **RStudio**. (see image 2.1 and 2.2)  
   - Go to **File → New Project → Version Control**. (see image 2.3)  
   - Select **Git**.  
   - Enter the following (see image 2.4):  
     - **Repository URL:** `https://github.com/OhinUKHSA/WorkForce.git`  
     - **Project directory name:** `Workforce` (or a name of your choice)  
     - **Location:** Choose where you want the project stored  
     - **Option:** Tick “Open in new directory”  
   - Click **Create Project**.  

   ✅ This will create a local copy of the repository with all necessary scripts (excluding data files, which must be downloaded separately for information governance reasons).  

3. Download the required data files from the **SARD system** (explained in Step 4).  

---

## 3. Install Packages (first time only)
1. In RStudio, open the script **`Load_packages.R`** (File → Open File → `Load_packages.R`).  
2. Select all code (**Ctrl + A**) and run (**Ctrl + Enter**).  
3. This can take several minutes to complete.  
4. When finished, you will see the message:  
   > *“All required packages are installed. You can run report.”*  

✅ You only need to do this step once per machine.  

---

## 4. Prepare the Data  
1. Navigate to your project’s **data** folder:
  **Workforce Project/data/**
2. Move or copy the previous month’s four `.csv` files into the **old_data** subfolder:  
  **Workforce Project/data/old_data/**
  - **Recommended**: Create a subfolder inside `old_data` (e.g., `September2025`) for version control.  

3. Download the **three new files** from SARD, save them as `.csv`, rename, and place them in `data/`:  
- `appraisees.csv`  
- `appraisers.csv`  
- `compliance.csv`  

4. Ensure that **`Trend_data.csv`** (which updates automatically) is also present in `data/`.  

At this point, your `data/` folder should contain:  
- `appraisees.csv`  
- `appraisers.csv`  
- `compliance.csv`  
- `Trend_data.csv`  

---

## 5. Create Main Report  
1. Open the R project file: **`WorkForce Project.Rproj`**.  
2. Open the Quarto file: **`WF_report_update.qmd`** (File → Open File → `WF_report_update.qmd`).  
3. Make sure the `.qmd` file is active in the editor tab. (see image 5.2)  
4. Click the **Render** button (see image 5.2).  
5. After a few seconds, a new file will be created (or overwritten):  
- **`WF_report_update.html`**  
⚠️ If you already have a `WF_report_update.html` from a previous month, move it into:  
  **`Workforce Project/data/old_data/[month_name]/`**
  before rendering the new one.
6. Share the `.html` file with stakeholders (you may rename it if needed).  

---

## 6. Important Notes  
- `Trend_data.csv` updates automatically each month, but you will need the initial file from the data owner.  
- ⚠️ If new SARD data is available before month end, delay running the report until the **start of the next month**.  
- Always save last month’s data in `data/old_data/` before replacing with new files.  
- Do not edit column names or file formats in the CSVs — the scripts expect consistent structure.  

---

## 7. Quick Monthly Checklist ✅  
- [ ] Download 3 files from SARD  
- [ ] Move old files to `data/old_data/`  
- [ ] Save new files in `data/` with correct names  
- [ ] Open `WF_report_update.qmd` in RStudio  
- [ ] Click **Render**  
- [ ] Share the newly generated `WF_report_update.html` report  



