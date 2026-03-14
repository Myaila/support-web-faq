# web-faq

FAQ para clientes finais construído com [Docsify](https://docsify.js.org/).

## Estrutura de arquivos

```
docs/
├── index.html          # Entrada do Docsify
├── .nojekyll           # Necessário para GitHub Pages
├── README.md           # Página inicial
├── _sidebar.md         # Menu lateral
├── geral/
│   ├── README.md
│   ├── o-que-e-a-plataforma.md
│   └── como-comecar.md
├── conta/
│   ├── README.md
│   ├── criar-conta.md
│   └── alterar-senha.md
└── pagamento/
    ├── README.md
    ├── formas-de-pagamento.md
    └── reembolso.md
```

## GitHub Pages

1. Vá em **Settings** > **Pages** no repositório.
2. Em **Source**, selecione o branch desejado e a pasta **`/docs`**.
3. Clique em **Save**.

O FAQ ficará disponível em `https://<seu-usuario>.github.io/<seu-repositorio>/`.

## Visualizar localmente com Docker

### Pré-requisitos

- [Docker](https://www.docker.com/) instalado.

### Subir o servidor

```bash
docker compose up --build
```

Acesse [http://localhost:3000](http://localhost:3000) no navegador.

### Parar o servidor

```bash
docker compose down
```

> As alterações nos arquivos dentro de `docs/` são refletidas automaticamente graças ao volume mapeado no `docker-compose.yml`.

## Adicionar conteúdo

1. Crie um arquivo `.md` na categoria correspondente, por exemplo `docs/geral/novo-artigo.md`.
2. Adicione o link no `docs/_sidebar.md` para que apareça no menu.
3. Faça commit e push — o GitHub Pages publicará automaticamente.