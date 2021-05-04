# == Schema Information
#
# Table name: niveau
#
#  id               :bigint           not null, primary key
#  version          :bigint           not null
#  code             :string(20)       not null
#  date_created     :datetime
#  etablissement_id :bigint           not null
#  last_updated     :datetime
#  libelle          :string(60)       not null
#  libelle_abrege   :string(50)
#  num_ordre        :integer
#  user_created     :string(255)
#  user_updated     :string(255)
#

class KairosNiveau < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "niveau"
	establish_connection KAIROS_DB

	#has_one :etudiant, :class_name => "KairosEtudiant", :foreign_key => :id


end
