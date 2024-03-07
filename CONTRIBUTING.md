# Contributing


This library cannot directly accept PRs from the public as it is generated from the OpenAPI specification
 for the Tremendous API.

If you find an issue, please investigate whether it is a type problem with [our API reference][1] or a problem with the [ruby][2] generator. Then open an issue and we will investigate further.

## Running Tests

This library tests uses our [Sandbox environment][3], and depend on an API token and IDs for some seed
resources. They are executed via GitHub actions and don't need to be executed locally by contributors.

[1]: https://developers.tremendous.com/reference
[2]: https://github.com/OpenAPITools/openapi-generator/blob/master/docs/generators/ruby.md
[3]: https://developers.tremendous.com/docs/sandbox-environment
