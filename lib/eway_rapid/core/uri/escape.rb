module Core::URI
  module Wrapper
    class Delegator
      def escape(*args)
        ::URI::Parser.new.escape(*args)
      end
    end
  end

  const_set(:Escape, Wrapper::Delegator.new)
end
