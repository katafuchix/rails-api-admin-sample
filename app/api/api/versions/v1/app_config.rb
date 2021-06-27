module Versions
  module V1
    module AppConfig
      extend ActiveSupport::Concern
      included do
        namespace :app do

            desc 'アプリ設定の取得'
            params do
            end
            get :config, jbuilder: 'v1/app/config' do
              @config = ::AppConfig.first
            end
        end
      end
    end
  end
end
