# Gabriel Fuentes

I'm an AI engineer based in Guatemala City. I came up as a data scientist, which mostly taught me that a model working is only half of the problem. The rest starts after: building the system around it, keeping it running, and knowing what to do when it drifts.

That's why I learned the other half. Event-driven architectures, serverless inference, infrastructure as code, and deployment pipelines. Most of my work now covers the whole path, from the model to the infrastructure to the thing users actually touch.

[**Website**](https://gabriel.com.gt) · [**LinkedIn**](https://www.linkedin.com/in/gafnts/)

---

## Projects

### [**agentic-kie-deploy**](https://github.com/gafnts/agentic-kie-deploy) — Production-grade asynchronous AWS pipeline

Terraform-provisioned, event-driven AWS infrastructure that turns the `agentic-kie` library into an asynchronous extraction service. A caller asks for an upload slot, pushes a document straight to S3 via a pre-signed URL, and reads the structured result from an address it already holds—everything in between stays decoupled.

`Terraform` · `AWS` · `API Gateway` · `Lambda` · `EventBridge` · `SQS` · `DynamoDB` · `S3`

<a href="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/checks.yml"><img src="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/checks.yml/badge.svg" alt="Quality gates"></a>
<a href="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-staging.yml"><img src="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-staging.yml/badge.svg" alt="Deploy staging"></a>
<a href="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-prod.yml"><img src="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-prod.yml/badge.svg" alt="Deploy prod"></a>

### [**agentic-kie**](https://github.com/gafnts/agentic-kie) — Schema-driven key information extraction from documents

Typed Python library where a PDF enters as a file path and leaves as a validated Pydantic instance. Handles text-layer detection, OCR routing, image rendering, LLM orchestration, and retry logic. Two extraction strategies—single-pass and agentic ReAct—satisfy the same protocol and swap without touching downstream code. Model-agnostic via LangChain's `BaseChatModel`.

`Python` · `LangChain` · `Pydantic` · `ReAct`

<a href="https://github.com/gafnts/agentic-kie/actions/workflows/ci.yml"><img src="https://github.com/gafnts/agentic-kie/actions/workflows/ci.yml/badge.svg" alt="CI"></a>
<a href="https://github.com/gafnts/agentic-kie/actions/workflows/cd.yml"><img src="https://github.com/gafnts/agentic-kie/actions/workflows/cd.yml/badge.svg" alt="CD"></a>
<a href="https://codecov.io/github/gafnts/agentic-kie"><img src="https://codecov.io/github/gafnts/agentic-kie/graph/badge.svg" alt="codecov"></a>
<a href="https://pypi.org/project/agentic-kie/"><img src="https://img.shields.io/pypi/v/agentic-kie" alt="PyPI"></a>

---

## Writing

### [**A library is not a service**](https://gabriel.com.gt/blog/a-library-is-not-a-service/) — What it takes to put an LLM information extractor behind real traffic

Part one found the winning configuration; part two builds the event-driven AWS service around it and puts both extraction strategies under the same 200-document burst. The system trades latency, never cost, for stability. Under load, the agentic queue drains at half the speed, a premium the offline benchmark couldn't see.

`MLOps` · `AWS` · `Load Testing`

### [**When does agency earn its cost?**](https://gabriel.com.gt/blog/when-does-agency-earn-its-cost/) — Benchmarking LLM extraction strategies on legal documents

Same documents, same schema, three model families. The agent rarely beats a single LLM call. A clean counterexample to the reflex of wrapping every task in an agent loop.

`LLM Engineering` · `Agents` · `Evals`

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

---

📬 Writing about Software Engineering, MLOps and LLM Engineering → [**gabriel.com.gt/blog**](https://gabriel.com.gt/blog/)
