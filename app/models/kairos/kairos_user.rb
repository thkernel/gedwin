# == Schema Information
#
# Table name: user
#
#  id                              :bigint           not null, primary key
#  version                         :bigint           not null
#  account_expired                 :binary(1)        not null
#  account_locked                  :binary(1)        not null
#  changer_pass                    :binary(1)
#  civilite_id                     :bigint
#  date_active                     :datetime
#  date_desactive                  :datetime
#  date_reinitialisation           :datetime
#  email                           :string(255)
#  enabled                         :binary(1)        not null
#  etablissement_id                :bigint           not null
#  fonction                        :string(255)
#  ind_edit_email                  :binary(1)
#  ind_edit_tel                    :binary(1)
#  ind_envoi_message               :binary(1)
#  ind_reduction_autorise          :binary(1)
#  ind_send_msg_bulletin           :binary(1)
#  ind_send_msg_ecran              :binary(1)
#  ind_send_msg_mail               :binary(1)
#  ind_send_msg_releve             :binary(1)
#  ind_send_msg_sms                :binary(1)
#  is_user_connected               :binary(1)
#  last_date_connected             :datetime
#  last_etablissement_connected_id :bigint
#  motif_active                    :text(4294967295)
#  motif_desactive                 :text(4294967295)
#  motif_reinitialisation          :string(255)
#  nom                             :string(255)
#  password                        :string(255)
#  password_expired                :binary(1)        not null
#  prenom                          :string(255)
#  reference_externe               :string(255)
#  reinit_password                 :binary(1)        not null
#  reinit_password_attemps         :integer
#  reinitialise                    :binary(1)
#  taux_reduction_max              :float(53)
#  taux_reduction_min              :float(53)
#  tel_domicile                    :string(255)
#  tel_mobile                      :string(255)
#  tel_mobile1                     :string(255)
#  type_file                       :string(255)
#  user_account_locked             :string(255)
#  user_active                     :string(255)
#  user_desactive                  :string(255)
#  user_reinitialisation           :string(255)
#  user_reinitialise               :string(255)
#  user_type                       :string(4)
#  username                        :string(255)
#  why_account_locked              :string(255)
#  date_accountun_locked           :datetime
#  user_accountun_locked           :string(255)
#  why_accountun_locked            :string(255)
#

class KairosUser < ApplicationRecord
	# Connect to kairos DB on MySql
	self.table_name = "user"
	self.ignored_columns = %w[photo]
	establish_connection KAIROS_DB

	#has_one :etudiant, :class_name => "KairosEtudiant", :foreign_key => :id


end
