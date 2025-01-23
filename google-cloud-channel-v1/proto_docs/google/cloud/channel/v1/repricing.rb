# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Channel
      module V1
        # Configuration for how a reseller will reprice a Customer.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of the CustomerRepricingConfig.
        #     Format:
        #     accounts/\\{account_id}/customers/\\{customer_id}/customerRepricingConfigs/\\{id}.
        # @!attribute [rw] repricing_config
        #   @return [::Google::Cloud::Channel::V1::RepricingConfig]
        #     Required. The configuration for bill modifications made by a reseller
        #     before sending it to customers.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp of an update to the repricing rule. If `update_time`
        #     is after
        #     {::Google::Cloud::Channel::V1::RepricingConfig#effective_invoice_month RepricingConfig.effective_invoice_month}
        #     then it indicates this was set mid-month.
        class CustomerRepricingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for how a distributor will rebill a channel partner
        # (also known as a distributor-authorized reseller).
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of the ChannelPartnerRepricingConfig.
        #     Format:
        #     accounts/\\{account_id}/channelPartnerLinks/\\{channel_partner_id}/channelPartnerRepricingConfigs/\\{id}.
        # @!attribute [rw] repricing_config
        #   @return [::Google::Cloud::Channel::V1::RepricingConfig]
        #     Required. The configuration for bill modifications made by a reseller
        #     before sending it to ChannelPartner.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp of an update to the repricing rule. If `update_time`
        #     is after
        #     {::Google::Cloud::Channel::V1::RepricingConfig#effective_invoice_month RepricingConfig.effective_invoice_month}
        #     then it indicates this was set mid-month.
        class ChannelPartnerRepricingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for repricing a Google bill over a period of time.
        # @!attribute [rw] entitlement_granularity
        #   @return [::Google::Cloud::Channel::V1::RepricingConfig::EntitlementGranularity]
        #     Applies the repricing configuration at the entitlement level.
        #
        #     Note: If a
        #     {::Google::Cloud::Channel::V1::ChannelPartnerRepricingConfig ChannelPartnerRepricingConfig}
        #     using
        #     {::Google::Cloud::Channel::V1::RepricingConfig::EntitlementGranularity RepricingConfig.EntitlementGranularity}
        #     becomes effective, then no existing or future
        #     {::Google::Cloud::Channel::V1::RepricingConfig::ChannelPartnerGranularity RepricingConfig.ChannelPartnerGranularity}
        #     will apply to the
        #     {::Google::Cloud::Channel::V1::RepricingConfig::EntitlementGranularity#entitlement RepricingConfig.EntitlementGranularity.entitlement}.
        #     This is the recommended value for both
        #     {::Google::Cloud::Channel::V1::CustomerRepricingConfig CustomerRepricingConfig}
        #     and
        #     {::Google::Cloud::Channel::V1::ChannelPartnerRepricingConfig ChannelPartnerRepricingConfig}.
        #
        #     Note: The following fields are mutually exclusive: `entitlement_granularity`, `channel_partner_granularity`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] channel_partner_granularity
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Cloud::Channel::V1::RepricingConfig::ChannelPartnerGranularity]
        #     Applies the repricing configuration at the channel partner level.
        #     Only
        #     {::Google::Cloud::Channel::V1::ChannelPartnerRepricingConfig ChannelPartnerRepricingConfig}
        #     supports this value. Deprecated: This is no longer supported. Use
        #     {::Google::Cloud::Channel::V1::RepricingConfig#entitlement_granularity RepricingConfig.entitlement_granularity}
        #     instead.
        #
        #     Note: The following fields are mutually exclusive: `channel_partner_granularity`, `entitlement_granularity`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] effective_invoice_month
        #   @return [::Google::Type::Date]
        #     Required. The YearMonth when these adjustments activate. The Day field
        #     needs to be "0" since we only accept YearMonth repricing boundaries.
        # @!attribute [rw] adjustment
        #   @return [::Google::Cloud::Channel::V1::RepricingAdjustment]
        #     Required. Information about the adjustment.
        # @!attribute [rw] rebilling_basis
        #   @return [::Google::Cloud::Channel::V1::RebillingBasis]
        #     Required. The {::Google::Cloud::Channel::V1::RebillingBasis RebillingBasis} to
        #     use for this bill. Specifies the relative cost based on repricing costs you
        #     will apply.
        # @!attribute [rw] conditional_overrides
        #   @return [::Array<::Google::Cloud::Channel::V1::ConditionalOverride>]
        #     The conditional overrides to apply for this configuration. If you list
        #     multiple overrides, only the first valid override is used.  If you don't
        #     list any overrides, the API uses the normal adjustment and rebilling basis.
        class RepricingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Applies the repricing configuration at the entitlement level.
          # @!attribute [rw] entitlement
          #   @return [::String]
          #     Resource name of the entitlement.
          #     Format:
          #     accounts/\\{account_id}/customers/\\{customer_id}/entitlements/\\{entitlement_id}
          class EntitlementGranularity
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Applies the repricing configuration at the channel partner level.
          # The channel partner value is derived from the resource name. Takes an
          # empty json object.
          # Deprecated: This is no longer supported. Use
          # {::Google::Cloud::Channel::V1::RepricingConfig::EntitlementGranularity RepricingConfig.EntitlementGranularity}
          # instead.
          # @deprecated This message is deprecated and may be removed in the next major version update.
          class ChannelPartnerGranularity
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A type that represents the various adjustments you can apply to a bill.
        # @!attribute [rw] percentage_adjustment
        #   @return [::Google::Cloud::Channel::V1::PercentageAdjustment]
        #     Flat markup or markdown on an entire bill.
        class RepricingAdjustment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An adjustment that applies a flat markup or markdown to an entire bill.
        # @!attribute [rw] percentage
        #   @return [::Google::Type::Decimal]
        #     The percentage of the bill to adjust.
        #     For example:
        #     Mark down by 1% => "-1.00"
        #     Mark up by 1%   => "1.00"
        #     Pass-Through    => "0.00"
        class PercentageAdjustment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies the override to conditionally apply.
        # @!attribute [rw] adjustment
        #   @return [::Google::Cloud::Channel::V1::RepricingAdjustment]
        #     Required. Information about the applied override's adjustment.
        # @!attribute [rw] rebilling_basis
        #   @return [::Google::Cloud::Channel::V1::RebillingBasis]
        #     Required. The {::Google::Cloud::Channel::V1::RebillingBasis RebillingBasis} to
        #     use for the applied override. Shows the relative cost based on your
        #     repricing costs.
        # @!attribute [rw] repricing_condition
        #   @return [::Google::Cloud::Channel::V1::RepricingCondition]
        #     Required. Specifies the condition which, if met, will apply the override.
        class ConditionalOverride
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the various repricing conditions you can use for a conditional
        # override.
        # @!attribute [rw] sku_group_condition
        #   @return [::Google::Cloud::Channel::V1::SkuGroupCondition]
        #     SKU Group condition for override.
        class RepricingCondition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A condition that applies the override if a line item SKU is found in the SKU
        # group.
        # @!attribute [rw] sku_group
        #   @return [::String]
        #     Specifies a SKU group (https://cloud.google.com/skus/sku-groups).
        #     Resource name of SKU group. Format:
        #     accounts/\\{account}/skuGroups/\\{sku_group}.
        #     Example:
        #     "accounts/C01234/skuGroups/3d50fd57-3157-4577-a5a9-a219b8490041".
        class SkuGroupCondition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies the different costs that the modified bill can be based on.
        module RebillingBasis
          # Not used.
          REBILLING_BASIS_UNSPECIFIED = 0

          # Use the list cost, also known as the MSRP.
          COST_AT_LIST = 1

          # Pass through all discounts except the Reseller Program Discount. If this is
          # the default cost base and no adjustments are specified, the output cost
          # will be exactly what the customer would see if they viewed the bill in the
          # Google Cloud Console.
          DIRECT_CUSTOMER_COST = 2
        end
      end
    end
  end
end
