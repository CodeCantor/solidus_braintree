module SolidusBraintree
  module PermittedAttributesConcern
    def payment_attributes
      super | [:payment_method_nonce]
    end

    def checkout_attributes
      super | [:braintree_device_data]
    end

    def source_attributes
      super | [:data]
    end
  end
end
