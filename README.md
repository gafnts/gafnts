# Gabriel Fuentes

AI Engineer building production systems that ship and stay running.

Python, AWS, Terraform. Event-driven serverless infrastructure, LLM applications, and the architecture work underneath both.

[**Website**](https://gabriel.com.gt) · [**LinkedIn**](https://www.linkedin.com/in/gafnts/)

---

## Writing

### [**When does agency earn its cost?**](https://gabriel.com.gt/blog/when-does-agency-earn-its-cost/) — benchmarking LLM extraction strategies on legal documents

Same documents, same schema, three model families. The agent rarely beats a single LLM call. A clean counterexample to the reflex of wrapping every task in an agent loop.

`LLM Engineering` · `Agents` · `Evals`

---

## Projects

### [**agentic-kie**](https://github.com/gafnts/agentic-kie) — schema-driven key information extraction from documents

Typed Python library where a PDF enters as a file path and leaves as a validated Pydantic instance. Handles text-layer detection, OCR routing, image rendering, LLM orchestration, and retry logic. Two extraction strategies — single-pass and agentic ReAct — satisfy the same protocol and swap without touching downstream code. Model-agnostic via LangChain's `BaseChatModel`.

`Python` · `LangChain` · `Pydantic` · `ReAct`

<a href="https://github.com/gafnts/agentic-kie/actions/workflows/ci.yml"><img src="https://github.com/gafnts/agentic-kie/actions/workflows/ci.yml/badge.svg" alt="CI"></a>
<a href="https://github.com/gafnts/agentic-kie/actions/workflows/cd.yml"><img src="https://github.com/gafnts/agentic-kie/actions/workflows/cd.yml/badge.svg" alt="CD"></a>
<a href="https://codecov.io/github/gafnts/agentic-kie"><img src="https://codecov.io/github/gafnts/agentic-kie/graph/badge.svg" alt="codecov"></a>
<a href="https://pypi.org/project/agentic-kie/"><img src="https://img.shields.io/pypi/v/agentic-kie" alt="PyPI"></a>

### [**agentic-kie-deploy**](https://github.com/gafnts/agentic-kie-deploy) — production-grade serverless AWS pipeline

Terraform-managed event-driven AWS infrastructure for the agentic-kie library. Pre-signed S3 uploads trigger an event-driven Lambda extractor via EventBridge and SQS, writing structured results to DynamoDB. Environment-scoped IAM, plan-bound prod deployments, and ADR-driven architecture decisions.

`Terraform` · `AWS` · `Lambda` · `EventBridge` · `SQS` · `DynamoDB`

<a href="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-dev.yml"><img src="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-dev.yml/badge.svg" alt="Deploy dev"></a>
<a href="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-prod.yml"><img src="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-prod.yml/badge.svg" alt="Deploy prod"></a>

---

## Stack

<p>
<img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python">
<img src="https://img.shields.io/badge/LangChain-1C3C3C?style=flat-square&logo=langchain&logoColor=white" alt="LangChain">
<img src="https://img.shields.io/badge/Pydantic-E92063?style=flat-square&logo=pydantic&logoColor=white" alt="Pydantic">
<img src="https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=amazonwebservices&logoColor=white" alt="AWS">
<img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white" alt="Terraform">
<img src="https://img.shields.io/badge/uv-261230?style=flat-square&logo=uv&logoColor=white" alt="uv">
<img src="https://img.shields.io/badge/Ruff-261230?style=flat-square&logo=ruff&logoColor=D7FF64" alt="Ruff">
<img src="https://img.shields.io/badge/mypy-2A6DB2?style=flat-square&logo=python&logoColor=white" alt="mypy">
<img src="https://img.shields.io/badge/pytest-0A9EDC?style=flat-square&logo=pytest&logoColor=white" alt="pytest">
</p>

Strict typing and high coverage as defaults, not aspirations.

---

📬 Writing about Agentic AI, LLM Engineering, and ML Engineering → [**gabriel.com.gt/blog**](https://gabriel.com.gt/blog/)
