class PagesController < ApplicationController
    def index
        Project.create(name: params[:name], description: params[:descritcion], startdate: params[:startdate], finishdate: params[:finishdate], state: params[:state])
    end
    
    def dashboard
        if params[:state].present?
            @projects = Project.where('state = ?', params[:state])
        else
            @projects = Project.find_valid
        end
    end
end
