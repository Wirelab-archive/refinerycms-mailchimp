module Refinery
  module Mailchimp
    module Admin
      class SettingsController < ::Refinery::AdminController

        def general_settings
            render :text => 'hello world'
          if request.post?
            render :text => 'posted'
          end
        end

      end
    end
  end
end