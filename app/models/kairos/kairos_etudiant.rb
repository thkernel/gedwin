# == Schema Information
#
# Table name: etudiant
#
#  id                        :bigint           not null, primary key
#  abandon                   :binary(1)
#  adresse_etudiant1         :string(200)
#  annee_integration_id      :bigint
#  code_specialite           :string(100)
#  date_created              :datetime
#  date_deleted              :datetime
#  date_naissance            :datetime
#  deleted                   :binary(1)
#  ind_export                :binary(1)
#  last_updated              :datetime
#  lieu_naissance            :string(100)
#  nationalite_id            :bigint
#  niveau_integration_id     :bigint
#  old_code_permanent        :string(255)
#  old_id                    :bigint
#  payeur                    :string(3)
#  pays_naissance_id         :bigint
#  pays_origine_id           :bigint
#  programme_integration_id  :bigint
#  sexe                      :string(1)
#  specialite_integration_id :bigint
#  user_created              :string(255)
#  user_deleted              :string(255)
#  user_updated              :string(255)
#  candidat_correspondant_id :bigint
#  reference_export          :string(255)
#  acces_portail_interdit    :binary(1)
#  motif_interdiction        :string(255)
#

class KairosEtudiant < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "etudiant"
	establish_connection KAIROS_DB

	  #belongs_to :user, :foreign_key => "id", :class_name => "User"


end
