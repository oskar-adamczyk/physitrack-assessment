# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  acts_as_paranoid # example gem that I would attach
  primary_abstract_class
end
