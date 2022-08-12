# GitHub Action to Create Releases Based on a Keyword
The Keyword Releaser will create a release based on the keyword specified in the arguments.

# Environment Variables
- `GITHUB_TOKEN` - _Required_ Allows the Action to authenticte with the GitHub API to create the release.

# Arguments
- _Required_ - A single keyword.  If the keyword is found in a commit message, a release will be created.  Although case is ignored, it's suggested to use a unique, uppercase string like `FIXED`, `READY_TO_RELEASE`, or maybe even `PINEAPPLE`.

# Examples
Here's an example workflow that uses the Keyword Releaser action.  The workflow is triggered by a `PUSH` event and looks for the keyword `"FIXED"`.

```
name: keyword-releaser

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - uses: ChristosGk/keyword-release-action@dev
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      with:
        args: 'FIXED'
```
# Publish an Action to the Marketplace

Review these documents in preparation for publishing your action to the GitHub Marketplace:

## Two-factor Authentication (2FA)
- [Accessing GitHub using two-factor authentication](https://help.github.com/en/articles/about-two-factor-authentication)
- [Configuring two-factor authentication](https://help.github.com/en/articles/configuring-two-factor-authentication)

## GitHub Marketplace Developer Agreement
- [GitHub Marketplace Developer Agreement](https://help.github.com/en/articles/github-marketplace-developer-agreement)

## Publishing an action in the GitHub Marketplace
- [Publishing an action in the GitHub Marketplace](https://developer.github.com/marketplace/actions/publishing-an-action-in-the-github-marketplace/)
