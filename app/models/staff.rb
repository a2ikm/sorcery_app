class Staff < ActiveRecord::Base
  authenticates_with_sorcery!
end
