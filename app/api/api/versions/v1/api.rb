module Versions
  module V1
    class Api < Grape::API
      version 'v1', using: :path
      format :json
      formatter :json, Grape::Formatter::Jbuilder
      prefix :api

      # エラー対応
      rescue_from :all, backtrace: true
      error_formatter :json, ::MediaSite::ErrorFormatter

      include ::MediaSite::Util

      include ::Versions::V1::AppConfig
      include ::Versions::V1::ProfileMasters
      include ::Versions::V1::Categories

      GrapeDeviseTokenAuth.setup! do |config|
        config.authenticate_all = true
      end


      # :nocov:
      #if Rails.env.development? || Rails.env.staging?
      #unless Rails.env.production?
      add_swagger_documentation add_version: true
      #end
      # :nocov:
    end
  end
end
