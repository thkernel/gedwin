# == Schema Information
#
# Table name: classe
#
#  id                          :bigint           not null, primary key
#  version                     :bigint           not null
#  annee_scolaire_programme_id :bigint           not null
#  code                        :string(50)
#  code_permanent_responsable  :string(200)
#  code_specialite             :string(200)
#  date_created                :datetime
#  etablissement_id            :bigint           not null
#  ind_classe_regroupement     :binary(1)
#  is_deleted                  :binary(1)
#  last_updated                :datetime
#  libelle                     :string(200)
#  libelle_specialite          :string(200)
#  nbre_max_etudiant           :integer
#  niveau_programme_id         :bigint           not null
#  remarques                   :text(4294967295)
#  responsable_id              :bigint
#  specialite_programme_id     :bigint
#  user_created                :string(255)
#  user_supervision_id         :bigint
#  user_updated                :string(255)
#

class KairosClasse < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "classe"
	establish_connection KAIROS_DB

	  #belongs_to :user, :foreign_key => "id", :class_name => "User"


end
