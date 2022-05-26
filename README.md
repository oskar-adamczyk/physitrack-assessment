## List of changes applied with explanation:

/ | Change                                   | Explanation
--- |------------------------------------------| ---
1 | Scope must be callable (lambda or Proc)  | Required
2 | Singular class name + filename convention | Auto mapping formagic functions on rails Active Records side + conventions.
3 | Fix recently added condition             | Current added recently scope seems to require created_at greater than or equal to 3 days ago, not lower. It could be decided if we need to compare beginning of days or something, should we consider timezones, currently assumed that we just check direct datetimes.
4 | Moved row query with Arel statement   | It is recommended, safer and my personal preference.
5 | Would add some validations               | depends on business logic but for RoR applications it is recommended to use provided by Active Record functions (not attached to this file due to lack of business logic requirements).
6 | Abstract class for ApplicationRecords    | generic behaviours (like paranoid removal) gathered in one abstract layer.
7 | Scope must be callable (lambda or Proc)  | even unit one for model behaviours. It would require some additional tech stack like rspec or minitest. Why? Because every piece of code IMHO must be tested to ensure solution quality.
