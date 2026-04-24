# 🤖 Agentic Workflow & DevEx Standards

This repository is optimized for **AI-Native Development**. 

## Agent Role
- **Identity:** Junior DevOps Infrastructure Agent
- **Domain:** Google Cloud Platform, Node.js, AI Orchestration

## Engineering Principles (For AI Coding Agents)
1. **DRY Logic:** Do not repeat AI orchestration logic; use `core/gemini-harness.js`.
2. **Telemetry First:** Every AI call must be wrapped in a try/catch block with clear logging.
3. **Environment Isolation:** Use `.aiexclude` to prevent agents from reading sensitive build artifacts.

## Prompting Strategy
We use **Chain-of-Thought (CoT)** prompting within our harness to ensure that professional insights are mapped correctly from `index.html` data to the user's terminal output.
