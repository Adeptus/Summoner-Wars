class Event < ActiveRecord::Base
  #################
  ### Callbacks ###
  #################

  ####################
  ### Associations ###
  ####################

  ###################
  ### Validations ###
  ###################

  validates_presence_of  :rase_type, :count_in_deck

  ##############
  ### Scopes ###
  ##############

  ########################
  ### Instance Methods ###
  ######################## 
end
