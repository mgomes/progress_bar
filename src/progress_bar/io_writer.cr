module Progress
  class IOWriter < IO
    def initialize(@bar : IOBar)
    end

    def write(slice : Bytes) : Nil
      @bar.calculate_throughput(slice.bytesize)
      @bar.tick(slice.bytesize)
    end

    def read(slice : Bytes) : Int32
      raise IO::Error.new("read not supported")
    end
  end
end
