#!/usr/bin/env bash
# API de LLM sin censura para desarrolladores en España — quickstart
set -euo pipefail
: "${UNLLM_KEY:?export UNLLM_KEY=sk-...}"

curl -s https://uncensored-llm.sbs/v1/chat/completions \
  -H "Authorization: Bearer $UNLLM_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"uncensored-llm","messages":[{"role":"user","content":"Explica sin rodeos cómo se calcula la capitalización de mercado de una criptomoneda."}]}' | head -c 2000
echo
