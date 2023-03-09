class Email < ApplicationRecord
  after_initialize :default_values

  def default_values 
    self.viewed ||= "false"
  end

end
