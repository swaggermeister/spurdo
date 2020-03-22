require "minitest/autorun"
require "../lib/spurdo.rb"

describe Spurdo do
  it "recites the preamble to the US Constitution" do
    preamble = "We the People of the United States, in Order to form a more perfect Union, establish Justice, insure domestic Tranquility, provide for the common defence, promote the general Welfare, and secure the Blessings of Liberty to ourselves and our Posterity, do ordain and establish this Constitution for the United States of America."
    expected_text = "We de beoble of de Unided States XDD in Order to form a more berfect Union XDD establizh Juztige XDD inzure domestig dranquilidy XDD brovide for de gomon defence XDD bromode de general Welfare XDD and secure de Bleszignz of Liberty to ourzelves and our bosteridy XDD do ordain and establizh diz gonztidution for de Unided States of Ameriga :DD"
    _(Spurdo.to_spurdo(preamble)).must_equal(expected_text)
  end

  it "changes periods to :DD smiles" do
    _(Spurdo.to_spurdo("Hi. How are you?")).must_equal("Hi :DD How are you?")
  end

  it "changes commas in the middle of a sentence to XD smiles" do
    _(Spurdo.to_spurdo("One, two, three")).must_equal("One XDD two XDD dree :DD")
  end

  it 'no change in "hello"' do
    _(Spurdo.to_spurdo("hello :D")).must_equal("hello :D")
  end

  it "adds a smile if none" do
    _(Spurdo.to_spurdo("dang")).must_equal("dank :DD")
  end

  it "keeps the smile if already has one" do
    _(Spurdo.to_spurdo("dang :D")).must_equal("dank :D")
  end

  it "epic -> ebin" do
    _(Spurdo.to_spurdo("epic :D")).must_equal("ebin :D")
  end

  it "wh -> w" do
    _(Spurdo.to_spurdo("what :D")).must_equal("wat :D")
  end

  it "th -> d" do
    _(Spurdo.to_spurdo("that :D")).must_equal("dat :D")
  end

  it "af -> ab" do
    _(Spurdo.to_spurdo("after :D")).must_equal("abter :D")
  end

  it "ap -> ab" do
    _(Spurdo.to_spurdo("apple :D")).must_equal("abple :D")
  end

  it "ca -> ga" do
    _(Spurdo.to_spurdo("cake :D")).must_equal("gage :D")
  end

  it "ck -> g" do
    _(Spurdo.to_spurdo("clock :D")).must_equal("clogg :D")
  end

  it "co -> go" do
    _(Spurdo.to_spurdo("cool :D")).must_equal("gool :D")
  end

  it "ev -> eb" do
    _(Spurdo.to_spurdo("even :D")).must_equal("eben :D")
  end

  it "ex -> egz" do
    _(Spurdo.to_spurdo("excel :D")).must_equal("egzcel :D")
  end

  it "et -> ed" do
    _(Spurdo.to_spurdo("poet :D")).must_equal("boed :D")
  end

  it "iv -> ib" do
    _(Spurdo.to_spurdo("live :D")).must_equal("libe :D")
  end

  it "it -> id" do
    _(Spurdo.to_spurdo("slit :D")).must_equal("slid :D")
  end

  it "ke -> ge" do
    _(Spurdo.to_spurdo("kernel :D")).must_equal("gernel :D")
  end

  it "nt -> nd" do
    _(Spurdo.to_spurdo("mint :D")).must_equal("mind :D")
  end

  it "op -> ob" do
    _(Spurdo.to_spurdo("open :D")).must_equal("oben :D")
  end

  it "ot -> od" do
    _(Spurdo.to_spurdo("otter :D")).must_equal("odter :D")
  end

  it "po -> bo" do
    _(Spurdo.to_spurdo("power :D")).must_equal("bower :D")
  end

  it "pe -> be" do
    _(Spurdo.to_spurdo("pen :D")).must_equal("ben :D")
  end

  it "up -> ub" do
    _(Spurdo.to_spurdo("super :D")).must_equal("suber :D")
  end

  it "ck -> gg" do
    _(Spurdo.to_spurdo("click :D")).must_equal("cligg :D")
  end

  it "cr -> gr" do
    _(Spurdo.to_spurdo("croak :D")).must_equal("groak :D")
  end

  it "kn -> gn" do
    _(Spurdo.to_spurdo("know :D")).must_equal("gnow :D")
  end

  it "lt -> ld" do
    _(Spurdo.to_spurdo("wilt :D")).must_equal("wild :D")
  end

  it "mm -> m" do
    _(Spurdo.to_spurdo("summer :D")).must_equal("sumer :D")
  end

  it "pr -> br" do
    _(Spurdo.to_spurdo("prong :D")).must_equal("bronk :D")
  end

  it "ts -> dz" do
    _(Spurdo.to_spurdo("hits :D")).must_equal("hidz :D")
  end

  it "tr -> dr" do
    _(Spurdo.to_spurdo("truck :D")).must_equal("drugg :D")
  end

  it "as -> az" do
    _(Spurdo.to_spurdo("gas :D")).must_equal("gaz :D")
  end

  it "bs -> bz" do
    _(Spurdo.to_spurdo("dibs :D")).must_equal("dibz :D")
  end

  it "ds -> dz" do
    _(Spurdo.to_spurdo("duds :D")).must_equal("dudz :D")
  end

  it "fs -> fz" do
    _(Spurdo.to_spurdo("gifs :D")).must_equal("gifz :D")
  end

  it "gs -> gz" do
    _(Spurdo.to_spurdo("figs :D")).must_equal("figz :D")
  end

  it "is -> iz" do
    _(Spurdo.to_spurdo("foolish :D")).must_equal("foolizh :D")
  end

  it "ls -> lz" do
    _(Spurdo.to_spurdo("kills :D")).must_equal("killz :D")
  end

  it "ms -> mz" do
    _(Spurdo.to_spurdo("yams :D")).must_equal("yamz :D")
  end

  it "ns -> nz" do
    _(Spurdo.to_spurdo("buns :D")).must_equal("bunz :D")
  end

  it "rs -> rz" do
    _(Spurdo.to_spurdo("towers :D")).must_equal("towerz :D")
  end

  it "ss -> sz" do
    _(Spurdo.to_spurdo("moss :D")).must_equal("mosz :D")
  end

  it "us -> uz" do
    _(Spurdo.to_spurdo("thus :D")).must_equal("duz :D")
  end

  it "ws -> wz" do
    _(Spurdo.to_spurdo("skews :D")).must_equal("sgewz :D")
  end

  it "ys -> yz" do
    _(Spurdo.to_spurdo("lays :D")).must_equal("layz :D")
  end

  it "alk -> olk" do
    _(Spurdo.to_spurdo("chalk :D")).must_equal("cholk :D")
  end

  it "ing -> ign" do
    _(Spurdo.to_spurdo("happening :D")).must_equal("habbenign :D")
  end

  it "ic -> ig" do
    _(Spurdo.to_spurdo("plastic :D")).must_equal("plaztig :D")
  end

  it "ng -> nk" do
    _(Spurdo.to_spurdo("rang :D")).must_equal("rank :D")
  end
end
