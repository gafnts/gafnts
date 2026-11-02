# Gabriel Fuentes

I'm an AI engineer based in Guatemala City. I came up as a data scientist, which mostly taught me that a model working is only half of the problem. The rest starts after: building the system around it, keeping it running, and knowing what to do when it drifts.

That's why I learned the other half. Event-driven architectures, serverless inference, infrastructure as code, and deployment pipelines. Most of my work now covers the whole path, from the model to the infrastructure to the thing users actually touch.

[**Website**](https://gabriel.com.gt) · [**Portfolio**](https://gabriel.com.gt/portfolio/) · [**LinkedIn**](https://www.linkedin.com/in/gafnts/)

---

## Projects

### [**Faro**](https://github.com/gafnts/factored-hackathon-2026-faro) — Card support agent for a synthetic bank, in Spanish and Portuguese

Built solo in 10 days for the Factored AI & Data Hackathon 2026, where it took first place among 80+ submissions. The model reads and writes the language; code decides every step in a LangGraph workflow on Bedrock AgentCore, reaches the bank's tools only through Cedar policies at its Gateway, and reports a block only after reading the card back. An independent oracle grades it offline on held-out conversations. The model buys understanding, not safety.

`Python` · `LangGraph` · `Bedrock AgentCore` · `Cedar` · `Cognito` · `DynamoDB` · `dbt` · `Terraform`

<a href="https://github.com/gafnts/factored-hackathon-2026-faro/actions/workflows/quality-gates.yml"><img src="https://github.com/gafnts/factored-hackathon-2026-faro/actions/workflows/quality-gates.yml/badge.svg" alt="Quality gates"></a>
<a href="https://github.com/gafnts/factored-hackathon-2026-faro/actions/workflows/advisories.yml"><img src="https://github.com/gafnts/factored-hackathon-2026-faro/actions/workflows/advisories.yml/badge.svg" alt="Advisories"></a>
<a href="https://github.com/gafnts/factored-hackathon-2026-faro/actions/workflows/deploy-prototype.yml"><img src="https://github.com/gafnts/factored-hackathon-2026-faro/actions/workflows/deploy-prototype.yml/badge.svg" alt="Deploy prototype"></a>
<a href="https://faro.gabriel.com.gt"><img src="https://img.shields.io/website?url=https%3A%2F%2Ffaro.gabriel.com.gt&label=prototype&up_message=live&down_message=down" alt="Prototype"></a>

### [**agentic-kie**](https://github.com/gafnts/agentic-kie) — Schema-driven document extraction, from library to production service

One project in two repositories: a typed extraction library, benchmarked across three model providers, and the event-driven AWS service that puts it behind real traffic.

<dl><dd>

**[`agentic-kie`](https://github.com/gafnts/agentic-kie): the library.** A PDF enters as a file path and leaves as a validated Pydantic instance; text-layer detection, OCR routing, LLM orchestration and retries happen in between. Single-pass and agentic ReAct strategies satisfy the same protocol and swap without touching downstream code, on any LangChain `BaseChatModel`. Across 12 configurations on Kleister NDA, single-pass dominates.

`Python` · `LangChain` · `Pydantic` · `ReAct`

<a href="https://github.com/gafnts/agentic-kie/actions/workflows/ci.yml"><img src="https://github.com/gafnts/agentic-kie/actions/workflows/ci.yml/badge.svg" alt="CI"></a>
<a href="https://github.com/gafnts/agentic-kie/actions/workflows/cd.yml"><img src="https://github.com/gafnts/agentic-kie/actions/workflows/cd.yml/badge.svg" alt="CD"></a>
<a href="https://codecov.io/github/gafnts/agentic-kie"><img src="https://codecov.io/github/gafnts/agentic-kie/graph/badge.svg" alt="codecov"></a>
<a href="https://pepy.tech/projects/agentic-kie"><img src="https://img.shields.io/pepy/dt/agentic-kie" alt="Downloads"></a>
<a href="https://pypi.org/project/agentic-kie/"><img src="https://img.shields.io/pypi/v/agentic-kie?color=blue" alt="PyPI"></a>

</dd><dd>

**[`agentic-kie-deploy`](https://github.com/gafnts/agentic-kie-deploy): the deployment.** Terraform-provisioned AWS infrastructure that turns the library into an asynchronous extraction service. A caller pushes a document straight to S3 through a pre-signed URL and reads the structured result from an address it already holds; EventBridge and SQS feed a container-image Lambda in between. Under a 200-document burst, the agentic queue drains at half the speed.

`Terraform` · `AWS` · `API Gateway` · `Lambda` · `EventBridge` · `SQS` · `DynamoDB` · `S3`

<a href="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/checks.yml"><img src="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/checks.yml/badge.svg" alt="Quality gates"></a>
<a href="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-staging.yml"><img src="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-staging.yml/badge.svg" alt="Deploy staging"></a>
<a href="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-prod.yml"><img src="https://github.com/gafnts/agentic-kie-deploy/actions/workflows/deploy-prod.yml/badge.svg" alt="Deploy prod"></a>

</dd></dl>

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

<table>
<tr>
<td><b>AI</b></td>
<td>
<img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python">
<img src="https://img.shields.io/badge/LangGraph-1C3C3C?style=flat-square&logo=langgraph&logoColor=white" alt="LangGraph">
<img src="https://img.shields.io/badge/LangChain-1C3C3C?style=flat-square&logo=langchain&logoColor=white" alt="LangChain">
<img src="https://img.shields.io/badge/Pydantic-E92063?style=flat-square&logo=pydantic&logoColor=white" alt="Pydantic">
</td>
</tr>
<tr>
<td><b>Web</b></td>
<td>
<img src="https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white" alt="TypeScript">
<img src="https://img.shields.io/badge/React-20232A?style=flat-square&logo=react&logoColor=61DAFB" alt="React">
<img src="https://img.shields.io/badge/Astro-BC52EE?style=flat-square&logo=astro&logoColor=white" alt="Astro">
<img src="https://img.shields.io/badge/Tailwind_CSS-06B6D4?style=flat-square&logo=tailwindcss&logoColor=white" alt="Tailwind CSS">
</td>
</tr>
<tr>
<td><b>Cloud and delivery</b></td>
<td>
<img src="https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=amazonwebservices&logoColor=white" alt="AWS">
<img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white" alt="Terraform">
<img src="https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white" alt="GitHub Actions">
<img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker">
</td>
</tr>
<tr>
<td><b>Quality</b></td>
<td>
<img src="https://img.shields.io/badge/uv-261230?style=flat-square&logo=uv&logoColor=white" alt="uv">
<img src="https://img.shields.io/badge/Ruff-261230?style=flat-square&logo=ruff&logoColor=D7FF64" alt="Ruff">
<img src="https://img.shields.io/badge/mypy-2A6DB2?style=flat-square&logo=python&logoColor=white" alt="mypy">
<img src="https://img.shields.io/badge/pytest-0A9EDC?style=flat-square&logo=pytest&logoColor=white" alt="pytest">
<img src="https://img.shields.io/badge/pre--commit-FAB040?style=flat-square&logo=precommit&logoColor=black" alt="pre-commit">
<img src="https://img.shields.io/badge/Renovate-308BE3?style=flat-square&logo=renovate&logoColor=white" alt="Renovate">
<img src="https://img.shields.io/badge/Trivy-1904DA?style=flat-square&logo=trivy&logoColor=white" alt="Trivy">
</td>
</tr>
</table>

---

📬 Writing about agentic AI, LLM engineering and MLOps → [**gabriel.com.gt/blog**](https://gabriel.com.gt/blog/)
