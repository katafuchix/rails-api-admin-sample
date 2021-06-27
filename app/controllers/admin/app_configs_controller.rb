module Admin
  class Admin::AppConfigsController < Admin::ApplicationController
    before_action :authenticate_admin_user!
    before_action :load_config, only: %i(edit update)

    def edit
    end

    def update
      ActiveRecord::Base.transaction do
        #@config.update!(update_params)
        #redirect_to edit_admin_config_path, notice: I18n.t('admin.data_updated')
        @config.update(update_params) ? success_message(:updated) : failure_message
      end
    end

    private

    def success_message(i18n_key)
      flash[:success] = I18n.t(i18n_key, scope: 'app_config.message')
      redirect_to action: :edit
    end

    def failure_message
      flash.now[:alert] = @admin_user.errors.full_messages.join('<br/>').html_safe
      render template: 'admin/app_configs/form'
    end

    def load_config
      @config = AppConfig.first_or_initialize
    end

    def permitted_params
      params.require(:app_config).permit(
        :app_name,
        :android_is_force_update,
        :android_force_update_version,
        :android_is_maintenance,
        :android_maintenance_message,
        :ios_is_force_update,
        :ios_force_update_version,
        :ios_is_maintenance,
        :ios_maintenance_message,
      )
    end

    def update_params
      permitted_params
    end

  end
end
