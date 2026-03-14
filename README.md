# Myaila - FAQ Support

FAQ for end customers built with [Docsify](https://docsify.js.org/).

## GitHub Pages

1. Go to **Settings** > **Pages** in the repository.
2. Under **Source**, select the desired branch and the **`/docs`** folder.
3. Click **Save**.

The FAQ will be available at `https://<your-username>.github.io/<your-repository>/`.

## Run Locally with Docker

### Prerequisites

- [Docker](https://www.docker.com/) installed.

### Start the Server

```bash
docker compose up --build
```

Open [http://localhost:3005](http://localhost:3005) in your browser.

### Stop the Server

```bash
docker compose down
```

> Changes to files inside `docs/` are automatically reflected thanks to the volume mapped in `docker-compose.yml`.

## Adding Content

1. Create a `.md` file in the corresponding category, e.g. `docs/geral/novo-artigo.md`.
2. Add the link in `docs/_sidebar.md` so it appears in the menu.
3. Commit and push on main branch — GitHub Pages will publish automatically.