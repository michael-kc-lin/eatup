class LandingpagesController < ApplicationController
  def index
        @landingpage = Landingpage.new
  end
  
  def create
      @landingpage = Landingpage.new(landingpage_params)
    if @landingpage.save
        redirect_to @landingpage
        else
      render 'index'
    end
  end
  
  def show
      @landingpages = Landingpage.all
  end
  
  def edit
  end
  
  def update
  end

  def new
    @landingpage = Landinpage.new
  end
end

  private

    def landingpage_params
      params.require(:landingpage).permit(:email)
    end
