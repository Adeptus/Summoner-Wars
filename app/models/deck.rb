class Deck < ActiveRecord::Base
  #################
  ### Callbacks ###
  #################

  ####################
  ### Associations ###
  ####################

  belongs_to :player, class_name: "User"
  belongs_to :game
  has_many :deck_cards
  has_many :unit_cards,  through: :deck_cards, source: "card", source_type: "Unit"
  has_many :event_cards, through: :deck_cards, source: "card", source_type: "Event"
  has_many :wall_cards,  through: :deck_cards, source: "card", source_type: "Wall"

  ###################
  ### Validations ###
  ###################

  ##############
  ### Scopes ###
  ##############

  ########################
  ### Instance Methods ###
  ########################

  def rase_type
    unit_cards.first.rase_type if deck_cards.any?
  end

  def generate_deck(rase_name)
    %w(Unit Event Wall).each do |class_type|
      class_type.constantize.where(rase_type: rase_name).each do |record|
        record.count_in_deck.times do
          self.deck_cards.create(card_type: class_type, card_id: record.id)
        end
      end
    end
  end
end
