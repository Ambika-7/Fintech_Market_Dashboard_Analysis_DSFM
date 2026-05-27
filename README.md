# Fintech Market Dashboard Analysis (DSFM)

A comprehensive Fintech Market Dashboard that provides a live snapshot of market indices (like NIFTY), portfolio tracking, top market movers, and machine learning-powered stock forecasting and sentiment analysis.

## 🌟 Features

* **Market Overview:** Live track of major indices and market breadth.
* **Portfolio Tracker:** View synthetic holdings, average costs, and current P&L.
* **Market Movers:** Instantly see the top gainers and losers in the market through an intuitive heatmap.
* **DSFM Analytics (Forecasting):**
  * Employs ARIMA, SARIMA, and GARCH models for time-series forecasting of stock prices.
  * Calculates risk metrics (Sharpe ratio, volatility, annual returns).
  * Analyzes recent news sentiment using `TextBlob` and `newsdata.io`.
  * Combines technical forecasts with market sentiment to generate BUY / WAIT / AVOID signals.

## 🏗️ Technology Stack

* **Frontend:** React, Vite, Tailwind CSS, Recharts
* **Backend:** Python, Flask, Pandas, Statsmodels (ARIMA/SARIMA), ARCH (GARCH)
* **Data:** historical market data CSV + live news API integration

## 🚀 Getting Started

To run this project locally, simply use the provided `run.bat` script on Windows.

1. Clone the repository:
   ```bash
   git clone https://github.com/Ambika-7/Fintech_Market_Dashboard_Analysis_DSFM.git
   cd Fintech_Market_Dashboard_Analysis_DSFM
   ```

2. Double-click **`run.bat`** (or run it from the command line). This script will:
   * Install Python backend dependencies.
   * Install Node.js frontend dependencies.
   * Start the Flask backend API.
   * Start the Vite React frontend and open your browser.

## 📝 License

This project is for educational and portfolio purposes. The trading signals generated are synthetic and not real financial advice.
