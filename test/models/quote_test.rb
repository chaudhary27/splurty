require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
   test "unique_tag" do
   	quote = Quote.create(:author => 'Faisal Farooq', :saying => 'yolo')

   	expected = 'FF#' + quote.id.to_s
   	actual = quote.unique_tag
   	assert_equal expected, actual
   end
end
