class Loco < ActiveRecord::Base
  attr_accessible :Arr, :Base, :Coast, :Coasthrs, :Dep, :Hault, :HaultHrs, :KMS, :Kwhgen, :Kwhhalt, :Kwhration, :Load, :Locono, :Section, :Train, :Traintype, :crew_id, :kwhrun
end
