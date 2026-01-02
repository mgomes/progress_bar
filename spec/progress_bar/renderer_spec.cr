require "../spec_helper"

describe Progress::Renderer do
  it "treats zero-length bars as complete" do
    bar = Progress::Bar.new(total: 0)
    renderer = Progress::Renderer.new(bar: bar)

    renderer.percent_complete.should eq(100.0)
  end
end
