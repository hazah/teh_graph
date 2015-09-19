require_dependency "teh_graph/application_controller"

module TehGraph
  class UsersController < ApplicationController
    include TehGraph::Resource
  end
end
