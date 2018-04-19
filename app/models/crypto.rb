class Crypto < ActiveRecord::Base
    belongs_to :user # a crypto belongs to a user
end
