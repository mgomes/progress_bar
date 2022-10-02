module Progress
  class IOWriter < IO
    def initialize(@bar : IOBar)

    end

    def write(slice : Bytes) : Nil
      @bar.caclulate_throughput(slice.bytesize)
      @bar.tick(slice.bytesize)
    end

    def read(slice : Bytes) : Nil

    end
  end
end
