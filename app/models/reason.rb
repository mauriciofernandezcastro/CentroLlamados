class Reason < ApplicationRecord
    has_many :calls
    has_many :users, through: :calls
    has_many :client, through: :calls
end
