# ====================================
# Lesson 23, task 2
# ====================================
# version: 2
#
# encoding: utf-8
#
# Программа, которая выбирает произвольную карту игральной колоды, версия 2.

# Этот код необходим только при использовании unicode-символов на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Создадим массив с набором достоинств
values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

# Создадим массив с набором мастей, вместо названия масти — иконка-символ
# Буби, черви, крести, пики.
suits = ["♦", "♠", "♥ ", "♣"]

# Выведем произвольную карты, выбрав по одному элементу из массивов
puts "#{values.sample} of #{suits.sample}"
