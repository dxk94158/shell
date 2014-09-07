问题1：/etc/syslog.conf 不存在
解决：
centos6起/etc/syslog.conf不再有！而是/etc/rsyslog.conf代替！
#替换
:1,$s/syslog.conf/rsyslog.conf/gc

问题2：dos格式 导致shell function 报错
解决办法如下：
vim下unix和dos格式转换

http://www.2cto.com/os/201309/244729.html

vim下unix和dos格式转换
 
很久以前，老式的电传打字机使用两个字符来另起新行。一个字符把滑动架移回首位 (称为回车, <CR>)，另一个字符把纸上移一行 (称为换行, <LF>)。
 
当计算机问世以后，存储器曾经非常昂贵。有些人就认定没必要用两个字符来表示行尾。
 
UNIX 开发者决定他们可以用 <Line Feed> 一个字符来表示行尾。
 
Apple 开发者规定了用 <CR> 。
 
开发 MS-DOS (以及微软视窗) 的那些家伙则决定沿用老式的<CR><LF>。
 
那意味着，如果你试图把一个文件从一种系统移到另一种系统，那么你就有换行符方面的麻烦。
 
如果你用往日美好的 Vi 来尝试编辑一个采用 MS-DOS 格式的文件，你将会发现每一行的末尾有个 ^M 字符。(^M 就是 <CR>)。
 
Vim 编辑器能自动识别不同文件格式，并且不劳你操心就把事情给办妥了。选项 'fileformats' 包含各种各样的格式，Vim 会在编辑一个新文件之初
 
尝试该选项定义得各种格式。
 
例如，下面这个命令告诉 Vim 先尝试用 UNIX 格式，其次, 尝试
 
MS-DOS 格式:
 
:set fileformats=unix,dos
编辑一个文件时，你将注意到 Vim 给出的信息消息报中包括文件所用得格式。如果你编辑的是本地格式文件(你编辑的文件格式和所用系统一致)，你就不会看到任何格式名。因此在 Unix 系统上编辑一个 Unix 格式文件不会产生任何关于格式的信息。但你若编辑一个 dos 文件，Vim 将这样通知你:
 
"/tmp/test" [dos] 3L, 71C
你可以用 'fileformat' 选项把文件从一种格式转换为另一种。例如，假定你有个名为 README.TXT 的 MS-DOS 文件，你要把它转换成 UNIX 格式。首先编辑这个采用 MS-DOS 格式的文件:
 
vim README.TXT
Vim 将识别出那是一个 dos 格式文件。现在把这个文件的格式改为 UNIX:
 
:set fileformat=unix 
:write
或者：
 
:set ff=unix
这个文件就以 Unix 格式存盘了。
