class Hand

	attr_accessor :cards

	def initialize (cards)
		@cards = cards
	end

	def top_card(cards)
		top_card = cards[0]
		cards = cards[1..cards[cards.length - 1]]
		return top_card
	end


end
