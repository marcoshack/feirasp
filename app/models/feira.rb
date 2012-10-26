class Feira
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :subprefeitura, type: String  # <sub>
  field :numero       , type: Integer
  field :nome         , type: String
  field :categoria    , type: String
  field :bairro       , type: String
  field :endereco     , type: String  # <logadouro>
  field :loc          , type: Array   # [ <latitude>, <longitude> ]
  field :metragem     , type: Integer # <metragem>
  field :barracas     , type: Integer # <feirantes>
  field :dia_da_semana, type: Integer # Date.wday
  
  index({ loc: "2d" })
  
  scope :perto_de, ->(lat, lng, distance = 5) { 
    where( loc: { "$near" => [lat, lng], "$maxDistance" => distance}) 
  }

  def latitude
    self.loc.first
  end
  alias_method :lat, :latitude
  
  def longitude
    self.loc.last
  end
  alias_method :long, :longitude
end
