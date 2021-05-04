# == Schema Information
#
# Table name: niveau_programme
#
#  id               :bigint           not null, primary key
#  version          :bigint           not null
#  attestation_id   :bigint
#  date_created     :datetime
#  date_deleted     :datetime
#  deleted          :binary(1)
#  diplome_id       :bigint
#  etablissement_id :bigint           not null
#  last_updated     :datetime
#  niveau_id        :bigint
#  programme_id     :bigint           not null
#  remarques        :text(4294967295)
#  user_created     :string(255)
#  user_deleted     :string(255)
#  user_updated     :string(255)
#

class KairosNiveauProgramme < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "niveau_programme"
	establish_connection KAIROS_DB

	#has_one :etudiant, :class_name => "KairosEtudiant", :foreign_key => :id


end
