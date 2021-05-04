# == Schema Information
#
# Table name: annee_scolaire_programme
#
#  id                   :bigint           not null, primary key
#  version              :bigint           not null
#  annee_reference_id   :bigint           not null
#  annee_scolaire       :string(150)
#  credit_passage       :float(53)
#  date_created         :datetime
#  date_debut           :datetime
#  date_deleted         :datetime
#  date_fin             :datetime
#  deleted              :binary(1)
#  etablissement_id     :bigint           not null
#  ind_calcul           :string(2)
#  ind_en_cours         :binary(1)
#  ind_passage_etudiant :string(1)
#  last_updated         :datetime
#  moyenne_passage      :float(53)
#  num_ordre            :integer          not null
#  programme_id         :bigint           not null
#  user_created         :string(255)
#  user_deleted         :string(255)
#  user_responsable     :string(255)
#  user_updated         :string(255)
#

class KairosAnneeScolaireProgramme < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "annee_scolaire_programme"
	establish_connection KAIROS_DB

	  #belongs_to :user, :foreign_key => "id", :class_name => "User"


end
