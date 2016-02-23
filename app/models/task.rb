class Task < ActiveRecord::Base
has_many :activities,:dependent => :destroy
belongs_to :employee	
end
