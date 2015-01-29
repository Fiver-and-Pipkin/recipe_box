require('spec_helper')

describe(Recipe) do
  it { should belong_to(:category) }
end
