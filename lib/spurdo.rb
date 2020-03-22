class Spurdo
  # define replacements

  REPLACEMENTS = [
    ["[.]", " :DD"],
    [",", " XDD"],

    ["epic", "ebin"],

    ["wh", "w"],
    ["th", "d"],

    ["af", "ab"],
    ["ap", "ab"],
    ["ca", "ga"],
    ["ck", "gg"],
    ["co", "go"],
    ["ev", "eb"],
    ["ex", "egz"],
    ["et", "ed"],
    ["iv", "ib"],
    ["it", "id"],
    ["ke", "ge"],
    ["nt", "nd"],
    ["op", "ob"],
    ["ot", "od"],
    ["po", "bo"],
    ["pe", "be"],
    ["up", "ub"],

    ["ck", "gg"],
    ["cr", "gr"],
    ["kn", "gn"],
    ["lt", "ld"],
    ["mm", "m"],
    ["pr", "br"],
    ["ts", "dz"],
    ["tr", "dr"],

    ["as", "az"],
    ["bs", "bz"],
    ["ds", "dz"],
    ["fs", "fz"],
    ["gs", "gz"],
    ["is", "iz"],
    ["ls", "lz"],
    ["ms", "mz"],
    ["ns", "nz"],
    ["rs", "rz"],
    ["ss", "sz"],
    ["us", "uz"],
    ["ws", "wz"],
    ["ys", "yz"],

    ["alk", "olk"],
    ["ing", "ign"],

    ["ic", "ig"],
    ["ng", "nk"]
  ]

  SPURDO_SMILE_PATTERN = ":D"
  SPURDO_SMILE_APPEND = " :DD"

  def self.to_spurdo(string)
    # apply replacements
    REPLACEMENTS.each do |filter|
      from = filter[0]
      to = filter[1]
      string = string.gsub(from, to)
    end

    # append Spurdo smile if not found
    unless string.include?(SPURDO_SMILE_PATTERN)
      string += SPURDO_SMILE_APPEND
    end

    # return spurdo'd text
    string
  end
end
