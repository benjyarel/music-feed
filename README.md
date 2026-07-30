# README

## Development

```
bin/dev
```

Starts Rails and Vite together (via [foreman](https://github.com/ddollar/foreman) and `Procfile.dev`), then connect at:

- App: http://localhost:3000
- Vite (HMR): http://localhost:3036 — no need to open it directly, the app connects to it automatically.

Don't run `bin/rails s` on its own: Hot Module Replacement (React Fast Refresh) won't work without the Vite server.
