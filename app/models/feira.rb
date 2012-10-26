class Feira
  include Mongoid::Document
  include Mongoid::Timestamps
  
  # <sub>AF</sub>
  # <numero>10499</numero>
  # <nome>VILA RICA</nome>
  # <categoria>T</categoria>
  # <bairro>VL RICA</bairro>
  # <logadouro>RUA PROF ALZIRA DE O GILIOLI, 1817</logadouro>
  # <latitude>-23.5489433</latitude>
  # <longitude>-46.6388182</longitude>
  # <metragem>441,00</metragem>
  # <feirantes>88</feirantes>
  
  field :subprefeitura, type: String  # <sub>
  field :numero       , type: Integer
  field :nome         , type: String
  field :categoria    , type: String
  field :bairro       , type: String
  field :endereco     , type: String  # <logadouro>
  field :loc          , type: Array   # [ <latitude>, <longitude> ]
  field :metragem     , type: Integer # <metragem>
  field :barracas     , type: Integer # <feirantes>
  
end