# Next Template

![Commitlint](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/commitlint.yaml?label=Commitlint)
![Editorconfig](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/editorconfig.yaml?label=Editorconfig)
![Prettier](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/prettier.yaml?label=Prettier)
![ESLint](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/eslint.yaml?label=ESLint)
![Remark](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/remark.yaml?label=Remark)
![Build](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/build.yaml?label=Build)

## Table of Contents

- [Getting Started](#getting-started)
- [Features](#features)
- [Scripts](#scripts)
- [Workflows](#workflows)
- [Change of Maintainer](#change-of-maintainer)
- [Contributing](#contributing)
- [License](#license)

**Next Template** is a template repository designed for quickly
starting new projects with pre-configured tools and best development practices.

This template includes ready-made solutions for integration with:

- **Git**.
- **GitHub**.
- **Commitlint**.
- **Conventional Commits**.
- **Husky**.
- **Pre Commit Hook**.
- **Lint Staged**.
- **GitHub Actions**.
- **Bun**.
- **EditorConfig**.
- **ESLint**.
- **Remark**.
- **Prettier**.
- **TypeScript**.
- **Next**.
- **React**.
- **Dependabot**.

## Getting Started

Install Bun and Git, then create a repository with **Use this template**.
Replace `YOUR_OWNER` and `YOUR_REPOSITORY` below with your repository's names.

```shell
git clone git@github.com:YOUR_OWNER/YOUR_REPOSITORY.git my-app

cd my-app

bun run init
bun dev
```

`init` installs dependencies and enables Husky hooks. The development server
listens on port 3000.

Before publishing your application:

- Update the title, description, authors, and social metadata in
  [`src/shared/config/metadata.ts`](src/shared/config/metadata.ts).

- Replace [`public/socials/cover.jpg`](public/socials/cover.jpg).

- Set `NEXT_PUBLIC_SITE_URL` in your deployment environment or a local `.env`
  file. It controls canonical and social URLs; the default is
  `http://localhost:3000`.

- Update the repository badges in this README and the maintainer files listed
  under [Change of Maintainer](#change-of-maintainer).

Build the application locally with:

```shell
bun run build
```

[`next.config.ts`](next.config.ts) enables standalone output. The Dockerfile
copies the standalone server, static assets, and public files into its image:

```shell
docker build -t my-app .
docker run --rm -p 3000:3000 my-app
```

The `Build` workflow publishes `ghcr.io/<owner>/<repository>` with a short
commit tag and `latest`. It uses the automatic `GITHUB_TOKEN` with
`packages: write`; no separate registry secret is configured.

Enable Pull requests and auto-merge if you keep the automatic PR and Dependabot
merge workflows. Review required check names against the existing jobs.

## Features

- **Flexibility**: Easily customizable template to adapt
  to different project types.

- **Git and GitHub Integration**: Pre-configured `.gitignore`
  and `.gitattributes` for efficient work with Git and GitHub.
  - **Conventional Commits & Commitlint**: If you don't want
    to think about how to write a commit every time,
    these plugins will help you.

    > It will be especially useful for teams that
    > have an ongoing debate about writing commits.

  - **Husky, Lint Staged & Pre Commit**: Won't let you submit
    bad code to the repository!

- **Continuous Integration (CI)**: Built-in CI support using GitHub Actions
  for automatic linting and building of your code with each change.

  > Also suitable for private repositories! GitHub Actions use
  > **cache**, **timeout-minutes**, **paths** and **workflow run**
  > to reduce the execution time, which means it will significantly
  > reduce your costs!
  - **Linters**: Help you maintain a consistent code writing style
    and find errors.

- **TypeScript**: Pre-configured **TypeScript** setup
  for improved reliability and development convenience.

- **Bots**:
  - **Dependabot**: No more wasting time updating dependencies!

## Scripts

- `init`: Installs dependencies and **Husky**.
- `dev`: Run dev mode.
- `build`: Run build mode.
- `eslint:fix`: Fix ESLint errors.
- `prettier:fix`: Format files with Prettier.

## Workflows

- [`auto-merge-dependabot-pull-request.yaml`](.github/workflows/auto-merge-dependabot-pull-request.yaml):
  Automatically merges dependabot **Pull Requests** to the **main** branch.

- [`commitlint.yaml`](.github/workflows/commitlint.yaml):
  Checks the commit message according
  to the **Conventional Commits** standard.

- [`build.yaml`](.github/workflows/build.yaml):
  Builds and pushes the Docker image to GitHub Container Registry
  on changes to the application or its build configuration.

- [`create-pull-request.yaml`](.github/workflows/create-pull-request.yaml):
  Automatically creates a **Pull Request**
  when pushing a branch to the repository.

- [`editorconfig.yaml`](.github/workflows/editorconfig.yaml):
  Checks all files with **Editorconfig Checker**.

  > All ignore files [`.editorconfig-checker.json`](.editorconfig-checker.json).

- [`eslint.yaml`](.github/workflows/eslint.yaml):
  Checks all **TypeScript** and **TSX** files with **ESLint**.

  > All ignore files [`.remarkignore`](.remarkignore).

- [`pre-commit.yaml`](.github/workflows/pre-commit.yaml):
  Runs a check on the contents of the **Pull Request** before merging.

- [`prettier.yaml`](.github/workflows/prettier.yaml):
  Checks all files with **Prettier**.

  > All ignore files [`.prettierignore`](.prettierignore).

- [`remark.yaml`](.github/workflows/remark.yaml):
  Checks all **Markdown** files with **Remark**.

- [`semantic-pull-request-title.yaml`](.github/workflows/semantic-pull-request-title.yaml):
  Validates the **Pull Request** title
  against the **conventional commits** standard.

- [`stale.yaml`](.github/workflows/stale.yaml):
  Removes **Issues** and **Pull Requests** that have not been active
  for more than **60 days**.

## Change of Maintainer

The following files use the names **Archoleat** and **nikkeyl** by default:

- [`CODEOWNERS`](.github/CODEOWNERS).
- [`LICENSE`](LICENSE).
- [`README.md`](README.md).
- [`package.json`](package.json), when adding package metadata.
- [`metadata.ts`](src/shared/config/metadata.ts).

Before using this template, replace these names with your
name, name of your team or the name of your organization.

> [!CAUTION]
> Review `LICENSE` and copyright notices before publishing your project.

## Contributing

Please read [**CONTRIBUTING**](https://github.com/archoleat/.github/blob/main/CONTRIBUTING.md)
to start contributing.

## License

This project is licensed under the [**MIT license**](LICENSE).
