# Changelog

## [5.23.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.22.0...tremendous_ruby/v5.23.0) (2026-04-22)


### Features

* add `external_name`, `external_email`, `role` to connected org ([a4c5e3d](https://github.com/tremendous-rewards/tremendous-ruby/commit/a4c5e3d2ecc14c71bf96e3c259eaf88fc0011f57))

## [5.22.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.21.0...tremendous_ruby/v5.22.0) (2026-04-22)


### Features

* add `available_amount`, `pending_amount` to funding sources ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `credit_limit_amount` to funding source meta ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `currency_code` to balance transactions ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `currency_code` to connected organizations ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `currency_code` to create organization request ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `currency_code` to fraud review related rewards ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `currency_code` to funding source meta ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `currency_code` to order payments and refunds ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `currency_code` to organizations ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `currency_code` to topups ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `expected_settlement_at` to topups ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `fee_charged_to` enum to campaigns ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `instant_credit_amount` to topups ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `partially_credited` topup status ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))
* add `settled_amount` to topups ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))


### Bug Fixes

* make recipient `name` nullable on rewards ([dbcca88](https://github.com/tremendous-rewards/tremendous-ruby/commit/dbcca88d8e737f0d1fed244ef1811b7da071291c))

## [5.21.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.20.0...tremendous_ruby/v5.21.0) (2026-04-17)


### Features

* add `currency_code` field to invoices ([90ecd1c](https://github.com/tremendous-rewards/tremendous-ruby/commit/90ecd1c615d08f48ba13b2feddc8da716a3fb48c))


### Bug Fixes

* deprecate `currency` in favor of `currency_code` ([90ecd1c](https://github.com/tremendous-rewards/tremendous-ruby/commit/90ecd1c615d08f48ba13b2feddc8da716a3fb48c))
* remove default `USD` value for invoice `currency` ([90ecd1c](https://github.com/tremendous-rewards/tremendous-ruby/commit/90ecd1c615d08f48ba13b2feddc8da716a3fb48c))

## [5.20.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.19.0...tremendous_ruby/v5.20.0) (2026-04-16)


### Features

* add `currency_code` field to create invoice ([afb5295](https://github.com/tremendous-rewards/tremendous-ruby/commit/afb5295a70b70d99955321210423fa017defe88e))


### Bug Fixes

* deprecate `currency` in favor of `currency_code` ([afb5295](https://github.com/tremendous-rewards/tremendous-ruby/commit/afb5295a70b70d99955321210423fa017defe88e))
* remove default `USD` for invoice `currency` ([afb5295](https://github.com/tremendous-rewards/tremendous-ruby/commit/afb5295a70b70d99955321210423fa017defe88e))

## [5.19.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.18.1...tremendous_ruby/v5.19.0) (2026-04-15)


### Features

* add delete connected organization endpoint ([183c48b](https://github.com/tremendous-rewards/tremendous-ruby/commit/183c48b0800b389e96ea6de2687d8912f00a9929))
* add delete connected organization member endpoint ([183c48b](https://github.com/tremendous-rewards/tremendous-ruby/commit/183c48b0800b389e96ea6de2687d8912f00a9929))

## [5.18.1](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.18.0...tremendous_ruby/v5.18.1) (2026-04-14)


### Bug Fixes

* remove obsolete `EEK`, `LTL`, `LVL`, `ZMK` currencies ([5bf49db](https://github.com/tremendous-rewards/tremendous-ruby/commit/5bf49db07f5685ba3b452226ddac65ee885c37aa))
* replace `BYR` with `BYN` in currency codes ([5bf49db](https://github.com/tremendous-rewards/tremendous-ruby/commit/5bf49db07f5685ba3b452226ddac65ee885c37aa))

## [5.18.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.17.0...tremendous_ruby/v5.18.0) (2026-03-20)


### Features

* add `international_bank` to product `category` enum ([23e951b](https://github.com/tremendous-rewards/tremendous-ruby/commit/23e951b3b6dbbb4b133927ff9a4686c98d68e4e6))
* add `PENDING SETTLEMENT` to order `status` enum ([23e951b](https://github.com/tremendous-rewards/tremendous-ruby/commit/23e951b3b6dbbb4b133927ff9a4686c98d68e4e6))

## [5.17.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.16.0...tremendous_ruby/v5.17.0) (2026-02-27)


### Features

* rename order `status` enum `CART` to `OPEN` ([b18981c](https://github.com/tremendous-rewards/tremendous-ruby/commit/b18981cdafc817e2eb2cdd5ec2fe462849301ee6))

## [5.16.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.15.0...tremendous_ruby/v5.16.0) (2026-02-25)


### Features

* Add `expires_at` to Rewards ([4967958](https://github.com/tremendous-rewards/tremendous-ruby/commit/4967958bc6c2bec1915f05adfee4a480ec4879e4))


### Bug Fixes

* Remove `BGN` currency code reference ([4967958](https://github.com/tremendous-rewards/tremendous-ruby/commit/4967958bc6c2bec1915f05adfee4a480ec4879e4))

## [5.15.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.14.0...tremendous_ruby/v5.15.0) (2026-02-07)


### Features

* add create field endpoint (POST /fields) ([f4527d0](https://github.com/tremendous-rewards/tremendous-ruby/commit/f4527d02cc5a720878c1d9d28c4b1f9b4bb9b8ec))
* regenerate SDK ([#96](https://github.com/tremendous-rewards/tremendous-ruby/issues/96)) ([f4527d0](https://github.com/tremendous-rewards/tremendous-ruby/commit/f4527d02cc5a720878c1d9d28c4b1f9b4bb9b8ec))


### Bug Fixes

* type field data as structured object instead of untyped hash ([f4527d0](https://github.com/tremendous-rewards/tremendous-ruby/commit/f4527d02cc5a720878c1d9d28c4b1f9b4bb9b8ec))

## [5.14.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.13.0...tremendous_ruby/v5.14.0) (2026-01-28)


### Features

* add currency support to invoices (USD, EUR, GBP) ([698e964](https://github.com/tremendous-rewards/tremendous-ruby/commit/698e964356f9d90b384bf65c6acb2bdee116b3e8))
* add new Topups API (create, get, list) ([698e964](https://github.com/tremendous-rewards/tremendous-ruby/commit/698e964356f9d90b384bf65c6acb2bdee116b3e8))
* allow BALANCE keyword in get_funding_source ([698e964](https://github.com/tremendous-rewards/tremendous-ruby/commit/698e964356f9d90b384bf65c6acb2bdee116b3e8))
* expand fraud review schema with additional fields ([698e964](https://github.com/tremendous-rewards/tremendous-ruby/commit/698e964356f9d90b384bf65c6acb2bdee116b3e8))
* regenerate SDK ([#91](https://github.com/tremendous-rewards/tremendous-ruby/issues/91)) ([698e964](https://github.com/tremendous-rewards/tremendous-ruby/commit/698e964356f9d90b384bf65c6acb2bdee116b3e8))


### Bug Fixes

* make funding source meta fields nullable ([698e964](https://github.com/tremendous-rewards/tremendous-ruby/commit/698e964356f9d90b384bf65c6acb2bdee116b3e8))
* update redemption method enum values ([698e964](https://github.com/tremendous-rewards/tremendous-ruby/commit/698e964356f9d90b384bf65c6acb2bdee116b3e8))

## [5.13.0](https://github.com/tremendous-rewards/tremendous-ruby/compare/tremendous_ruby/v5.12.0...tremendous_ruby/v5.13.0) (2025-10-21)


### Features

* add `subcategory` enum to Products ([7d4a3d1](https://github.com/tremendous-rewards/tremendous-ruby/commit/7d4a3d1747d1b5813addd9bc25a7983ea7b392d4)), closes [#81](https://github.com/tremendous-rewards/tremendous-ruby/issues/81)
* enforce a 50000 limit for the IP/email list on custom fraud rules ([7d4a3d1](https://github.com/tremendous-rewards/tremendous-ruby/commit/7d4a3d1747d1b5813addd9bc25a7983ea7b392d4))
* regen SDK ([#83](https://github.com/tremendous-rewards/tremendous-ruby/issues/83)) ([7d4a3d1](https://github.com/tremendous-rewards/tremendous-ruby/commit/7d4a3d1747d1b5813addd9bc25a7983ea7b392d4))
* remove `pending_confirmation` status from Funding Sources ([7d4a3d1](https://github.com/tremendous-rewards/tremendous-ruby/commit/7d4a3d1747d1b5813addd9bc25a7983ea7b392d4))

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
