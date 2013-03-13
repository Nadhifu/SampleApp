class Payment < ActiveRecord::Base
  attr_accessible :checkno, :checkref, :payamt, :ssn
end
