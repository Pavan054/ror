# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Clinic, type: :model do
  context 'clinic creation' do
    it 'does not create a clinic if name is blank' do
      clinic = build(:clinic, name: '')
      #binding.pry
      expect(clinic.valid?).to eq false
      expect(clinic.errors.messages[:name]).to eq(["can't be blank"])
    end

    it 'does not create a clinic if name contains numbers' do
      clinic = build(:clinic, name: 'lab54')
      #binding.pry
      expect(clinic.valid?).to eq false
      expect(clinic.errors.messages[:name]).to eq(["can't allow letters"])
    end
  end
end
