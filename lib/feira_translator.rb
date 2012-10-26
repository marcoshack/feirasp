module FeiraTranslator
  # DE-PARA do feiras.xml para o Model Feiras

  def translate(input)
    translated = {
      :subprefeitura => input['sub'],
      :numero        => input['numero'].to_i,
      :nome          => input['nome'].titleize,
      :categoria     => input['categoria'],
      :bairro        => input['bairro'].titleize,
      :endereco      => input['logadouro'].titleize,
      :loc           => to_geo(input),
      :metragem      => input['metragem'].to_i,
      :barracas      => input['feirantes'].to_i
    }
    
    # ap translated
    Feira.create(translated)
  end
  
  def to_geo(input)
    [input['latitude'].to_f, input['longitude'].to_f]
  end
  
  extend self
end
