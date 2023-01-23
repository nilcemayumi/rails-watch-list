class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end

# outro jeito de validar o que foi validado na linha 5 achado no stackoverflow
# validate :unique_movie_list_pairing
# def unique_movie_list_pairing
#   if Bookmark.exists?(movie: movie, list: list)
#     errors.add(:base, 'Movie and list pairing must be unique')
#   end
# end
