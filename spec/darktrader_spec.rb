require_relative "../lib/darktrader"
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))


describe "the names_method" do
    it "should not raise errors" do
        expect{scrap_names(page)}.to_not raise_error(StandardError)
    end
end

describe "the scrap_names method" do
    it "gives at least 3 names" do
      expect(scrap_names(page).length).to be > 3
    end
    it "gives the first name of crypto: BTC" do
      expect(scrap_names(page)[0]).to eq("BTC")
    end
  end


describe "the perform method" do
    it "should not raise any error" do
      expect{perform(page)}.to_not raise_error(StandardError)
    end
end


