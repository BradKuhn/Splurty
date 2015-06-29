require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

	test "unique_tag" do
		quote = Quote.create(:author => 'John Smith', :saying => "YOLO unless you're Jesus.")
		expected = 'JS#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end

end