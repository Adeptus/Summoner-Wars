class DeckCard < ActiveRecord::Base

  STATUSES = %w(discarded in_play in_deck in_magic in_hand)
  
  #################
  ### Callbacks ###
  #################

  before_create :set_life, :set_status

  def set_life
    self.current_life = card.life if card && card.attributes.has_key?("life")
  end

  def set_status
    self.status = "in_deck"
  end

  ####################
  ### Associations ###
  ####################

  belongs_to :deck
  belongs_to :card, polymorphic: true

  ###################
  ### Validations ###
  ###################

  validates_presence_of  :deck_id, :card_type, :card_id

  ##############
  ### Scopes ###
  ##############

  ########################
  ### Instance Methods ###
  ########################
end
