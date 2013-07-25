describe Canonicalifier::Helpers do
  describe "#canonical_link_tag" do
    subject(:canonical_link_tag) { helper.canonical_link_tag(url) }
    let(:url) { }

    context "with given url" do
      let(:url) { "http://example.com/" }

      it "returns a link tag with rel=canonical and the given url" do
        expect(canonical_link_tag).to eq %Q{<link href="http://example.com/" rel="canonical" />}
      end
    end

    context "with no url" do
      context "and no @canonical_url set" do
        it "returns an empty string" do
          expect(canonical_link_tag).to eq ""
        end
      end

      context "and @canonical_url is set" do
        before do
          @canonical_url = "http://example.com/canonical_url"
        end

        it "returns a link tag with rel=canonical and href=@canonical_url" do
          expect(canonical_link_tag).to eq %Q{<link href="http://example.com/canonical_url" rel="canonical" />}
        end
      end
    end
  end
end
