require 'rails_helper'

describe CardJudge do

  describe '#judge' do
    let(:hands){["ストレートフラッシュ", "フルハウス", "ハイカード"]}
    it '0番目がbest判定' do
      expect(CardJudge.judge(hands)).to eq [0]
    end
  end

  describe '#judge' do
    let(:hands){["フルハウス", "ストレートフラッシュ", "ハイカード"]}
    it '1番目がbest判定' do
      expect(CardJudge.judge(hands)).to eq [1]
    end
  end

  describe '#judge' do
    let(:hands){["フルハウス", "ハイカード", "ストレートフラッシュ"]}
    it '2番目がbest判定' do
      expect(CardJudge.judge(hands)).to eq [2]
    end
  end

  describe '#judge' do
    let(:hands){["ストレートフラッシュ", "ハイカード", "ストレートフラッシュ"]}
    it '複数番目がbest判定' do
      expect(CardJudge.judge(hands)).to eq [0,2]
    end
  end

end
