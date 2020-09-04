class ProjectController < ApplicationController
    http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
    :dashboard

    def new
        
    end
    def create
        @project=Project.create(project_params)
        
    end

    def project_params
       
        {name: params[:nombre], description: params[:descripcion],start_date: params[:fecha_de_inicio], end_date: params[:fecha_de_termino], state: params[:Estado]
         }


    end

    def dashboard
        if params[:estado].present?
            @project = Project.where('state = ?', params[estado]) 

        else
        @projects=Project.all
        
    end


    end


end
