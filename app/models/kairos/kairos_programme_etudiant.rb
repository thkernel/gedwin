# == Schema Information
#
# Table name: programme_etudiant
#
#  id                          :bigint           not null, primary key
#  version                     :bigint           not null
#  annee_scolaire_programme_id :bigint           not null
#  date_created                :datetime
#  date_deleted                :datetime
#  deleted                     :binary(1)
#  etablissement_id            :bigint           not null
#  etudiant_id                 :bigint           not null
#  ind_en_cours                :binary(1)
#  last_updated                :datetime
#  niveau_programme_id         :bigint           not null
#  old_code_specialisation     :string(100)
#  programme_id                :bigint           not null
#  specialisation_id           :bigint
#  user_created                :string(255)
#  user_deleted                :string(255)
#  user_updated                :string(255)
#

class KairosProgrammeEtudiant < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "programme_etudiant"
	establish_connection KAIROS_DB

	#has_one :etudiant, :class_name => "KairosEtudiant", :foreign_key => :id


end
