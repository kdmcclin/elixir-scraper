defmodule Scraper do
	use Hound.Helpers

	def run do 
		IO.puts "starting"
		Hound.start_session

		navigate_to "https://www.packtpub.com/packt/offers/free-learning"
		parent_element_id = find_element(:class, "dotd-title")
		element_id = find_within_element(parent_element_id, :tag, "h2")
		title = visible_text(element_id)

		IO.puts "The free book today is #{title}"
	end
end