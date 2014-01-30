class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :publication, type: Integer
  field :ISBN, type: Integer
  field :genre, type: String

  validates :title, uniqueness: true, presence:true
  # #validates that all input for founded is an integer
  # validates :founded, numericality: true, 
  # #validates that the location is filled out. 
  # validates :location, presence: true 

end
