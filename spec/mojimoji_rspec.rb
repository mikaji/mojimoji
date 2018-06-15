require 'spec_helper'

RSpec.describe Mojimoji do
  using Mojimoji

  describe "Array#strip_all_spaces_and_to_em" do
    subject { "`MO JI　MO JI`".strip_all_spaces_and_to_em }

    it { expect(subject).to eq "｀ＭＯＪＩＭＯＪＩ｀" }
  end

  describe "Array#strip_all_spaces" do
    subject { 'mo j　i '.strip_all_spaces }

    it { expect(subject).to eq 'moji' }
  end

  describe "Array#to_em" do
    subject { 'MOJIMOJI'.to_em }

    it { expect(subject).to eq 'ＭＯＪＩＭＯＪＩ' }
  end

  describe "Array#backquote_to_em" do
    subject { "`".backquote_to_em }

    it { expect(subject).to eq "｀" }
  end

  describe "Array#strip_all_spaces_and_to_em?" do
    subject { 'ＭＯＪＩＭＯＪＩ'.strip_all_spaces_and_to_em? }

    it { expect(subject).to be_truthy }
  end

  describe "Array#em?" do
    subject { 'Ｍ ＯＪＩＭ ＯＪＩ'.em? }

    it { expect(subject).to be_truthy }
  end

  describe "Array#strip_all_spaces?" do
    subject { 'mojimoji'.strip_all_spaces? }

    it { expect(subject).to be_truthy }
  end
end
