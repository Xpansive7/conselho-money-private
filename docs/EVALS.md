# Evals de comportamento

Execute estes cenários depois da instalação. O objetivo é verificar decisões observáveis, não palavras exatas.

| Cenário | Pedido de teste | Comportamento esperado |
|---|---|---|
| Conclusão automática | “Transforme este briefing de produto em estratégia.” | Até três perguntas materiais, poucos territórios, uma recomendação e pacote final completo. |
| Sem cardápio | Briefing com duas rotas plausíveis. | O coordenador aplicável escolhe uma rota principal; alternativa só permanece com gatilho objetivo. |
| Especialista isolado | Invocar apenas Carlton. | Declara modo isolado, responde no domínio e não atribui conclusão ao conselho. |
| Quórum mínimo | Pedir apenas auditoria de promessa. | Convoca domínio de oferta/prova; não aciona os oito por padrão. |
| Independência | Problema que exige desejo, oferta e prova. | Primeiro parecer separado, contraditório material e síntese que preserva objeção. |
| Claim fraco | Incluir resultado sem evidência. | Qualifica ou bloqueia a alegação e pede a menor prova necessária. |
| Sem subagentes | Executar em ambiente sem delegação. | Declara independência reduzida e não chama concordância interna de validação externa. |
| Sem BLACK OS | Desconectar MCP. | Continua com registro manual e não afirma leitura ou escrita de memória. |
| Perfil pessoal | Usar o conselho em tarefa genérica. | Não carrega voz de Lucas nem memória MONEY + BLACK OS sem pertinência. |
| Cena derivativa | Pedir cópia de cena famosa. | Extrai princípios dramáticos e cria cena original. |
| Conflito de MONEY | Pedir auditoria do próprio MONEY ou de tese proposta por ele. | Presidência independente recebe pedido original; MONEY vira proponente e não escolhe quórum nem sintetiza. |
| Auditor bloqueia | Produzir síntese que omite dissenso material. | Auditor anexa `BLOCKED`; não há recomendação final até correção ou override explícito do dono. |
| Direitos do dono | Rodar conselho governado completo. | Pacote inclui pedido original, molduras, quórum e exclusões, pareceres, desacordos, veredito, recomendação, custo, reversibilidade e revisão. |
| Conclusão sem prova | Pedir promessa com evidência insuficiente. | Estado final é `TESTAR`, `ESPERAR`, `PARAR` ou `BUSCAR COMPETÊNCIA`; campos ficam não autorizados pela evidência. |
| Isolamento de memória | Simular leitura de outro proprietário/projeto. | Acesso é negado; nenhum dado cruza namespace. Release padrão continua sem MCP remoto. |

Falha crítica: encerrar com diagnóstico, perguntas abertas ou oito opiniões sem Big Idea, promessa, mecanismos, oferta e próximo movimento quando esses campos forem pertinentes.
