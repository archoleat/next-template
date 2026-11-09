# Next Template

A Next.js application starter with TypeScript, Tailwind CSS and a standalone
Docker build. It provides a starting application and repository checks;
review the conventions before adopting them for your project.

## Getting started

Create a repository with **Use this template**, install Bun and Git, then
replace the placeholders below:

```shell
git clone git@github.com:YOUR_OWNER/YOUR_REPOSITORY.git my-app

cd my-app

bun run init
bun dev
```

`init` installs dependencies and enables Husky hooks. The development server
uses port 3000. Hooks and CI catch the problems covered by their configured
checks; they do not replace tests or code review.

## Configuration

| Setting | Where to change it |
| --- | --- |
| Site URL | `NEXT_PUBLIC_SITE_URL` environment variable. |
| Page metadata | [metadata.ts](src/shared/config/metadata.ts). |
| Social image | [cover.jpg](public/socials/cover.jpg). |
| Standalone output | [next.config.ts](next.config.ts). |
| Maintainers | [CODEOWNERS](.github/CODEOWNERS) and README badges. |

The site URL defaults to `http://localhost:3000`. Replace the example
metadata and social image before publishing.

> [!CAUTION]
> Review the license and retain required copyright notices when reusing the
> template. Replace project-specific branding and metadata before publishing.

## Development checks

```shell
bun run build
bun eslint 'src/**/*.{ts,tsx}'
bun prettier . --check
bun remark . --quiet --frail
```

ESLint reads [`eslint.config.js`](eslint.config.js). Markdown checks use
Remark and [`.remarkignore`](.remarkignore); formatting uses Prettier and
[`.prettierignore`](.prettierignore).

Existing workflows check pull requests and selected pushes. `Build` covers
application files, Docker inputs, dependencies and build configuration;
it builds pull requests without publishing an image.

The [`stale.yaml`](.github/workflows/stale.yaml) workflow marks eligible
issues and pull requests stale after **90 inactive days**. Exempt labels and
closure behavior are configured in that workflow.

## Deployment

```shell
docker build -t my-app .
docker run --rm -p 3000:3000 my-app
```

The Dockerfile uses Bun to install dependencies and Node.js LTS to build and
run the standalone server. On a matching push to `main`, `Build` publishes
`ghcr.io/<owner>/<repository>` with a short commit tag and `latest`. It uses
`GITHUB_TOKEN` with `packages: write` for GHCR.

If you keep Dependabot auto-merge, enable pull requests and auto-merge, install
your publishing GitHub App, and provide `ARCHOLEATER_APP_ID` and
`ARCHOLEATER_APP_PRIVATE_KEY` as Actions secrets. Its token needs contents
and pull request write access. Review branch rules and required checks for
your own repository; this template does not copy GitHub settings.

## Contributing

See the [contribution guide](https://github.com/archoleat/.github/blob/main/CONTRIBUTING.md).

## License

[MIT](LICENSE).
