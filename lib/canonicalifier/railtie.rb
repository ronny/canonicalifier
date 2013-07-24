module Canonicalifier
  class Railtie < Rails::Railtie
    initializer "canonicalifier.action_controller" do
      ActionController::Base.send :include, Canonicalifier::ControllerExtensions
    end

    initializer "canonicalifier.action_view" do
      ActionView::Base.send :include, Canonicalifier::Helpers
    end
  end
end
