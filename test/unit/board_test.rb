require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "invalid with empty attributes" do
    board = Board.new
    assert !board.valid?
    assert board.errors.invalid?(:description)
  end
end
