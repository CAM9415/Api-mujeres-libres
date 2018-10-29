class RemainingsController < ApplicationController
  def cases
    cases = Case.all.last(5)
    json_response(cases)
  end
end
