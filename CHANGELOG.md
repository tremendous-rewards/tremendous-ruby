# Changelog

## [5.12.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.11.0...tremendous_ruby/v5.12.0) (2025-08-07)


### Features

* add address fields to funding sources meta schema ([c2c0005](https://github.com/tremendous-rewards/tremendous-ruby/commit/c2c0005c1c3149c460f4be12f635f184615e1907))
* add Cash App as product category ([c2c0005](https://github.com/tremendous-rewards/tremendous-ruby/commit/c2c0005c1c3149c460f4be12f635f184615e1907))
* regenerate SDK ([#76](https://github.com/tremendous-rewards/tremendous-ruby/issues/76)) ([c2c0005](https://github.com/tremendous-rewards/tremendous-ruby/commit/c2c0005c1c3149c460f4be12f635f184615e1907))

## [5.11.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.10.0...tremendous_ruby/v5.11.0) (2025-07-28)


### Features

* add credit_limit_cents to funding source for commercial invoicing ([ad5528a](https://github.com/tremendous-rewards/tremendous-ruby/commit/ad5528aec291806f601a5064aa2af44aa6b9fe8f))
* include invoice data in funding sources schema ([ad5528a](https://github.com/tremendous-rewards/tremendous-ruby/commit/ad5528aec291806f601a5064aa2af44aa6b9fe8f))
* regenerate SDK ([#72](https://github.com/tremendous-rewards/tremendous-ruby/issues/72)) ([ad5528a](https://github.com/tremendous-rewards/tremendous-ruby/commit/ad5528aec291806f601a5064aa2af44aa6b9fe8f))
* update limit param in List rewards ([ad5528a](https://github.com/tremendous-rewards/tremendous-ruby/commit/ad5528aec291806f601a5064aa2af44aa6b9fe8f)), closes [#71](https://github.com/tremendous-rewards/tremendous-ruby/issues/71)


### Bug Fixes

* update amount_money to amount in topup api ([ad5528a](https://github.com/tremendous-rewards/tremendous-ruby/commit/ad5528aec291806f601a5064aa2af44aa6b9fe8f))

## [5.10.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.9.0...tremendous_ruby/v5.10.0) (2025-06-09)


### Features

* add more fields to the Funding Source resource ([44c0d1d](https://github.com/tremendous-rewards/tremendous-ruby/commit/44c0d1d0ee3c78354baf4e0b357b8541d044db70))
* add support for the Cancel Reward endpoint ([44c0d1d](https://github.com/tremendous-rewards/tremendous-ruby/commit/44c0d1d0ee3c78354baf4e0b357b8541d044db70))
* add support for the Connected Organization and Connected ([44c0d1d](https://github.com/tremendous-rewards/tremendous-ruby/commit/44c0d1d0ee3c78354baf4e0b357b8541d044db70))
* regen SDK code ([#65](https://github.com/tremendous-rewards/tremendous-ruby/issues/65)) ([44c0d1d](https://github.com/tremendous-rewards/tremendous-ruby/commit/44c0d1d0ee3c78354baf4e0b357b8541d044db70))
* update fields regarding disclosures on the Products resource ([44c0d1d](https://github.com/tremendous-rewards/tremendous-ruby/commit/44c0d1d0ee3c78354baf4e0b357b8541d044db70))


### Bug Fixes

* expect `200` instead of `201` when creating a Report or a Campaign ([44c0d1d](https://github.com/tremendous-rewards/tremendous-ruby/commit/44c0d1d0ee3c78354baf4e0b357b8541d044db70))

## [5.9.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.8.0...tremendous_ruby/v5.9.0) (2024-12-03)


### Features

* add `DeliveryMetadata` to `POST /orders` ([#53](https://github.com/tremendous-rewards/tremendous-ruby/issues/53)) ([924de4c](https://github.com/tremendous-rewards/tremendous-ruby/commit/924de4cba47339dceca4f8bb495a552d760c1682)), closes [#52](https://github.com/tremendous-rewards/tremendous-ruby/issues/52)


### Bug Fixes

* add missing `FraudReviewReason` value ([924de4c](https://github.com/tremendous-rewards/tremendous-ruby/commit/924de4cba47339dceca4f8bb495a552d760c1682))
* fix typos ([924de4c](https://github.com/tremendous-rewards/tremendous-ruby/commit/924de4cba47339dceca4f8bb495a552d760c1682))

## [5.8.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.7.0...tremendous_ruby/v5.8.0) (2024-11-08)


### Features

* add `discount` to `Order` payment details ([8416d82](https://github.com/tremendous-rewards/tremendous-ruby/commit/8416d82bfd2ae3431e01121b0b18dcfacd019736))
* add `risk` property to fraud reviews ([8416d82](https://github.com/tremendous-rewards/tremendous-ruby/commit/8416d82bfd2ae3431e01121b0b18dcfacd019736))
* include order property when possible on balance transactions endpoint ([#47](https://github.com/tremendous-rewards/tremendous-ruby/issues/47)) ([8416d82](https://github.com/tremendous-rewards/tremendous-ruby/commit/8416d82bfd2ae3431e01121b0b18dcfacd019736))


### Bug Fixes

* fix `POST /orders` "created" response schema ([#50](https://github.com/tremendous-rewards/tremendous-ruby/issues/50)) ([5c86220](https://github.com/tremendous-rewards/tremendous-ruby/commit/5c862209475feedd85691e21db2aae591d5bda45))

## [5.7.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.6.0...tremendous_ruby/v5.7.0) (2024-11-04)


### Features

* add /reports endpoints ([#45](https://github.com/tremendous-rewards/tremendous-ruby/issues/45)) ([2793112](https://github.com/tremendous-rewards/tremendous-ruby/commit/2793112e8eb2dc362391e7dda56c760c1dc55450))
* add support for updated_phone and updated_email on POST /api/v2/reward/:id/resend ([2793112](https://github.com/tremendous-rewards/tremendous-ruby/commit/2793112e8eb2dc362391e7dda56c760c1dc55450))

## [5.6.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby-v5.5.0...tremendous_ruby/v5.6.0) (2024-09-26)


### Features

* Add `international` prop to `Invoice` type ([1ecfea4](https://github.com/tremendous-rewards/tremendous-ruby/commit/1ecfea45130933be82a3af5f46cbb8ae4f9e867e))
* Add missing properties to `FraudReview` and `FraudRule` related types ([1ecfea4](https://github.com/tremendous-rewards/tremendous-ruby/commit/1ecfea45130933be82a3af5f46cbb8ae4f9e867e))


### Bug Fixes

* regenerate internal classes after spec cleanup ([3800706](https://github.com/tremendous-rewards/tremendous-ruby/commit/38007068cf674239bae8ab8338fc5128fcf1bfff))
* remove unused Public key related types ([1ecfea4](https://github.com/tremendous-rewards/tremendous-ruby/commit/1ecfea45130933be82a3af5f46cbb8ae4f9e867e))
* Rename `SingleRewardOrder1*` related schemas to just `SingleRewardOrder*` ([1ecfea4](https://github.com/tremendous-rewards/tremendous-ruby/commit/1ecfea45130933be82a3af5f46cbb8ae4f9e867e))
