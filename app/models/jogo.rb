# frozen_string_literal: true

class Jogo < ApplicationRecord
  self.table_name = "jogos"

  scope :where_banca, ->(banca) { where(banca: banca) if banca.present? }
  scope :where_data, ->(data) { where(data: data) if data.present? }
end
