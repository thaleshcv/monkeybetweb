# frozen_string_literal: true

class JogosController < ApplicationController
  def index
    @consulta_form = Jogos::ConsultaForm.new(consulta_params)
    @jogos = @consulta_form.executa
  end

  private

  def consulta_params
    params.fetch(:jogo, {}).permit(:banca, :data, :sort_field, :sort_order)
  end
end
