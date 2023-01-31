# frozen_string_literal: true

class Jogos::ConsultaForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :data, :date
  attribute :banca, :string

  def data_texto
    data.strftime("%d/%m/%Y") if data.present?
  end

  def combo_bancas
    Jogo.distinct.order(banca: :asc).pluck(:banca)
  end

  def executa
    Jogo.where_banca(banca).where_data(data_texto)
  end
end
