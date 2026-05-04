# Gabriel Fuentes

AI Engineer building production systems that ship and stay running.

Python, AWS, Terraform. Event-driven serverless infrastructure, LLM applications, and the architecture work underneath both.

[Website](https://gabriel.com.gt) · [LinkedIn](https://www.linkedin.com/in/gafnts/)

---

## Writing

### [When does agency earn its cost?](https://gabriel.com.gt/blog/when-does-agency-earn-its-cost/) — benchmarking LLM extraction strategies on legal documents

Same documents, same schema, three model families. The agent rarely beats a single LLM call. A clean counterexample to the reflex of wrapping every task in an agent loop.

`LLM Engineering` · `Agents` · `Evals`

---

## Projects

### [agentic-kie](https://github.com/gafnts/agentic-kie) — schema-driven key information extraction from documents

Typed Python library where a PDF enters as a file path and leaves as a validated Pydantic instance. Handles text-layer detection, OCR routing, image rendering, LLM orchestration, and retry logic. Two extraction strategies — single-pass and agentic ReAct — satisfy the same protocol and swap without touching downstream code. Model-agnostic via LangChain's `BaseChatModel`.

`Python` `LangChain` `Pydantic` `ReAct`

### [agentic-kie-deploy](https://github.com/gafnts/agentic-kie-deploy) — production-grade serverless AWS pipeline

Terraform-managed event-driven AWS infrastructure for the agentic-kie library. Pre-signed S3 uploads trigger an event-driven Lambda extractor via EventBridge and SQS, writing structured results to DynamoDB. Environment-scoped IAM, plan-bound prod deployments, and ADR-driven architecture decisions.

---

## Work

**Data Scientist — Bam** *(closed-source)*
<br>Production ML and GenAI systems in a regulated industry. Event-driven architectures on AWS, LLM applications, and the MLOps/LLMOps work that keeps them running.

## Stack

**Infrastructure**
<br>
<img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python">
<img src="https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=amazonwebservices&logoColor=white" alt="AWS">
<img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white" alt="Terraform">
<img src="https://img.shields.io/badge/AWS%20Lambda-FF9900?style=flat-square&logo=awslambda&logoColor=white" alt="AWS Lambda">
<img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker">
<img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white" alt="PostgreSQL">
<img src="https://img.shields.io/badge/GitHub%20Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white" alt="GitHub Actions">
 
**ML & MLOps**
<br>
<img src="https://img.shields.io/badge/scikit--learn-F7931E?style=flat-square&logo=scikitlearn&logoColor=white" alt="scikit-learn">
<img src="https://img.shields.io/badge/PyTorch-EE4C2C?style=flat-square&logo=pytorch&logoColor=white" alt="PyTorch">
<img src="https://img.shields.io/badge/Polars-CD792C?style=flat-square&logo=polars&logoColor=white" alt="Polars">
<img src="https://img.shields.io/badge/MLflow-0194E2?style=flat-square&logo=mlflow&logoColor=white" alt="MLflow">
 
**GenAI**
<br>
<img src="https://img.shields.io/badge/Pydantic-E92063?style=flat-square&logo=pydantic&logoColor=white" alt="Pydantic">
<img src="https://img.shields.io/badge/LangChain-1C3C3C?style=flat-square&logo=langchain&logoColor=white" alt="LangChain">
<img src="https://img.shields.io/badge/LangSmith-1C3C3C?style=flat-square&logo=langchain&logoColor=white" alt="LangSmith">
 
Strict typing and high coverage as defaults, not aspirations.

---

📬 Writing about Agentic AI, LLM Engineering, and ML Engineering → [gabriel.com.gt/blog](https://gabriel.com.gt/blog/)
