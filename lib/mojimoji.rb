require "mojimoji/version"
require "moji"

module Mojimoji
  refine String do

    def strip_all_spaces_and_to_em
      strip_all_spaces.to_em
    end

    def strip_all_spaces
      gsub(/[[:space:]]+/, '')
    end

    def to_em
      Moji.han_to_zen(self.backquote_to_em)
    end

    def backquote_to_em
      gsub('`', '｀')
    end

    def strip_all_spaces_and_to_em?
      em? && strip_all_spaces?
    end

    def em?
      Moji.type?(self, Moji::ZEN)
    end

    def strip_all_spaces?
      (/[[:space:]]+/ =~ self) == nil
    end
  end
end
