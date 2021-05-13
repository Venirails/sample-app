class Book < ApplicationRecord
  validates :name, uniqueness: true
  validates :name,:author, presence: true
  validates :name, length: { minimum: 3 ,message: "must have atleast 3 letters" }
  validates :year, numericality: true
  

  before_save :merge_names

  after_destroy :update_log

  def merge_names
     self.name = self.name + " by " + self.author
  end
  
  def update_log
    logger.info "=============Alas! A book has been deleted #{self.name}=================="
  end

end
