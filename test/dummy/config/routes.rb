Rails.application.routes.draw do
  scope :api do
    mount TehGraph::Engine => :v1
  end
end
