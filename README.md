# tangy-mkdocs-build-action

This GihUb Action will compile your MkDocs site and Deploy it to GitHub Pages using one of the default themes. It assumes that you have a `mkdocs.yml` file a in the top-level directory of your project and that the documentation source files (in Markdown format) are stored within the `docs/` directory. 

GitHub Action for building the Tangerine Documentation with Mkdocs and publish to GitHub Pages

## Example Action Workflow for rour Repo

```shell
name: Build Documentation using MkDocs

# Controls when the action will run. Triggers the workflow on push or pull request
# events but only for the master branch
on:
  push:
    branches: [master]
  pull_request:
    branches: [master]

jobs:
  build:
    name: Build and Deploy Documentation
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Master
        uses: actions/checkout@v2

      - name: Build and Deploy Documentation using MkDocs
        uses: Tangerine-Community/tangy-mkdocs-build-action@v1
```