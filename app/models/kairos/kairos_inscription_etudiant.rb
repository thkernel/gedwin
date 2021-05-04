# == Schema Information
#
# Table name: inscription_etudiant
#
#  id                          :bigint           not null, primary key
#  version                     :bigint           not null
#  annee_scolaire_programme_id :bigint           not null
#  classe_id                   :bigint           not null
#  classe_tronc_commun_id      :bigint
#  code_specialite             :string(255)
#  date_created                :datetime
#  etablissement_id            :bigint           not null
#  etudiant_id                 :bigint           not null
#  ind_forcing                 :binary(1)        not null
#  ind_ins_complete            :binary(1)        not null
#  ind_redouble                :binary(1)        not null
#  last_updated                :datetime
#  niveau_programme_id         :bigint           not null
#  old_id                      :bigint
#  programme_id                :bigint           not null
#  remarques                   :text(4294967295)
#  specialite_programme_id     :bigint
#  user_created                :string(255)
#  user_forcing                :string(255)
#  user_updated                :string(255)
#

class KairosInscriptionEtudiant < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "inscription_etudiant"
	establish_connection KAIROS_DB

	#has_one :etudiant, :class_name => "KairosEtudiant", :foreign_key => :id


end
