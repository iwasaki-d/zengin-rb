require 'json'
require 'zengin_code/version'
require 'zengin_code/bank'
require 'zengin_code/branch'

module ZenginCode
  class << self
    def preload!
      banks = JSON.load(File.read(DATA_DIR.join('banks.json')))

      banks.values.each do |bank|
        ZenginCode::Bank.new(bank)
      end
    end
  end

  preload!
end
