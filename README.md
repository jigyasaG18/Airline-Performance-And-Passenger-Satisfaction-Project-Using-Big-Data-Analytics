# ✈️ 10-Year U.S. Airline Performance Analytics (2009–2018)

This project explores 10 years of U.S. airline performance data (2009–2018), derived from \~3GB of flight operation records. The dataset was processed using **Hadoop in Cloudera**, queried with **Hive**, and visualized using **Power BI** dashboards.

---

## 📊 Project Overview

* **Time Frame:** 2009 – 2018
* **Data Size:** \~3GB (raw CSV format)
* **Tools Used:**

  * Hadoop (Cloudera)
  * Hive (SQL-like query execution)
  * Power BI (Visualization)
* **Focus:** Arrival/Departure delays, on-time performance, diversions, carrier efficiency, distance vs. air time

---

## 📊 Key Performance Metrics

* On-Time Arrival Rate (%)
* Average Arrival & Departure Delay (mins)
* % of Flights Delayed
* Longest Delay (hrs)
* Average Air Time (hrs)
* Carrier Delay Performance
* Scheduled vs. Actual Flight Time
* Taxi-in and Taxi-out times
* Diversion trends by airport

---

## 📊 Overall Performance Summary (2009–2018)

| Metric              | Best Year    | Worst Year   |
| ------------------- | ------------ | ------------ |
| On-Time Rate        | 2016 (75%)   | 2014 (47%)   |
| Arrival Delay Avg   | 2016 (21m)   | 2017 (46m)   |
| Departure Delay Avg | 2016 (19m)   | 2014 (46m)   |
| % Flights Delayed   | 2016 (8%)    | 2014 (38%)   |
| Longest Delay       | 2017 (13.6h) | 2010 (9.9h)  |
| Avg Air Time        | 2018 (3.16h) | 2012 (1.21h) |

**Insight:** 2016 stands out as the most efficient year. 2014 and 2017 were the most problematic for delays.

---

## 📅 Yearly Insights & Recommendations

### 🔹 2009

**Insights:**

* Flights: 3,503 | 15% delayed
* Avg Delays: Arrival 27m, Departure 30m
* Top Delayed Carriers: YV, OH
* Diversion Hotspots: IAH, SLC, DEN

**Recommendations:**

1. Optimize carrier YV's scheduling and maintenance.
2. Increase gate availability at IAH, SLC.
3. Train ground staff on delay mitigation.
4. Adjust scheduling buffers during peak.
5. Monitor taxi-in/out times at high-volume hubs.

### 🔹 2010

**Insights:**

* Flights: 9,576 | 16% delayed | Longest Delay: 9.9h
* Delayed carriers: MQ, US, DL
* Diversions from DEN, ATL, PHX

**Recommendations:**

1. Improve carrier MQ’s routing.
2. Reevaluate ATL gate turnarounds.
3. Predict peak delays using Hive ML models.
4. Optimize crew resourcing for UA and US.
5. Coordinate taxiing schedules at DEN.

### 🔹 2011

**Insights:**

* Flights: 2,383 | 28% delayed | Avg Delays: 35m arrival
* OO (62.57%) had the most flights with significant delays

**Recommendations:**

1. Audit operations of OO and MQ.
2. Reduce diversions at SFO and SEA.
3. Improve weather-response turnaround.
4. Introduce automated taxi routing.
5. Enable dynamic gate reallocation.

### 🔹 2012

**Insights:**

* Flights: 1,006 | 17% delayed | Shortest average air time
* Primary carriers: OO (70%), MQ

**Recommendations:**

1. Consolidate OO as primary operator.
2. Reduce turnaround time at SLC and DEN.
3. Maintain short-haul consistency.
4. Integrate data-driven scheduling using Hive.
5. Use taxi-in analytics to limit ground hold.

### 🔹 2013

**Insights:**

* Flights: 1,095 | 28% delayed | On-Time: 45%
* Key carriers: WN (85%), VX

**Recommendations:**

1. Improve coordination between WN & VX.
2. Reduce taxiing times at BWI, DEN.
3. Optimize route planning from MCI.
4. Review scheduling lags in short-hauls.
5. Enhance delay notification systems.

### 🔹 2014

**Insights:**

* Flights: 1,006 | 38% delayed | Worst year overall
* Avg Delays: 41m arrival, 46m departure

**Recommendations:**

1. Redesign flight windows for EV.
2. Reinforce maintenance pre-checks.
3. Add gate buffer in peak slots.
4. Install gate availability prediction tools.
5. Focus on weather-based diversion strategy.

### 🔹 2015

**Insights:**

* Flights: 1,009 | 24% delayed | Top carriers: OO, NK, MQ

**Recommendations:**

1. Reschedule late-night flights.
2. Automate diversion responses.
3. Reduce LAX and SEA congestion.
4. Align MQ flights with lower-delay corridors.
5. Optimize HA ground operations.

### 🔹 2016

**Insights:**

* Flights: 1,022 | 8% delayed | Best performing year
* Carriers: DL (66%), AS

**Recommendations:**

1. Use DL’s 2016 operations as baseline.
2. Replicate AS's air time consistency.
3. Promote taxi-in strategies across hubs.
4. Enable real-time ETL feedback loops.
5. Expand on high-performance route modeling.

### 🔹 2017

**Insights:**

* Flights: 1,011 | 22% delayed | Longest Delay: 13.58h
* Carriers: AA, B6, HA, NK

**Recommendations:**

1. Audit 13h+ delays and implement escalation protocols.
2. Reengineer AA and B6 flight planning.
3. Improve taxi sequencing at BOS and JFK.
4. Strengthen pre-boarding logistics.
5. Apply AI to predict gate hold times.

### 🔹 2018

**Insights:**

* Flights: 1,939 | 13% delayed | Avg Air Time: 3.16 hrs
* Carriers: UA (89%), AS

**Recommendations:**

1. Expand UA-AS scheduling sync.
2. Reduce gate congestion at SFO, LAX.
3. Add layover buffers for long-haul.
4. Reinforce diversion handling protocol.
5. Track long-route reliability KPIs.

---

## ✅ Cross-Year Strategic Recommendations

1. Model operations after 2016’s success year.
2. Focus delay interventions on MQ, EV, YV, NK.
3. Reduce diversions from IAH, SFO, LAX using Hive traffic patterns.
4. Implement Hive-based delay prediction systems.
5. Use Power BI alerts for SLA breaches in real-time.

---

## 🗂️ Repository Structure

```
.
├── hive_queries/               # Hive queries for processing
├── dashboards/                 # Power BI dashboards
├── data_config/               # Hadoop ingestion configs
├── insights/                  # Year-wise detailed markdowns
├── README.md                  # Main documentation
```

---

## 📸 Dashboard Samples

### Overall Performance Dashboard

![Overall Dashboard](dashboards/overall_dashboard.png)

### Year-wise Example (2014)

![2014 Dashboard](dashboards/2014_dashboard.png)

### Carrier Performance Breakdown

![Carrier View](dashboards/carrier_performance.png)

---
