require 'test_helper'

class MovementTest < ActiveSupport::TestCase
  def setup
    @movement = Movement.create(name: 'Test Movement', description: 'This is a movement that is useful for testing', repeater_names: '[{1:Name},{2:Phone_Number}]')
  end

  test 'movement must be valid' do
    assert @movement.valid?
  end

  test "movement name must be present" do
    @movement.name = ''
    assert_not @movement.valid?
  end

  test "movement name must be at least 5 characters" do
    @movement.name = 'a' * 4
    assert_not @movement.valid?
  end

  test "movement name must not be longer than 200 characters" do
    @movement.name = 'a' * 201
    assert_not @movement.valid?
  end

  test "movement should be an eligible value" do

  end

  test "movement name must be unique" do
    movement2 = Movement.create(name: 'Test Movement', description: 'This is a movement that is useful for testing', repeater_names: '[{1:Name},{2:Phone_Number}]')
    assert_not movement2.valid?
  end

  test "movement name should start with a letter and
    only contain letters, numbers, spaces, hyphens or underscores" do
    invalid_names = [ ".", ")", "(", "*", "&", "$", "@samplecom", "!", "+"]
    invalid_names.each do |i|
      name = i * 5
      @movement.name = name
      assert_not @movement.valid?, "#{i} should be invalid"
    end
  end

  test "movement description should be under 1000 characters" do
    @movement.description = 'a' * 1001
    assert_not @movement.valid?
  end
end
