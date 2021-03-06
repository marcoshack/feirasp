class FeirasController < ApplicationController
  def index
    if params[:lat] && params[:lng]
      @feiras = Feira.perto_de(params[:lat].to_f, params[:lng].to_f).page(params[:p])
    else
      @feiras = Feira.page(params[:p])
    end
    
    respond_to do |format|
      format.html { redirect_to :format => 'json' }
      format.json { render :json => @feiras }
    end
  end
  
  def show
    @feira = Feira.where({slug: params[:id]}).first 
    
    respond_to do |format|
      format.html
      format.json { render :json => @feira }
    end
  end
end
