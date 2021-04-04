let g:dashboard_default_executive = 'fzf' "clap | gzg | telescope
let g:dashboard_fzf_engine = 'ag' " rg | ag

let g:dashboard_custom_section={
	\ 'default_configs': {
		\ 'description': [' Open personal config                  SPC e v'],
		\ 'command': ':e $HOME/.config/nvim/init.vim' },
	\ 'change_colorscheme': {
		\ 'description': [' Change colorscheme                    SPC t c'],
		\ 'command': 'call dashboard#handler#change_colorscheme()' },
	\ 'find_file': {
		\ 'description': [' Find File                             CTRL p '],
		\ 'command': 'call dashboard#handler#find_file()' },
	\ 'find_word': {
		\ 'description': [' Find word                             CTRL f '],
		\ 'command': 'call dashboard#handler#find_word()' },
	\ 'book_marks': {
		\ 'description': [' Jump to Bookmarks                     SPC f b'],
		\ 'command': 'call dashboard#handler#book_marks()' }
	\ }
    

let g:dashboard_custom_footer = [' Se tudo deu certo é porque nada deu errado']

let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC f h',
\ 'new_file'           : 'SPC c n',
\ 'change_colorscheme' : 'SPC t c',
\ 'find_word'          : 'SPC f w',
\ 'book_marks'         : 'SPC f b',
\ 'buffer_list'        : 'SPC b b',
\ 'default_configs'    : 'SPC v',
\ 'find_file'          : 'SPC f f',
\ }


let g:indentLine_fileTypeExclude = ['dashboard']


"let g:dashboard_custom_header =<< trim END
"_____________________                              _____________________
"`-._:  .:'   `:::  .:\           |\__/|           /::  .:'   `:::  .:.-'
    "\      :          \          |:   |          /         :       /    
     "\     ::    .     `-_______/ ::   \_______-'   .      ::   . /      
      "|  :   :: ::'  :   :: ::'  :   :: ::'      :: ::'  :   :: :|       
      "|     ;::         ;::         ;::         ;::         ;::  |       
      "|  .:'   `:::  .:'   `:::  .:'   `:::  .:'   `:::  .:'   `:|       
      "/     :           :           :           :           :    \       
     "/______::_____     ::    .     ::    .     ::   _____._::____\      
                   "`----._:: ::'  :   :: ::'  _.----'                    
                          "`--.       ;::  .--'                           
                              "`-. .:'  .-'                               
                                 "\    / :SPANISH:                            
                                  "\  /                                   
                                   "\/ 
"END

let g:dashboard_custom_header = [
\' MMMMMMMMMMMMMMMMMMMMM.                             MMMMMMMMMMMMMMMMMMMMM ',
\'  `MMMMMMMMMMMMMMMMMMMM           M\  /M           MMMMMMMMMMMMMMMMMMMM   ',
\'    `MMMMMMMMMMMMMMMMMMM          MMMMMM          MMMMMMMMMMMMMMMMMMM     ',
\'      MMMMMMMMMMMMMMMMMMM-_______MMMMMMMM_______-MMMMMMMMMMMMMMMMMMM      ',
\'       MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM       ',
\'       MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM       ',
\'       MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM       ',
\'      .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.      ',
\'     MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM     ',
\'                    `MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                     ',
\'                           `MMMMMMMMMMMMMMMMMM                            ',
\'                               `MMMMMMMMMM                                ',
\'                                  MMMMMM :SPANISH:                        ',
\'                                   MMMM                                   ',
\'                                    MM                                    ',
\]
