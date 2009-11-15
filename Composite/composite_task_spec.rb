require 'composite_task'
require 'task'

class StubTask < Task
  def initialize
    super('Stubbed Task')
  end

  def get_time_required
    3.0
  end
end

describe CompositeTask do
  before(:each) do
    @composite_task = CompositeTask.new('composite task')
  end

  it "should be able to receive a Task and add it to its task list" do
    task = Task.new('simple task')
    task.get_time_required.should == 0

    add_stubbed_task_to_composite_task(task)
    @composite_task.get_time_required.should == 0.0
  end

  it "should be able to receive two StubTasks and add them to its task list" do
    add_stubbed_task_to_composite_task(StubTask.new)
    @composite_task.get_time_required.should == 3.0

    add_stubbed_task_to_composite_task(StubTask.new)
    @composite_task.get_time_required.should == 6.0
  end

  def add_stubbed_task_to_composite_task(task)
    task.parent.should be_nil

    @composite_task << task
    task.parent.should == @composite_task
  end
end

