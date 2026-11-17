# Chapter 1

Analysis workspace for Chapter 1.

## Structure

```
Chapter 1/
├── Code/
│   └── Analysis.R          # main analysis script
├── Data/
│   ├── Raw/                # untouched source data
│   │   └── Cancer Medicine Approvals.xlsx
│   └── Clean/               # cleaned/processed data written by the script
└── Output/
    ├── Figures/              # exported plots
    └── Tables/               # exported tables
```

## Running the analysis

Open `Code/Analysis.R` in RStudio and run top to bottom. Paths are resolved
dynamically via `this.path::this.dir()`, so the script works regardless of
where the `Chapter 1` folder is located on disk — no hardcoded paths to edit.

Packages are managed with [`groundhog`](https://groundhogr.com/) for
reproducibility (pins package versions to a date rather than "whatever is
currently installed").

## Data

- `Data/Raw/Cancer Medicine Approvals.xlsx` — raw source data, not modified in place.
- `Data/Clean/` — outputs of any cleaning steps performed in `Analysis.R`.
