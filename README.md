[readme.MD](https://github.com/user-attachments/files/24268993/readme.MD)
Dưới đây là **file README.md hoàn chỉnh**, viết theo đúng tinh thần **ghi chú – hướng dẫn chạy – output/log – experiment diary**, phù hợp để đặt trực tiếp trong **GitHub repository** của nhóm.

---

# Gas Optimization Benchmark on Ethereum Smart Contracts

**Reproducing & Re-evaluating GaSaver Patterns (Solidity v0.8.30)**

---

## 📌 Technical Report Information

* **Course:** Công nghệ Blockchain – IS6105.CH191
* **Project Title:** Đánh giá và phân loại mức độ gây ảnh hưởng chi phí gas trên smart contract Ethereum
* **Instructor:** Trần Hưng Nghiệp ([nghiepth@uit.edu.vn](mailto:nghiepth@uit.edu.vn))
* **Duration:** 09/2025 – 12/2025
* **Group:** Gas – STT: 8

### 👥 Team Members

| Name                 | Student ID |
| -------------------- | ---------- |
| Hoàng Công Danh      | 240101039  |
| Nguyễn Huy Tân       | 240101024  |
| Phạm Xuân Nhân       | 240104047  |
| Vũ Mai Quỳnh Loan    | 240104012  |
| Nguyễn Trần Ngọc Anh | 240104002  |
| Đỗ Minh Khôi         | 240101051  |

---

## 📖 Project Overview

This project **reproduces and re-evaluates 12 gas-expensive patterns** proposed in the paper:

> **GaSaver: A Static Analysis Tool for Saving Gas** (IEEE TSUSC, 2023)

using a **modern Solidity compiler (v0.8.30)**.

### 🔍 Key Differences from Original Paper

| Aspect   | Original GaSaver         | This Project                                   |
| -------- | ------------------------ | ---------------------------------------------- |
| Compiler | Solidity v0.7.0          | Solidity v0.8.30                               |
| Metric   | Sum (Deploy + Execution) | **Delta = Unoptimized − Optimized**            |
| Levels   | 3 levels                 | **4 levels (including Negative Optimization)** |
| Method   | Static analysis          | **Empirical measurement (Remix VM)**           |

We demonstrate that **some legacy optimization patterns become ineffective or harmful** under newer compiler versions.

---

## 🧠 Core Concept

### Metrics Used

* **Sum Gas**

  ```
  Sum = Transaction Cost + Execution Cost
  ```

* **Delta Gas (Proposed)**

  ```
  Delta (Δ) = Sum_unoptimized − Sum_optimized
  ```

### 4-Level Classification Framework (Delta-based)

| Level       | Delta Range        | Meaning                       |
| ----------- | ------------------ | ----------------------------- |
| **Level 1** | Δ ≥ 50,000         | Highly effective optimization |
| **Level 2** | 5,000 ≤ Δ ≤ 49,999 | Moderate optimization         |
| **Level 3** | 1 ≤ Δ ≤ 4,999      | Minor optimization            |
| **Level 4** | Δ ≤ 0              | No improvement or worse       |

---

## 📂 Repository Structure

```
.
├── patterns/
│   ├── p1_bytes/
│   │   ├── unoptimized.sol
│   │   ├── optimized.sol
│   │   └── log.json
│   ├── p2_initialize_default/
│   ├── ...
│   └── p12_one_side_conditional/

│
├── README.md
```

---

## ⚙️ Experimental Environment

| Component    | Configuration     |
| ------------ | ----------------- |
| IDE          | Remix IDE         |
| Compiler     | Solidity v0.8.30  |
| EVM          | Remix VM (Prague) |
| Optimization | Disabled          |
| Gas Limit    | 3,000,000         |

> ⚠️ **Note:** No transactions encountered *out-of-gas* errors during experiments.

---

## ▶️ How to Run the Experiments

### Step 1: Open Remix IDE

* Visit: [https://remix.ethereum.org](https://remix.ethereum.org)

### Step 2: Configure Environment

* **Environment:** Remix VM (Prague)
* **Compiler Version:** 0.8.30
* **Optimization:** OFF
* **Gas Limit:** 3,000,000

### Step 3: Run Each Pattern

For each pattern folder:

1. Open `unoptimized.sol`
2. Compile and deploy
3. Execute the target function
4. Record:g

   * Transaction Cost
   * Execution Cost
5. Repeat the same steps for `optimized.sol`

---

## 📤 Output & Logs

Each pattern includes:

* **Deployment gas**
* **Execution gas**
* **Total gas (Sum)**
* **Delta value**
* **Level classification**

Logs are stored in:

```
/patterns/<pattern_name>/log.json
/logs/remix_execution_logs/
```

These logs act as an **experiment diary**, including:

* Timestamp
* Compiler version
* Gas usage per run
* Notes on abnormal behavior (if any)

---

## 🧪 Experiment Diary (Summary)

* Total patterns tested: **12**
* Total contracts deployed: **24**
* Negative optimization cases: **6/12 (50%)**
* Major gas savings concentrated in:

  * Storage & Data-related patterns
* Logic & loop optimizations often:

  * Yield negligible savings
  * Or increase gas due to checked arithmetic & compiler overhead

---

## 📊 Key Findings

* **Delta is a dependent metric**, suitable for paired comparison (before vs after).
* Sum-based evaluation can be misleading.
* Compiler evolution significantly alters optimization effectiveness.
* Some “best practices” from older Solidity versions are now **anti-patterns**.

---

## 📎 References

1. Z. Zhao et al., *GaSaver: A Static Analysis Tool for Saving Gas*, IEEE TSUSC, 2023.
2. T. Chen et al., *GasChecker*, IEEE TETC, 2020.
3. E. Albert et al., *Gasol*, TACAS 2020.

---

## 📌 Notes

* This repository focuses on **reproducibility and empirical validation**.
* Delta-based classification is proposed as a **practical decision-making tool** for modern Solidity developers.
* Contributions and limitations are clearly separated from the original paper.

---

📬 *For questions or reproduction issues, please contact tannh.19@grad.uit.edu.vn*


