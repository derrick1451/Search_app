class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    has_many :articles, dependent: :destroy
    has_many :searches, dependent: :destroy
end
