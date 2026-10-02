## Step 1 - The SDK source code is re-generated

The source code from this repo is generated using [OpenAPI generator][1] and the Open API
specification for the Tremendous API. Every 6 hours, the [update-sdk.yml](.github/workflows/update-sdk.yml)
workflow re-generates the `.rb` files and opens a `chore: regenerate SDK` Pull Request if the
specification changed.

To re-generate the files locally, run the following command:

```console
bin/generate
```

## Step 2 - Review and merge the Pull Request

Please review the Pull Request to double check that the changes to the API spec were generated
correctly.

The Pull Request description is a list of [Conventional Commit messages][2] that become the
changelog entries - specially `feat:` and `fix:`. Check that they match the changes, wait for the
test pipeline, and squash and merge the Pull Request to main.

## Step 3 - Merge the Release Please Pull Request

[Release Please](https://github.com/googleapis/release-please) will maintain a "Release PR" that
consolidates updates to `CHANGELOG.md` (based on the git history) and updating the `lib/tremendous/version.rb`
file.

When ready to publish a release, merge the Release PR and the [release.yml](.github/workflows/release.yml)
workflow will publish a new package to RubyGems and create a release on GitHub.

[1]: https://openapi-generator.tech
[2]: https://www.conventionalcommits.org/en/v1.0.0/
