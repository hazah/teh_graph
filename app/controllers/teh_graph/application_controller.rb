require_dependency 'teh_graph/application_responder'
require_dependency 'teh_graph/concerns/resource'

module TehGraph
  class ApplicationController < ActionController::API
    include ActionController::ImplicitRender
    include DeviseTokenAuth::Concerns::SetUserByToken

    responder = ApplicationResponder
    respond_to :json

    before_action :authenticate_user!
  end
end
