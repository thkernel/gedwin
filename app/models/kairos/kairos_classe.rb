class KairosClasse < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "classe"
	establish_connection KAIROS_DB

	  #belongs_to :user, :foreign_key => "id", :class_name => "User"


end