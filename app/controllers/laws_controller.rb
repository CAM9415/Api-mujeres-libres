class LawsController < ApplicationController
  def lawsuit
    laws = Help.all
    json_response(laws)
  end
end
