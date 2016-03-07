class SupportTicket < ActiveRecord::Base
  belongs_to :contract
  belongs_to :manager
end
