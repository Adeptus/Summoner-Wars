class Game < ActiveRecord::Base

  #################
  ### Callbacks ###
  #################



  ####################
  ### Associations ###
  ####################

  belongs_to :player_one,        class_name: "User"
  belongs_to :player_two,        class_name: "User"
  belongs_to :current_player,    class_name: "User"
  belongs_to :player_one_deck,   class_name: "Deck"
  belongs_to :player_two_deck,   class_name: "Deck"  

  ###################
  ### Validations ###
  ###################

  ##############
  ### Scopes ###
  ##############

  scope :finished,      where("finished_at is not null")
  scope :unfinished,    where("finished_at is null")
  scope :recent, order("updated_at desc")

  ########################
  ### Instance Methods ###
  ########################

end
