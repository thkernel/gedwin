# == Schema Information
#
# Table name: programme
#
#  id                                           :bigint           not null, primary key
#  version                                      :bigint           not null
#  code                                         :string(20)       not null
#  cycle_programme_id                           :bigint
#  date_activated                               :datetime
#  date_created                                 :datetime
#  date_desactivated                            :datetime
#  entite_id                                    :bigint
#  etablissement_id                             :bigint           not null
#  is_activated                                 :binary(1)
#  last_updated                                 :datetime
#  libelle                                      :string(200)      not null
#  methode_calcul_id                            :bigint
#  methode_calcul_moyenne_annee_id              :bigint
#  methode_calcul_moyenne_programme_id          :bigint
#  methode_calcul_moyenne_session_id            :bigint
#  methode_calcul_moyenne_unite_enseignement_id :bigint
#  motif_activated                              :string(255)
#  motif_desactived                             :string(255)
#  ratio_saisie_note                            :integer
#  remarques                                    :text(4294967295)
#  sigle                                        :string(50)       not null
#  type_programme_id                            :bigint
#  type_session_id                              :bigint           not null
#  user_activated                               :string(255)
#  user_created                                 :string(255)
#  user_desactivated                            :string(255)
#  user_updated                                 :string(255)
#  ind_cumul_credit                             :binary(1)
#  moyenne_eliminatoire                         :integer
#  moyenne_passage                              :integer
#  regroupement                                 :binary(1)
#  code_programme                               :string(20)       not null
#  calcul_grade                                 :binary(1)
#

class KairosProgramme < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "programme"
	establish_connection KAIROS_DB

	#has_one :etudiant, :class_name => "KairosEtudiant", :foreign_key => :id


end
