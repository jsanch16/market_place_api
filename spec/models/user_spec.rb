require 'rails_helper'

RSpec.describe User, type: :model do
	let (:user) { FactoryGirl.build(:user) }

	subject (user)
	it { is_expected.to respond_to(:email) }
	it { is_expected.to respond_to(:password) }
	it { is_expected.to respond_to(:password_confirmation) }
	it { is_expected.to be valid }

	it { is_expected.to validate_presence_of(:email) }
	it { is_expected.to validate_uniqueness_of(:email) }
	it { is_expected.to validate_confirmation_of(:password) }
	it { is_expected.to allow_value('example@domain.com').for(:email) }



end
