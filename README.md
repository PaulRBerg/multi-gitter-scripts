# Multi Gitter Scripts

A collection of scripts to use with [multi-gitter](https://github.com/lindell/multi-gitter).

Performing a multi-repository change is a two-step process:

1. Create the PRs in all repositories using the `run` command
2. Merge them using the `merge` command

## Available Scripts

### [Update Funding](./src/update-funding-url.sh)

```sh
multi-gitter run ./src/update-funding-url.sh \
--branch chore/update-funding-url \
--commit-message "chore: update funding url" \
--dry-run \
--log-level=debug \
--repo "PaulRBerg/prb-math" 
# Add more repositories here
```
