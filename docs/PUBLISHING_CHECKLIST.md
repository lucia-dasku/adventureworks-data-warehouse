# Final publishing checklist

The source files have been assembled into this GitHub upload package. The generated ZIP has been inspected statically; Microsoft Visual Studio and Power BI were **not** run in the preparation environment.

## Verified in the uploaded revised SSIS project

- [x] All six OLE DB connection managers reference the correct project parameters.
- [x] Project and three SSIS packages have `DontSaveSensitive` protection level.
- [x] The `.sln` file references the included `.dtproj` at the expected relative path.
- [x] All package, project and parameter XML files parse successfully.
- [x] Original computer/account labels were anonymized consistently in the published project files.
- [x] `.vs/`, `bin/`, `obj/`, per-user IDE files and compiled `.ispac` were excluded.
- [x] No plaintext connection passwords were detected in included project parameters or SSIS connection strings.

## Before making this repository public

- [ ] Confirm that the coursework implementation and included screenshots can be shared publicly under the course's rules, and review third-party content for attribution requirements.
- [ ] Open **this prepared copy** using `ssis/AdventureWorks-ETL.sln` in Visual Studio and run **Build Solution**; check it still opens correctly after the label/metadata anonymization.
- [ ] Inspect `powerbi/DW_lab2.2.pbix` in Power BI Desktop for local data-source settings, report-page state, and potential embedded personal identifiers. Reconfigure connection settings as appropriate. The Power BI file has not been executed in this preparation environment.
- [ ] Review the `.gitignore` and every GitHub upload item before publication. Do not add the `.bak`, course starter SQL scripts or the original submitted report without reviewing licensing, attribution and personal information.

## Caveats

- A successful SSIS build does not establish a successful ETL run. The packages include TRUNCATE steps; do not execute against a database containing data that must be preserved.
- The SQL file under `sql/` is a lab validation/debugging script and is not a standalone database installer. Reproducing the schema requires separately obtained authorized course-supplied SQL scripts.
- The course's SSAS Tabular stage was not completed; modeling for reporting was done in Power BI.
- The source-to-destination `EmailAddress` type-length warning (256 vs 50) remains a design limitation; no supplied sample emails exceeded 50 characters.
