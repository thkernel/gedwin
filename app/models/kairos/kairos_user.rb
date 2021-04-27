class KairosUser < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "user"
	self.ignored_columns = %w[photo]
	establish_connection KAIROS_DB

	#has_one :etudiant, :class_name => "KairosEtudiant", :foreign_key => :id


end