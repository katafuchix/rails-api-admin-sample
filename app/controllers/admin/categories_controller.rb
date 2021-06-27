module Admin
  class CategoriesController < Admin::ApplicationController
    before_action :authenticate_admin_user!
    before_action :set_content, only: %i(show edit update destroy)
    #before_action :admin_only_accessible
    PER = Settings.paging_per.categories.list

    def index
      @contents = Category.without_soft_destroyed.order(:sort_order).page(params[:page]).per(PER)
    end

    def show
    end

    def new
      @content = Category.new
    end

    def edit
    end

    def create
      @content = Category.new(master_params)
      @content.save ? success_message(:created) : failure_message
    end

    def update
      @content.update(master_params) ? success_message(:updated) : failure_message
    end

    def destroy
      @content.soft_destroy ? success_message(:deleted) : failure_message
    end

    private

    def success_message(i18n_key)
      flash[:success] = I18n.t(i18n_key, scope: 'category.message')
      redirect_to action: :index
    end

    def failure_message
      flash[:alert] = @content.errors.full_messages.join('<br/>').html_safe
      redirect_to [:admin, @content]
    end

    def set_content
      @content = Category.find(params[:id])
    end

    def master_params
      params.require('category').permit(:name, :enabled, :sort_order, :image)
    end

  end
end
