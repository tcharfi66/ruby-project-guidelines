require_relative '../../config/environment.rb'


require_relative "team.rb"
require_relative "match.rb"

class League < ActiverRecord::Base
    has_many :teams

end