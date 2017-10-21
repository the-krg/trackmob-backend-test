require "parentesis"

describe AbreFecha do
  describe ".balanceado?" do
    context ">>>Retornos balanceados:" do
      context "Dadas as chaves: ()" do
        it "retorna balanceado" do
          expect(AbreFecha.balanceado?("()")).to eql(true)
        end
      end
      context "Dadas as chaves: {[()]}" do
        it "retorna balanceado" do
          expect(AbreFecha.balanceado?("{[()]}")).to eql(true)
        end
      end
      context "Dadas as chaves: {()}(({[]}))" do
        it "retorna balanceado" do
          expect(AbreFecha.balanceado?("{()}(({[]}))")).to eql(true)
        end
      end
    end
    context ">>>Retornos não-balanceados:" do
      context "Dadas as chaves: ({)}" do
        it "retorna não-balanceado" do
          expect(AbreFecha.balanceado?("({)}")).to eql(false)
        end
      end
      context "Dadas as chaves: {{)(}}" do
        it "retorna não-balanceado" do
          expect(AbreFecha.balanceado?("{{)(}}")).to eql(false)
        end
      end
      context "Dadas as chaves: {{{{)(()[])}}}}" do
        it "retorna não-balanceado" do
          expect(AbreFecha.balanceado?("{{{{)(()[])}}}}")).to eql(false)
        end
      end
    end
  end
end
