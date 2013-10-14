class Deck < ActiveRecord::Base
  #################
  ### Callbacks ###
  #################

  ####################
  ### Associations ###
  ####################

  has_many :deck_cards

  ###################
  ### Validations ###
  ###################

  ##############
  ### Scopes ###
  ##############

  ########################
  ### Instance Methods ###
  ########################

  def generate_deck(rase_name)
    units = Unit.where(rase_type: rase_name)
    units.each do |unit|
      unit.count_in_deck.times do
        self.deck_cards.create(card_type: "Unit", card_id: unit.id)
      end
    end
  end
end
