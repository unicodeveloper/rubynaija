class DevelopersController < ApplicationController
  layout "dev"
  # GET /posts.json
  def index
    @developers = Developer.all
  end

  def new
    @developer = Developer.new
  end

  def create
     @developer = Developer.new( developer_params )


    respond_to do |format|
      if @developer.save
        format.html { redirect_to new_developer_path, notice: 'Developer details were submitted created.' } #create.html.erb
      else
        format.html { render :new }
      end
    end
  end

  def show
    @developer = Developer.find(params[:id])
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def developer_params
        params.require(:developer).permit(:name, :email, :url, :tags, :work_place, :code_name, :bio, :approval_status)
    end

end
