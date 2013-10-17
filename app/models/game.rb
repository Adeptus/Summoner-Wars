class Game < ActiveRecord::Base

  #################
  ### Callbacks ###
  #################

  ####################
  ### Associations ###
  ####################
  has_many :decks
  has_many :players, through: :decks, class_name: "User"
  has_one  :current_deck,    class_name: "Deck"
  has_one  :current_player, through: :current_deck, class_name: "User"

  ###################
  ### Validations ###
  ###################

  ##############
  ### Scopes ###
  ##############

  scope :finished,   -> { where("finished_at is not null")}
  scope :unfinished, -> { where("finished_at is null")}
  scope :recent,     -> { order("updated_at desc")}

  ########################
  ### Instance Methods ###
  ########################

end
