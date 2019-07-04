# frozen_string_literal: true

module Stripe
  module Issuing
    class Card < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.card".freeze

      custom_method :details, http_verb: :get

      def details(params = {}, opts = {})
        make_request_returning_stripe_object(
          method: :get,
          path: resource_url + "/details",
          params: params,
          opts: opts
        )
      end
    end
  end
end
