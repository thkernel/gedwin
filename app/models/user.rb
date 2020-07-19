# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  login                  :string
#  slug                   :string
#  role_id                :bigint           not null
#  created_by             :integer
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  # Relationships
	belongs_to :role
	has_many :register_types, dependent: :destroy
	has_many :registers, dependent: :destroy
	has_many :services, dependent: :destroy
	has_many :supports, dependent: :destroy
	has_many :natures, dependent: :destroy
	has_many :correspondent_types, dependent: :destroy
	has_many :organization_types, dependent: :destroy
	has_many :correspondents, dependent: :destroy
	has_many :folders, dependent: :destroy
	has_many :binders, dependent: :destroy
	has_many :arrival_mails, dependent: :destroy
	has_many :departure_mails, dependent: :destroy
	has_one  :profile, dependent: :destroy
	has_one  :organization, dependent: :destroy
	has_many :imputation_reasons, dependent: :destroy
	has_many :imputations, dependent: :destroy
	has_many :task_types, dependent: :destroy
	has_many :task_statuses, dependent: :destroy
	has_many :request_types, dependent: :destroy
	has_many :requests, dependent: :destroy


	has_many :recipient_imputations, :class_name => "Imputation", :foreign_key => :recipient_id


	has_many :tasks, dependent: :destroy
	#has_many :tenants, dependent: :destroy

	# Add nested attributes for profile.
	accepts_nested_attributes_for :profile
	
	# Validations

	validates :login, presence: true, uniqueness: true



	private 

	def generate_random_uid
		begin
			self.slug = "u#{SecureRandom.random_number(1_000_000_000)}"
		end while User.where(slug: self.slug).exists?
	end 

end
