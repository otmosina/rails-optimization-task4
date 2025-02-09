# frozen_string_literal: true

# Base class for application config classes
class AppConfig < Anyway::Config
  class << self
    # Make it possible to access a singleton config instance
    # via class methods (i.e., without explictly calling `instance`)
    delegate_missing_to :instance


    private

    # Returns a singleton config instance
    def instance
      @instance ||= new
    end
  end
end
