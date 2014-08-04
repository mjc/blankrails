class Person < ActiveRecord::Base
  belongs_to :father
  belongs_to :mother
  belongs_to :current_spouse
  has_parents sex_values: [0,1]
end
