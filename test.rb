# -*- coding: utf-8 -*-
$LOAD_PATH << '/Users/fangxiang/work/ruby/sensitive_words/lib'
require 'sensitive_words'

#首先载入敏感词词典
SensitiveWords.load_dict("#{File.dirname(__FILE__)}/dictionary/dict1.txt")
SensitiveWords.load_dict("#{File.dirname(__FILE__)}/dictionary/dict2.txt") #可以载入多次

#从数组加载敏感词词典
SensitiveWords.add_dict_from_arr %w(习近平 周永康 暴干 BLOWJOB 流氓政府 FUCKYOU FUCK 你大爷)

article = "习近平周永暴干康BLOWJOBjeffrey哈哈哈流氓政府"

#找出文章中的所有敏感词
words = SensitiveWords.sensitive_words(article)
puts words.inspect   # => ["习近平", "暴干", "BLOWJOB", "流氓政府"]

#或者只需要指定数量上限的敏感词
words = SensitiveWords.sensitive_words(article,2)
puts words.inspect   # => ["习近平", "暴干"]