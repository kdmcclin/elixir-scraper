defmodule Scraper do
	use Hound.Helpers

	def start do 
		IO.puts "starting"
		Hound.start_session

		navigate_to "https://www.packtpub.com/packt/offers/free-learning"
		parent_element_id = find_element(:class, "dotd-title")
		title = find_within_element(parent_element_id, :tag, "h2")

		IO.puts "The free book today is #{title}"
	end
end