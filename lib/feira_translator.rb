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
      :barracas      => input['feirantes'].to_i,
      :dia_da_semana => to_weekday(input),
      :slug          => to_slug(input)
    }
    
    Feira.create(translated)
  end
  
  def to_geo(input)
    [input['latitude'].to_f, input['longitude'].to_f]
  end
  
  def to_weekday(input)
    # identificação da feira no sistema da prefeitura.
    # primeiro dígito é a informação do dia da semana que acontece, começando em domingo. 
    # 1=domingo,2=segunda,3=terça,4=quarta,5=quinta,6=sexta,7=sábado
    (input['numero'].to_s[/\d/].to_i)-1
  end
  
  def to_slug(input)
    Slugalizer.slugalize(input['nome'])
  end
  
  extend self
end
