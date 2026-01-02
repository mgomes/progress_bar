require "../spec_helper"

describe Progress::IOWriter do
  it "raises when read is invoked" do
    bar = Progress::IOBar.new(total: 1)
    writer = Progress::IOWriter.new(bar: bar)

    expect_raises(IO::Error) do
      writer.read(Bytes.new(1))
    end
  end
end
