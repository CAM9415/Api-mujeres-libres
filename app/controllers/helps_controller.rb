class HelpsController < ApplicationController
  def entity
    helps = Entity.all
    json_response(helps)
  end
end
