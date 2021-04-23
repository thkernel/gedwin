class KairosProgrammeEtudiant < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "programme_etudiant"
	establish_connection KAIROS_DB

	#has_one :etudiant, :class_name => "KairosEtudiant", :foreign_key => :id


end