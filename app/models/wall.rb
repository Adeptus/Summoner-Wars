class Wall < ActiveRecord::Base
  #################
  ### Callbacks ###
  #################

  ####################
  ### Associations ###
  ####################

  ###################
  ### Validations ###
  ###################

  validates_presence_of  :name, :life, :rase_type, :count_in_deck

  ##############
  ### Scopes ###
  ##############

  ########################
  ### Instance Methods ###
  ########################  
end
