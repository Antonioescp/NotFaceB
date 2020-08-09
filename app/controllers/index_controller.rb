class IndexController < ApplicationController
  skip_before_action :iniciar_sesion
end
