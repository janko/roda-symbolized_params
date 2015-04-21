require "spec_helper"

Roda.route do |r|
  r.root { params.inspect }
end

RSpec.describe "symbolized_params plugin" do
  it "symbolizes the top-level hash" do
    get "/", {foo: "bar"}

    expect(last_response.body).to eq '{:foo=>"bar"}'
  end

  it "symbolized nested hashes" do
    get "/", {foo: {bar: "baz"}}

    expect(last_response.body).to eq '{:foo=>{:bar=>"baz"}}'
  end

  it "symbolizes hashes inside arrays" do
    get "/", {foo: [{bar: "baz"}]}

    expect(last_response.body).to eq '{:foo=>[{:bar=>"baz"}]}'
  end
end
