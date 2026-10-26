# API de LLM sin censura para desarrolladores en España

> API compatible con OpenAI para equipos en España. Castellano natural, prompt de sistema respetado, sin párrafo de advertencia delante de cada respuesta. Base: https://uncensored-llm.sbs/v1

**API:** https://uncensored-llm.sbs/v1
**Web:** https://uncensored-llm.sbs

Si has usado un modelo de lenguaje para escribir sobre política, salud, seguridad ofensiva o cualquier tema que el proveedor extranjero considera sensible, ya sabes qué pasa: rechazo genérico, aviso de seguridad en lugar de contenido, respuesta a medias. Esta página describe una alternativa directa — una API compatible con OpenAI que contesta a la pregunta tal y como se hizo.

## Por qué importa en España

Un producto en castellano necesita un modelo que escriba en castellano y no una traducción con calcos. El segundo problema es más caro: modelos que en temas cotidianos — alquiler, nóminas, salud, auditorías de seguridad — responden con una plantilla y rompen cualquier automatización. Aquí la decisión vuelve al equipo de producto, mientras streaming, tool calling y JSON mode siguen funcionando igual. El único límite que se mantiene es el contenido ilegal.

## Llamada de ejemplo

```bash
export UNLLM_KEY="sk-..."
curl https://uncensored-llm.sbs/v1/chat/completions \
  -H "Authorization: Bearer $UNLLM_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"uncensored-llm","messages":[{"role":"user","content":"Explica sin rodeos cómo se calcula la capitalización de mercado de una criptomoneda."}],"stream":true}'
```

```python
# pip install openai
from openai import OpenAI
client = OpenAI(base_url="https://uncensored-llm.sbs/v1", api_key="sk-...")
r = client.chat.completions.create(
    model="uncensored-llm",
    messages=[{"role": "user", "content": "Explica sin rodeos cómo se calcula la capitalización de mercado de una criptomoneda."}],
)
print(r.choices[0].message.content)
```

```javascript
import OpenAI from "openai";
const ai = new OpenAI({ baseURL: "https://uncensored-llm.sbs/v1", apiKey: process.env.UNLLM_KEY });
const r = await ai.chat.completions.create({ model: "uncensored-llm", messages: [{ role: "user", content: "Explica sin rodeos cómo se calcula la capitalización de mercado de una criptomoneda." }] });
console.log(r.choices[0].message.content);
```

## Dónde se usa de verdad

| Caso | Motivo |
|---|---|
| Atención al cliente | Un bot que resuelve en vez de recitar la política interna. |
| Contenido en castellano | Textos, guiones y correos con registro propio. |
| Auditoría de seguridad | Trabajo ofensivo con autorización escrita del cliente. |
| Ficción adulta (18+) | Escenas explícitas entre adultos, sin elipsis. |

## Latencia desde tu ciudad

La latencia la marca tu operador, no la bandera. Mide desde tu máquina antes de culpar a la API:

```bash
curl -o /dev/null -s -w '%{time_total}s\n' https://uncensored-llm.sbs/v1/models
```

| Ciudad | Comunidad |
|---|---|
| Madrid | Comunidad de Madrid |
| Barcelona | Cataluña |
| Valencia | Comunidad Valenciana |
| Sevilla | Andalucía |
| Bilbao | País Vasco |
| Málaga | Andalucía |
| Zaragoza | Aragón |
| Murcia | Región de Murcia |
| Palma | Baleares |
| Las Palmas | Canarias |
| A Coruña | Galicia |
| Valladolid | Castilla y León |

## Preguntas que llegan de verdad

### ¿Es compatible con el SDK de OpenAI?

Sí. Solo hay que apuntar base_url a https://uncensored-llm.sbs/v1. chat.completions y models.list funcionan sin tocar nada más.

### ¿Hay plan gratuito o de prueba?

Las condiciones vigentes están publicadas en https://uncensored-llm.sbs. Los cambios de precio se anuncian allí, no en este repositorio.

### ¿Qué se bloquea?

Contenido ilegal, incluido cualquier material con menores. Fuera de eso, la respuesta va sobre lo que se preguntó.

### ¿Y el RGPD?

El tratamiento y la conservación se describen en la política de privacidad vigente en la web. En producción: clave por entorno y ningún dato personal en prompts sin base jurídica.

### ¿Funciona con Open WebUI o LibreChat?

Sí, ambos aceptan una base URL compatible con OpenAI. Basta introducir https://uncensored-llm.sbs/v1 y la clave.

## Esta documentación en otros idiomas

- [pt-BR] https://brown1023.github.io/llm-api-sem-censura-brasil/
- [es-419] https://brown1023.github.io/api-llm-sin-censura-latam/
- [id-ID] https://ryuuless.github.io/uncensored-llm-api-indonesia/
- [vi-VN] https://ryuuless.github.io/uncensored-llm-api-vietnam/
- [tr-TR] https://askcode24.github.io/sansursuz-llm-api-turkiye/
- [de-DE] https://askcode24.github.io/uncensored-llm-api-deutschland/
- [it-IT] https://palazuel0s2004.github.io/llm-api-senza-censura-italia/
- [en-IN] https://nirav0712.github.io/uncensored-llm-api-india/
- [en-PH] https://nirav0712.github.io/uncensored-llm-api-philippines/
- [ar] https://mohamedabderrehman.github.io/uncensored-llm-api-arabia/
- [ar-EG] https://mohamedabderrehman.github.io/uncensored-llm-api-egypt/

---

uncensored-llm.sbs — API compatible con OpenAI. Se bloquea el contenido ilegal y cualquier material con menores. El resto es responsabilidad de quien llama.