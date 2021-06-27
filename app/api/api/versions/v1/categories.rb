module Versions
  module V1
    module Categories
      extend ActiveSupport::Concern
      included do
        namespace :categories do

          desc 'カテゴリを取得する'
          get '', jbuilder: 'v1/categories/list' do
            @contents = Category.contents
          end

        end
      end
    end
  end
end
