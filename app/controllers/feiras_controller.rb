class FeirasController < ApplicationController

  def index
    if params[:lat] && params[:lng]
      @feiras = Feira.perto_de(params[:lat], params[:lng]).page(params[:p])
    else
      @feiras = Feira.page(params[:p])
    end
    
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
  
end
