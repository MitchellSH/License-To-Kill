require 'minitest/autorun'

class TestMenuIntergration < MiniTest::Test::UnitTest
  def test_wrong_input_prints_menu_again
    puts "4"
    assert_includes output, menu_text
  end
  def test_wrong_input_prints_error_message
    puts "4"
    assert_includes output, "4 is not a valid selection"
  end
end

describe "Menu Intergration" do
  context "if the user types in the wrong input" do
    before do "4"
    end
    it "should print menu again" do
      output.should include(menu_text)
    end
    it "should include an appropriate error message" do
      output.should include("4 is not a valid selection")
    end
  end
end