"===============主题颜色===============
colorscheme atom-dark
"===============UI Tweaks=============
set vb t_vb=
" 默认前景和背景
hi Normal       		 guifg=#eeeeee guibg=#252b3a
" 高亮背景和前景
hi Visual       		 guifg=#cdfbff guibg=#1bb1b2
"修改当前行高亮的颜色，让它和新的Normal背景色更加融合
hi CursorLine          	  guibg=#2F374D
"光标的颜色设置成蓝色
hi Cursor         		  guifg=NONE  guibg=#2196f3
"修改行号列的背景色，让它和编辑区域相同
hi LineNr            	  guibg=bg
"修改状态栏的样式
hi StatusLine    guifg=#526669 guibg=bg
hi StatusLineNC  guifg=#526669 guibg=#252b3a gui=none
