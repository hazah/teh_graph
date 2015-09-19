module TehGraph
  module Resource
    extend ActiveSupport::Concern

    included do
      expose(controller_name)
      expose(controller_name.singularize)

      alias :collection :"#{controller_name}"
      alias :resource :"#{controller_name.singularize}"
    end

    def index
      respond_with collection
    end

    def show
      respond_with resource
    end
  end
end
