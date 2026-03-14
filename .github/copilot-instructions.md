# Copilot Instructions — Myaila Support FAQ

## Sobre o projeto

Este repositório é a **Central de Ajuda (FAQ)** pública da Myaila, voltada para **clientes finais**.
O site é gerado com [Docsify](https://docsify.js.org/) e hospedado via **GitHub Pages** a partir da pasta `docs/`.

## Idiomas

| Contexto | Idioma |
|---|---|
| Documentação do usuário (`docs/`) | **Português brasileiro (pt-BR)** |
| README do repositório (`README.md`) | **Inglês** |
| Código, commits e workflows | **Inglês** |

| Contexto | Rota e URL |
|---|---|
| Website | https://myaila.com.br |
| Login | https://myaila.com.br/login |
| Registro | https://myaila.com.br/register |
| Recuperação de senha | https://myaila.com.br/forgot-password |
| Termos de uso | https://myaila.com.br/terms-of-use |
| Privacidade | https://myaila.com.br/privacy |
| Suporte e FAQ | https://suporte.myaila.com.br |
| Email | contato@myaila.com.br |

## Tom e linguagem das docs

- Fale **diretamente com o usuário** usando "você" (nunca "tu" ou tratamento formal "senhor/senhora").
- Seja **claro, objetivo e amigável**. Evite jargões técnicos; o público é leigo.
- Use frases curtas. Prefira voz ativa.
- Emojis são permitidos com moderação (✅, ⚠️, 💡) para destaque visual.

## Estrutura dos artigos

Cada artigo em `docs/` deve seguir este padrão:

```md
# Título do artigo

Parágrafo introdutório curto explicando o tema.

## Subtítulo (se necessário)

Conteúdo...

---

> Precisa de ajuda? Consulte as outras seções desta Central de Ajuda ou fale com o suporte.
```

- O `# Título` usa **H1** e deve ser único no arquivo.
- Seções internas usam `##` (H2) ou `###` (H3).
- Sempre encerre com o bloco de rodapé (`> Precisa de ajuda?...`).

## Organização de pastas

```
docs/
├── README.md          # Página inicial (home)
├── _sidebar.md        # Menu lateral
├── _assets/           # Imagens e recursos estáticos
├── geral/             # Informações gerais da plataforma
│   └── index.md       # Página de índice da categoria
└── <nova-categoria>/  # Novas categorias seguem o mesmo padrão
```

### Regras de nomeação

- Nomes de arquivo em **kebab-case**: `como-comecar.md`, `formas-de-pagamento.md`.
- Cada categoria tem um `index.md` que lista os artigos da seção.
- Toda vez que criar um artigo, **adicionar o link no `_sidebar.md`** e no `index.md` da categoria.
- Mantenha os itens e tópicos em ordem alfabética para facilitar a navegação.

## Links internos

- Use caminhos **relativos ao Docsify**, sem `../`:
  - De qualquer lugar para outra categoria: `conta/criar-conta.md` ✅
  - Nunca: `../conta/criar-conta.md` ❌
- Links entre artigos da mesma pasta: `como-comecar.md` ✅

## Checklist ao criar novo conteúdo

1. Criar o arquivo `.md` na categoria correta.
2. Adicionar link no `docs/_sidebar.md`.
3. Adicionar link no `index.md` da categoria.
4. Seguir a estrutura padrão de artigo (título, conteúdo, rodapé).
5. Verificar se todos os links internos funcionam.
