# NS Segregration Abuse FOIPOP Analysis

1. Massive PDF of segregation data across 4 NS facilities (`raw_data/`)

2. Split single PDF into PDFs per facility using (`split_pdf/` `split_pdf.sh`)

3. Perform OCR using [nanonets](https://nanonets.com/) (`nanonets_extracted_csvs/`)

4. Initial programmatic clean of OCRed results (`parsing_notebook.ipynb` into `nanonets_extracted_csvs/stage1_tidy`)

5. Manual fixing of results (`parsing_notebook.ipynb` and manual into `nanonets_extracted_csvs/stage2_manual_tidy/`) including re-OCRing some misparsed individual pages.

6. Merge and finish tidying tables (`parsing_notebook.ipynb` into `nanonets_extracted_csvs/stage3_final_clean/`)

7. Generate 1 single clean table (`analysis_notebook.ipynb` into `clean_data/parsed_clean_correctional_segregration_data.csv`)

8. Perform some summaries/plots of data (`analysis_notebook.ipynb` into `clean_data/segregation_by_facility_type_and_ethnicity.csv` and `plots/`)


