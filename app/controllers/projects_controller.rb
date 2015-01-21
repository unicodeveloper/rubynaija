class ProjectsController < ApplicationController
  layout "main"
  # GET /posts.json
  def index
    @projects = Project.all
  end

   # GET /developers/new
  def new
    @project = Project.new
  end


  def create
     @project = Project.new( project_params )

    respond_to do |format|
      if @project.save
        format.html { redirect_to new_project_path, notice: 'Project details were submitted created.' } #create.html.erb
      else
        format.html { render :new }
      end
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
     puts "Welcome to the Developers Controller"
  end

  def 

 

  # GET /posts/1/edit
  def edit
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
        params.require(:project).permit(:name, :url, :description, :email, :categories, :tags, :approval_status)
    end

  
end
