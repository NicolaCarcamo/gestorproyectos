class PagesController < ApplicationController
    def index
    end
    
    def dashboard
        @project = Project.create(name: params[:name], description: params[:description], startdate: params[:startdate], finishdate: params[:finishdate], state: params[:state])

        if params[:state].present?
            @projects = Project.where('state = ?', params[:state])
        else
            @projects = Project.all
        end
    end
end
