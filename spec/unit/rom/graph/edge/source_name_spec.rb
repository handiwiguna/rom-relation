require 'spec_helper'

describe Graph::Edge, '#source_name' do
  subject { object.source_name }

  let(:object) { described_class.new(name, left, right) }

  let(:name)            { mock('orders', :relationship => relationship, :to_sym => :orders) }
  let(:relationship)    { mock('relationship', :join_definition => join_definition) }
  let(:join_definition) { mock('join_definition') }

  let(:left)            { mock('users', :name => source_name, :header => source_header) }
  let(:source_name)     { mock('source_name') }
  let(:source_header)   { mock('source_header', :join => mock) }
  let(:right)           { mock('orders', :name => target_name, :header => mock) }
  let(:target_name)     { mock('target_name') }

  before do
    pending 'no relationships yet'
  end

  it { should be(source_name) }
end
