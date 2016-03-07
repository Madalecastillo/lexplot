class Contract < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  belongs_to :manager

  has_many :support_tickets
end
