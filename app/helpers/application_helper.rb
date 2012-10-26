# encoding: utf-8
module ApplicationHelper

  def nome_dia_da_semana(feira)
    {
      0 => 'domingo',
      1 => 'segunda',
      2 => 'terça',
      3 => 'quarta',
      4 => 'quinta',
      5 => 'sexta',
      6 => 'sábado'
    }[feira.dia_da_semana]
  end

end
