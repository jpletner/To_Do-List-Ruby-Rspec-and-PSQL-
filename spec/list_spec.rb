require_relative 'spec_helper'

describe List do
  it 'is initialized with a name' do
    list = List.new('Epic stuff')
    list.should be_an_instance_of List
  end

  it 'tells you its name' do
    list = List.new('Epic Stuff')
    list.name.should eq 'Epic Stuff'
  end

  it 'is the same list if it has the same name' do
    list1 = List.new('Epic Stuff')
    list2 = List.new('Epic Stuff')
    list1.should eq list2
  end

  it 'starts off with no lists' do
      List.all.should eq []
  end

  it 'lets you save lists to the database' do
    list = List.new('Epic Stuff')
    list.save
    List.all.should eq [list]
  end
end
