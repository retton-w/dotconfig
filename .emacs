;显示括号匹配
(show-paren-mode t)

;括号匹配时显示另外一边的括号，而不是跳到另外一个括号
(setq show-paren-style 'parentheses)

;显示所在行号和列好
(column-number-mode t)

;光标显示为一竖线
(setq-default cursor-type 'bar)

;不要问yes-or-no, 只问y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

;关闭菜单栏
;(menu-bar-mode nil)
(menu-bar-mode nil)
(tool-bar-mode 0)
(scroll-bar-mode nil)

;禁用启动画面
(setq inhibit-startup-message t)

;设置默认的打开路径
(setq default-directory "/home/maple")


;页面平滑滚动
(setq scroll-margin 1
      scroll-conservatively 10000)

;正在编辑的文件被其他程序修改时，自动更新缓存区
(global-auto-revert-mode 1)


(setq-default indent-tabs-mode nil)
(setq tab-width 8)
