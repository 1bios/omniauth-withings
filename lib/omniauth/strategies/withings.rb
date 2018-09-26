# frozen_string_literal: true

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Withings < OmniAuth::Strategies::OAuth2
      option :name, 'withings'

      option :scope, 'user.info,user.metrics,user.activity'

      option(
        :client_options,
        site: 'https://account.withings.com',
        authorize_url: '/oauth2_user/authorize2',
        token_url: '/oauth2/token'
      )

      uid do
        access_token.params['userid']
      end
    end
  end
end
