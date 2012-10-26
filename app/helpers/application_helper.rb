# encoding: utf-8
module ApplicationHelper

  def nome_dia_da_semana(feira)
    {
      0 => 'domingos',
      1 => 'segunda-feira',
      2 => 'terças-feiras',
      3 => 'quartas-feiras',
      4 => 'quintas-feiras',
      5 => 'sextas-feiras',
      6 => 'sábados'
    }[feira.dia_da_semana]
  end

end
