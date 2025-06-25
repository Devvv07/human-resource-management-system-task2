# SQL Task 2 – Database Enhancements & Data Seeding

## "Task 1 code included for context and starts at line 1, Task 2 code begins at line 75"।

## 📋 Overview
इस प्रोजेक्ट में हमने पहले बनाए गए `department`, `employees`, `job`, `leave_request`, और `manager` tables में सुधार किए हैं और उन्हें data से populate किया है।

**Task 2 में ये changes शामिल हैं:**
1. `department` table में नया कॉलम `country` जोड़ा गया, default `'India'` दिया।
2. विभिन्न tables (`employees`, `department`, `leave_request`, `manager`, `job`) में bulk data insert किया गया।
3. कुछ existing rows update किए गए (`job`, `employees`)
4. unwanted rows delete की गईं (`leave_request`, `manager`, `department`)।

---

## ⚙️ Files / Structure

/sql-task2/
├── task2_alter_default_constraint.png # country column जोड़ने का script
├── task2.sql # सभी INSERT,UPDATE,DELETE statements
├── task2_update_delete.png # UPDATE और DELETE statements
└── README.md # यह documentation file

