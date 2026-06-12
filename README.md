# Data Job Market Intelligence

A data-driven guide for junior job seekers: which roles, countries, and work styles offer the best opportunities.

**Tools**: Python (Pandas), SQL, Power BI, Excel  
**Dataset**: [Data Science Salaries 2025](https://www.kaggle.com/datasets/arnabchaki/data-science-salaries-2025) – 105K rows filtered to 41K entry/mid-level roles

---

## Quick Insights

| Question | Answer |
|----------|--------|
| Most entry-level jobs? | **Data Analyst** (3,853 roles – 4x more than DS) |
| Highest paying for juniors? | **Research Scientist** ($180K), but few openings |
| Best country for juniors? | **USA** (81% of all opportunities) |
| Remote vs on-site? | On-site pays **14% more** for entry-level |

📊 [Full dashboard preview](images/dashboard.overview.PNG)  
🔍 [Detailed analysis](reports/key_insights.md)

---

## What I learned from this project

- SQL and Python aren't just "nice to have" – they're how I filtered 100K rows down to actual insights
- Power BI forces you to think about what a recruiter actually wants to see in 5 seconds
- Real-world data is messy (had to handle missing salaries, standardize job titles, etc.)

---

## How to run this yourself

```bash
git clone https://github.com/yourusername/Data-Job-Market-Intelligence.git
cd Data-Job-Market-Intelligence
pip install -r requirements.txt