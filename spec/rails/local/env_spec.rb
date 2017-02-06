require "spec_helper"

describe Rails::Local::Env do
  it "has a version number" do
    expect(Rails::Local::Env::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
