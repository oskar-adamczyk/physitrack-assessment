# frozen_string_literal: true

# List of changes applied with explanation:
# 1. Scope must be callable (lambda or Proc) - it is required.
# 2. Singular class name + filename convention - auto mapping for
#    magic functions on rails Active Records side + conventions.
# 3. Condition is reversed - added recently seems to require created_at greater than or equal to 3 days ago, not lower.
#    It could be decided if we need to compare beginning of days or something, should we consider timezones, currently
#    assumed that we just check direct datetimes.
# 4. Moved row query with Arel statement - recommended, safer and my personal preference.
# 5. Would add some validations - depends on business logic but for RoR applications it is recommended to use provided
#    by Active Record functions (not attached to this file due to lack of business logic requirements).
# 6. Abstract class for ApplicationRecords - generic behaviours (like paranoid removal) gathered in one abstract layer.
# *. What I would recommend to add is some kind of test - even unit one for model behaviours. It would require some
#    additional tech stack like rspec or minitest. Why? Because every piece of code IMHO must be tested to ensure
#    solution quality.
class Post < ApplicationRecord
  scope :added_recently, -> { where Post.arel_table[:created_at].gteq(3.days.ago) }
end
