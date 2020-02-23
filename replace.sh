#sed-替换字符串的一部分&使用前半部分做索引
#场景：脚本中，有些字符串特别长一串，且前面一部分相同，后面一部分不同，不同的长度还是一致的，替换的时候不想替换一大片，就只想替换后面不同的为相同的
. ./data.txt
sed -i 's/\(had\)...../\1doop/g' data.txt
#一个文件中，某些字符串有一个相同的特征，前面的一串相同，后面一串不同，现在要把后面那串都改成同一个子串
#sed -i 's///g' file 模式：/\(same_str\)...../\1replace_str
# 相同的子串需要括起来， 并且用右斜杠对左右括号做转义、然后用.....代表后面任何字符，其中，一个.表示一个字符,5个点表示5个字符。
#最后在替换字符中，用1来表示匹配到的same_str，只是1要转移（不是普通的数字1，有特殊含义了），后面再接上要替换的字符串