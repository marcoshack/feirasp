class FeirasController < ApplicationController
  def search
    @feiras = Feira.perto_de(params[:lat], params[:lng]).page(params[:p])
  end
  
  def show
    @feira = Feira.find_by_id(param[:id])
  end
  
  def index
    @feiras = Feira.page(params[:p])
  end
end
