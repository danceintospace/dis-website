module Avo
  class ApplicationController < BaseApplicationController
    before_action :require_authentication, if: :avo_restricted_action?

    private

    def require_authentication
      authenticate_user!
    end

    # Apply authentication only to specific resources and actions within Avo
    def avo_restricted_action?
      restricted_resources = %w[users posts]
      restricted_actions = %w[edit update destroy]

      # Check if current resource and action match the restricted list
      restricted_resources.include?(params[:resource_name]) &&
        restricted_actions.include?(params[:action])
    end
  end
end
