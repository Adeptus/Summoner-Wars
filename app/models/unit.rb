class Unit < ActiveRecord::Base

  #################
  ### Callbacks ###
  #################



  ####################
  ### Associations ###
  ####################

  ###################
  ### Validations ###
  ###################

  validates_presence_of  :name, :life, :power, :summon_cost, :unit_type, :wepon_type, :rase_type, :count_in_deck

  ##############
  ### Scopes ###
  ##############

  ########################
  ### Instance Methods ###
  ########################
end
