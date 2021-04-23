class KairosAnneeScolaireProgramme < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "annee_scolaire_programme"
	establish_connection KAIROS_DB

	  #belongs_to :user, :foreign_key => "id", :class_name => "User"


end