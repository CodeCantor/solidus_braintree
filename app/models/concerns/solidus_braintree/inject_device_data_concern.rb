module SolidusBraintree
  module InjectDeviceDataConcern
    extend ActiveSupport::Concern
    included do
      prepend(InstanceMethods)
    end

    module InstanceMethods
      def gateway_options
        options = super

        options[:device_data] = order.braintree_device_data if order.braintree_device_data
        options[:payment_method_nonce] = source.payment_method_nonce

        options
      end
    end
  end
end
