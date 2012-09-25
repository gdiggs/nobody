require_relative '../../test_helper'

describe Nobody do
  it "must have a version" do
    Nobody::VERSION.wont_be_nil
  end
end
