class Room < ApplicationRecord
    has_many :players, dependent: :destroy
end
