module Spree
  class Printables::Invoice::Item
    extend Spree::DisplayMoney

    attr_accessor :sku, :product_identifier, :thumbnail_url, :name, :options_text, :price, :quantity, :total, :subscribed?

    money_methods :price, :total

    def initialize(args = {})
      args.each do |key, value|
        send("#{key}=", value)
      end
    end
  end
end
