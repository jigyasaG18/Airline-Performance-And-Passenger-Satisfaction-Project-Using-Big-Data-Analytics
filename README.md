# ✈️ 10-Year U.S. Airline Performance Analytics (2009–2018)

This project analyzes a decade of U.S. domestic airline performance data from **2009 to 2018**. The dataset (~3GB) was processed using **Hadoop (Cloudera)** and **Hive queries**, with all insights visualized in **Power BI dashboards**.

---

## 🛠️ Project Stack

- **Data Volume:** ~3 GB (CSV files)
- **Processing Framework:** Apache Hadoop (Cloudera)
- **Query Language:** HiveQL
- **Visualization:** Power BI
- **Scope:** 10 years of airline delay, air time, and diversion performance across carriers, airports, and routes.

---

## 📊 Key Metrics Tracked

- On-Time Arrival Rate (%)
- Average Arrival & Departure Delay (in minutes)
- Percentage of Flights Delayed
- Longest Recorded Delay (in hours)
- Average Air Time
- Number of Diverted Flights
- Taxi-In and Taxi-Out Time
- Scheduled vs. Actual Flight Time
- Carrier-wise Flight Distribution

---

## 📈 Overall Performance (2009–2018)

| Metric                  | Best Year | Worst Year |
|------------------------|-----------|------------|
| On-Time Rate           | 2016 (75%)| 2014 (47%) |
| Arrival Delay Avg      | 2016 (21m)| 2017 (46m) |
| Departure Delay Avg    | 2016 (19m)| 2014 (46m) |
| % Flights Delayed      | 2016 (8%) | 2014 (38%) |
| Longest Delay          | 2017 (13.6h) | 2010 (9.9h) |
| Avg Air Time           | 2018 (3.16h) | 2012 (1.21h) |

**Trend Insight:**  
Performance peaked in **2016** due to system optimization, followed by a regression in **2017**. **2014** was the most challenging year for operations.

---

## 📅 Year-by-Year Analysis and Recommendations

---

### 🔹 2009

**Stats:**
- Flights: 3,503 | % Delayed: 15%
- Arrival Delay: 27m | Departure Delay: 30m
- On-Time: 66% | Longest Delay: 7.83h

**Recommendations:**
- Strengthen gate turnaround processes.
- Carriers like **OO and XE** showed high delay contribution—audit their scheduling and maintenance practices.

---

### 🔹 2010

**Stats:**
- Flights: 9,576 | % Delayed: 16%
- Arrival Delay: 25m | Departure Delay: 23m
- On-Time: 64% | Longest Delay: 9.9h

**Recommendations:**
- Improve weather-delay response, especially at major hubs like **DEN, ATL, LAX**.
- Optimize flight frequency for underperforming carriers (e.g., **MQ, YV**).

---

### 🔹 2011

**Stats:**
- Flights: 2,383 | % Delayed: 28%
- Arrival Delay: 35m | Departure Delay: 33m
- On-Time: 50% | Longest Delay: 7.33h

**Recommendations:**
- Focus on delay-heavy carriers like **MQ, OO** with high arrival delay averages.
- Increase buffer time in high-risk routes and seasonal adjustments.

---

### 🔹 2012

**Stats:**
- Flights: 1,006 | % Delayed: 17%
- Arrival Delay: 25m | Departure Delay: 23m
- On-Time: 66% | Longest Delay: 5.33h

**Recommendations:**
- Maintain current delay-reduction efforts.
- Reduce ground handling times at high-delay airports like **DEN, LAX, SFO**.

---

### 🔹 2013

**Stats:**
- Flights: 1,095 | % Delayed: 28%
- Arrival Delay: 22m | Departure Delay: 22m
- On-Time: 45% | Longest Delay: 2.90h

**Recommendations:**
- Investigate causes of sharp decline in on-time rate despite lower delays.
- Reevaluate scheduling buffers and coordination at medium hubs.

---

### 🔹 2014

**Stats:**
- Flights: 1,006 | % Delayed: 38% ❗
- Arrival Delay: 41m ❗ | Departure Delay: 46m ❗
- On-Time: 47% | Longest Delay: 7.25h

**Recommendations:**
- Major overhauls needed in ground operations.
- Delay-heavy carriers like **EV and AA** require full operational audits.
- Weather forecasting and proactive rerouting must be prioritized.

---

### 🔹 2015

**Stats:**
- Flights: 1,009 | % Delayed: 24%
- Arrival Delay: 32m | Departure Delay: 34m
- On-Time: 53% | Longest Delay: 5.12h

**Recommendations:**
- Continue recovery momentum from 2014.
- Enhance carrier performance transparency—track per-route delays more closely.

---

### 🔹 2016 ✅

**Stats:**
- Flights: 1,022 | % Delayed: 8%
- Arrival Delay: 21m ✅ | Departure Delay: 19m ✅
- On-Time: 75% ✅ | Longest Delay: 7.42h

**Recommendations:**
- Use 2016 as a **benchmark model** across all metrics.
- Analyze what worked well for **DL and AS**, which outperformed other carriers.

---

### 🔹 2017

**Stats:**
- Flights: 1,011 | % Delayed: 22%
- Arrival Delay: 46m ❗ | Departure Delay: 45m ❗
- On-Time: 63% | Longest Delay: 13.58h ❗

**Recommendations:**
- Investigate root causes of extreme long delays (13+ hours).
- Restructure contingency planning during storm and holiday seasons.

---

### 🔹 2018

**Stats:**
- Flights: 1,939 | % Delayed: 13%
- Arrival Delay: 37m | Departure Delay: 35m
- On-Time: 72% | Longest Delay: 5.67h

**Recommendations:**
- Performance rebounded strongly—continue carrier partnerships like **UA + AS**.
- Optimize long-haul scheduling to improve arrival precision.

---

## 💡 Final Recommendations

- **Adopt 2016’s best practices** in scheduling, coordination, and fleet maintenance across carriers.
- **Implement predictive delay analytics** using ML on historical Hive outputs.
- Strengthen **seasonal planning** in Q3 and Q4 for weather-prone regions.
- **Audit underperforming carriers annually** to enforce SLAs.
- Deploy **real-time monitoring systems** for diversion-prone airports (e.g., IAH, SFO, JFK).

---

## 🗂️ Repository Structure

```

.
├── hive\_queries/               # Hive queries for analysis
├── dashboards/                 # Power BI dashboards (.pbix/.pdf)
├── data\_config/               # Hadoop ingestion & ETL config
├── insights/                  # Markdown files for yearly insights
├── README.md                  # This detailed documentation

```

---
