class FeirasController < ApplicationController
  def search
    @feiras = Feira.perto_de(params[:lat], params[:lng]).page(params[:p])
    
    respond_to do |format|
      format.html
      format.json { render :json => @feiras }
    end
  end
  
  def show
    @feira = Feira.find_by_id(param[:id])
    
    respond_to do |format|
      format.html
      format.json { render :json => @feira }
    end
  end
  
  def index
    @feiras = Feira.page(params[:p])
    
    respond_to do |format|
      format.html
      format.json { render :json => @feiras }
    end
  end
end
