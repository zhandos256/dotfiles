set encoding=utf-8          " Установка кодировки UTF-8
set t_Co=256               " Включение поддержки 256 цветов
set background=dark        " Темная тема
set scrolloff=5            " Показывать 5 строк до и после курсора при прокрутке
set number                 " Показывать номера строк
set ci                     " Включение отступов при вставке
set ai                     " Автоматические отступы
set cin                    " Включение отступов в стиле C
set ignorecase             " Игнорировать регистр при поиске
set showmatch              " Показывать парные скобки
set hlsearch               " Подсвечивать результаты поиска
set incsearch              " Инкрементальный поиск
set lz                     " Ленивая перерисовка экрана
set mouse=a                " Включение поддержки мыши во всех режимах
set smarttab               " Умные табуляции
set smartindent           " Умные отступы
set autoindent            " Автоматические отступы
set expandtab             " Замена табуляции пробелами
set nobackup              " Не создавать резервные файлы
set nowrap                " Не переносить длинные строки
set noswapfile            " Не создавать swap-файлы
set smartcase             " Умный поиск с учетом регистра
set clipboard=unnamedplus " Использовать системный буфер обмена
set clipboard=unnamed     " Использовать системный буфер обмена (для совместимости)
set tabstop=2             " Размер табуляции в 2 пробела
set shiftwidth=2          " Размер отступа в 2 пробела
set softtabstop=2         " Размер мягкой табуляции в 2 пробела
set nocompatible          " Отключение режима совместимости с Vi
set belloff=all           " Отключение звукового сигнала

" Включение подсветки синтаксиса и цветовой схемы
syntax on
colorscheme default       " Использование стандартной цветовой схемы
filetype plugin indent on " Включение плагинов и отступов в зависимости от типа файла

" Автоматические команды
autocmd FileType * set formatoptions-=r  " Отключение автоматического добавления комментариев при новой строке

" Пользовательские маппинги клавиш
inoremap jk <Esc>         " Выход из режима вставки по комбинации jk
nnoremap Y <S-v>:%y+<CR>  " Копирование всей строки в буфер обмена
nnoremap ; :              " Использование ; вместо : для команд
nnoremap <Space> :noh<CR> " Очистка подсветки поиска по пробелу
nnoremap <C-k> :tabnext<CR>      " Переход к следующей вкладке по Ctrl+k
nnoremap <C-j> :tabprevious<CR>  " Переход к предыдущей вкладке по Ctrl+j
nnoremap <Space>n :tabnew        " Создание новой вкладки по Space+n
nnoremap <S-k> i<CR><ESC>
