require "romanos"

describe Romans do
  describe ".transforma" do
    context "numero comum, não composto" do
      context "Dado o número inteiro 1" do
        it "retorna I" do
          expect(Romans.transforma(1)).to eql("I")
        end
      end
    end
    context "Dado o número inteiro 4" do
      it "retorna IV" do
        expect(Romans.transforma(4)).to eql("IV")
      end
    end
    context "Dado o número inteiro 42" do
      it "retorna XLII" do
          expect(Romans.transforma(42)).to eql("XLII")
      end
    end
    context "Dado o número inteiro 49" do
      it "retorna XLIX" do
        expect(Romans.transforma(49)).to eql("XLIX")
      end
    end
    context "Dado o número inteiro 999" do
      it "retorna CMXCIX" do
        expect(Romans.transforma(999)).to eql("CMXCIX")
      end
    end
    context "Dado o número inteiro 1000" do
      it "retorna M" do
        expect(Romans.transforma(1000)).to eql("M")
      end
    end
  end
end
