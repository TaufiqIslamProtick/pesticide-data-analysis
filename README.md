# Time Series Forecasting Using ARIMA Model

## Table of Contents
- [Overview](#overview)
- [Dataset](#dataset)
- [Technologies](#technologies)
- [Methodology](#methodology)
- [Installation](#installation)
- [Usage](#usage)
- [Results](#results)
- [Report](#report)

## Overview
This project uses the ARIMA model for time series forecasting, aiming to predict future values based on historical data patterns. It includes data preprocessing, model selection, evaluation, and forecast visualization.

## Dataset
- **Source**: FAO pesticide dataset
- **Details**: The analysis focuses on the **g/Int$** value for seven regions over 32 years (1990–2021).

## Technologies
- Python
- pandas
- statsmodels
- matplotlib
- Jupyter Notebook

## Methodology
1. **Preprocessing**: Filtered data to g/Int$ values for seven regions (Africa, Asia, Central America, Europe, Northern America, Oceania, South America).
2. **ARIMA Model**:
   - Performed ADF test to check stationarity of the times series (alpha = 0.1).
   - Differenced non-stationary time series.
   - Selected `p`, `d`, `q` parameters using ACF/PACF plots.
   - Forecasted future data points.
3. **Evaluation**: Measured accuracy using RMSE.
4. **Visualization**: Plotted actual vs. forecasted values.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ARIMA-forecasting.git
   cd ARIMA-forecasting
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Usage
1. Launch the notebook:
   ```bash
   jupyter notebook arima_forecasting.ipynb
   ```
2. Run all cells for analysis and results.

## Results
- RMSE on the test dataset: **X**.
- Forecasted values show a **Y% improvement** over the naive baseline.

## Report
### Introduction
The goal is to forecast g/Int$ pesticide use across seven regions using ARIMA, achieving an RMSE of **X**.

### Methodology Summary
- ADF test confirmed stationarity. Differencing was applied for non-stationary series, with `p` and `q` selected based on ACF/PACF plots. The model was evaluated on test data.

### Results
The model captured key trends and seasonal patterns, achieving an RMSE of **X**.

### Conclusion
ARIMA provides a reliable forecasting method, with potential for improvement through advanced models like SARIMA.