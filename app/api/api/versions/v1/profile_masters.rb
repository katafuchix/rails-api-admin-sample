module Versions
  module V1
    module ProfileMasters
      extend ActiveSupport::Concern
      included do
        namespace :profile_masters do

          desc '都道府県マスタを取得する'
          get :prefecture, jbuilder: 'v1/profile_masters/list' do
            @contents = Master::Prefecture.contents
          end

          desc '休日マスタを取得する'
          get :holiday, jbuilder: 'v1/profile_masters/list' do
            @contents = Master::Holiday.contents
          end

          desc 'お問い合わせカテゴリを取得する'
          get :inquiry_category, jbuilder: 'v1/profile_masters/list' do
            @contents = Master::InquiryCategory.contents
          end

        end
      end
    end
  end
end
