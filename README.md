# Next Template

![Commitlint](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/commitlint.yaml?label=Commitlint)
![Editorconfig](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/editorconfig.yaml?label=Editorconfig)
![Prettier](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/prettier.yaml?label=Prettier)
![ESLint](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/eslint.yaml?label=ESLint)
![Remark](https://img.shields.io/github/actions/workflow/status/archoleat/next-template/remark.yaml?label=Remark)

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

1. **Create a Repository**: Use this template
   to create a new repository on GitHub.

   > Since this is a **Public Template** you can click the button
   > **Use this template** for a faster and more convenient cloning.

1. **Clone the Repository**: Clone your new repository to your local machine.

1. **Start Development**: Develop your project,
   making changes according to your project's needs.

1. **Configure GitHub Actions**: Modify GitHub Actions
   settings to fit your requirements.

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
  for automatic linting, testing and building of your code with each change.

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

- `start`: Installs dependencies and **Husky**.
- `dev`: Run dev mode.
- `build`: Run build mode.

## Workflows

- [`auto-merge-dependabot-pull-request.yaml`](.github/workflows/auto-merge-dependabot-pull-request.yaml):
  Automatically merges dependabot **Pull Requests** to the **main** branch.

- [`commitlint.yaml`](.github/workflows/commitlint.yaml):
  Checks the commit message according
  to the **Conventional Commits** standard.

- [`create-pull-request.yaml`](.github/workflows/create-pull-request.yaml):
  Automatically creates a **Pull Request**
  when pushing a branch to the repository.

- [`editorconfig.yaml`](.github/workflows/editorconfig.yaml):
  Checks all files with **Editorconfig Checker**.

  > All ignore files [`.editorconfig-checker.json`](.editorconfig-checker.json).

- [`eslint.yaml`](.github/workflows/eslint.yaml):
  Checks all **TypeScript** files with **ESLint**.

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

Before using this template, replace this names with your
name, name of your team or the name of your organization.

> \[!CAUTION]
> Don't forget to change your license!

## Contributing

Please read [**CONTRIBUTING**](https://github.com/archoleat/.github/blob/main/CONTRIBUTING.md)
to start contributing.

## License

This project is licensed under the [**MIT license**](LICENSE).
