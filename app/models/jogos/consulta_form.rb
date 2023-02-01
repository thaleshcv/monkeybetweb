# frozen_string_literal: true

class Jogos::ConsultaForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :data, :date, default: Time.zone.tomorrow
  attribute :banca, :string
  attribute :sort_field, :string
  attribute :sort_order, :string

  def combo_bancas
    Jogo.distinct.order(banca: :asc).pluck(:banca)
  end

  def merge_query_params(**kwargs)
    attributes.symbolize_keys.merge(kwargs)
  end

  def executa
    jogos = Jogo.where_banca(banca).where_data(data)

    if sort_field.present? && sort_order.present?
      jogos.order("#{sort_field} #{sort_order}")
    else
      jogos
    end
  end
end
