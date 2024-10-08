## Step 1 - Re-generate the SDK source code

The source code from this repo is generated using [OpenAPI generator][1] and the Open API specification for the Tremendous API. The `.rb` files can be re-generated and compiled with the following commands:

```console
bin/generate
```

After that, please review the changes to double check that the changes to the API spec were
generated correctly.

Please open a Pull Request with the file changes and wait for the test pipeline before merging it
to main. Make sure to use [Conventional Commit messages]([2]) to help automating the process -
specially `feat:` and `fix:`.

## Step 2 - Merge the Release Please Pull Request

[Release Please](https://github.com/googleapis/release-please) will maintain a "Release PR" that
consolidates updates to `CHANGELOG.md` (based on the git history) and updating the `lib/tremendous/version.rb`
file.

When ready to publish a release, merge the Release PR and the [release.yml](.github/workflows/release.yml)
workflow will publish a new package to RubyGems and create a release on GitHub.

[1]: https://openapi-generator.tech
[2]: https://www.conventionalcommits.org/en/v1.0.0/
