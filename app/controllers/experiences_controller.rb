class ExperiencesController < ApplicationController
    def create
        exp = Experience.create(exp_params)
        json_response(exp)
    end

    private
    def exp_params
        params.permit(:user_id, :pseudonimo, :foto, :experiencia)
    end
end
