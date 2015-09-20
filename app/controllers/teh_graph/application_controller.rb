require_dependency 'teh_graph/application_responder'

module TehGraph
  class ApplicationController < ActionController::API
    include ActionController::ImplicitRender
    include DeviseTokenAuth::Concerns::SetUserByToken
    include Pundit

    responder = ApplicationResponder
    respond_to :json

    decent_configuration do
      strategy ApplicationExposure
    end

    def self.inherited base
      base.class_eval do
        expose(controller_name) { |collection| policy_scope collection }
        expose(controller_name.singularize, attributes: :resource_params)

        alias :collection :"#{controller_name}"
        alias :resource :"#{controller_name.singularize}"
      end
    end

    #before_action :authenticate_user!
    before_action do |controller|
      controller.instance_eval do
        authorize(action_name == 'index' ? collection : resource)
      end
    end
    after_action :verify_authorized
    after_action :verify_policy_scoped

    def index
      respond_with collection
    end

    def create
      respond_with resource
    end

    def show
      respond_with resource
    end

    def update
      respond_with resource
    end

    def destroy
      respond_with resource
    end

  private

    def resource_params
      permitted_attributes resource
    end
  end
end
