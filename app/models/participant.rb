# frozen_string_literal: true

class Participant < ApplicationRecord
  validates :name, :age, :gender, presence: true

  validates :gender, inclusion: { in: %w[Male Female],
                                  message: 'Gender must be either male or female' }

  validates :name, uniqueness: { case_sensitive: false }

  before_validation :handle_gender
  after_validation :method_after_validation

  before_save :method_before_save
  after_save :method_after_save

  before_create :method_before_create
  after_create :method_after_create

  private

  def handle_gender
    # if self.gender.downcase.in? ['male', 'm']
    #     self.gender = 'Male'
    # end
    self.gender = (gender.downcase.in? %w[male m]) ? 'Male' : gender
    self.gender = (gender.downcase.in? %w[female f]) ? 'Female' : gender
  end

  def method_after_validation
    puts '====================================='
    puts 'we are in after validation method'
    puts '====================================='
  end

  def method_before_save
    puts '====================================='
    puts 'we are in before save method'
    puts '====================================='
  end

  def method_after_save
    puts '====================================='
    puts 'we are in after save method'
    puts '====================================='
  end

  def method_before_create
    puts '====================================='
    puts 'we are in before create method'
    puts '====================================='
  end

  def method_after_create
    puts '====================================='
    puts 'we are in after create method'
    puts '====================================='
  end
end
