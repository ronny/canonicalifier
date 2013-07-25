describe TestController do
  describe "#canonical_url" do
    context "with no arguments" do
      it 'assigns url_for({}) to @canonical_url' do
        get :index
        expect(assigns(:canonical_url)).to eq "http://test.host/"
      end
    end

    context "with a hash argument" do
      it 'assigns url_for(hash) to @canonical_url' do
        get :hash, id: 42
        expect(assigns(:canonical_url)).to eq "http://test.host/hash/42"
      end
    end

    context "with a string argument" do
      it 'assigns string argument to @canonical_url' do
        get :static
        expect(assigns(:canonical_url)).to eq "/static"
      end
    end
  end
end
