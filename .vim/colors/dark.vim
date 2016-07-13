" Vim color file
" Maintainer:	Leonard Wei <gooxxgle.mail@gmail.com>
" Last Change:	2016 Jul 13

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg=dark

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
    syntax reset
endif

let colors_name = "dark"

hi SpecialKey   term=bold cterm=bold ctermfg=4 guifg=Cyan
hi NonText      term=bold cterm=bold ctermfg=4 gui=bold guifg=Blue
hi Directory    term=bold cterm=bold ctermfg=6 guifg=Cyan
hi ErrorMsg     term=standout cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
hi IncSearch    term=reverse cterm=reverse gui=reverse
hi Search       term=reverse ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
hi MoreMsg      term=bold cterm=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg      term=bold cterm=bold gui=bold
hi LineNr       term=underline cterm=bold ctermfg=3 guifg=Yellow
hi Question     term=standout cterm=bold ctermfg=2 gui=bold guifg=Green
hi StatusLine   term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC term=reverse cterm=reverse gui=reverse
hi VertSplit    term=reverse cterm=reverse gui=reverse
hi Title        term=bold cterm=bold ctermfg=5 gui=bold guifg=Magenta
hi Visual       term=reverse cterm=reverse guibg=DarkGrey
hi VisualNOS    NONE
hi WarningMsg   term=standout cterm=bold ctermfg=1 guifg=Red
hi WildMenu     term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
hi Folded       term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=Cyan guibg=DarkGrey
hi FoldColumn   term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=Cyan guibg=Grey
hi DiffAdd      term=bold ctermbg=4 guibg=DarkBlue
hi DiffChange   term=bold ctermbg=5 guibg=DarkMagenta
hi DiffDelete   term=bold cterm=bold ctermfg=4 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
hi DiffText     term=reverse cterm=bold ctermbg=1 gui=bold guibg=Red
hi SignColumn   term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=Cyan guibg=Grey
hi Conceal      ctermfg=7 ctermbg=0 guifg=LightGrey guibg=DarkGrey
hi SpellBad     term=reverse cterm=bold ctermbg=4 gui=undercurl guisp=Red
hi SpellCap     term=reverse ctermbg=4 gui=undercurl guisp=Blue
hi SpellRare    term=reverse ctermbg=5 gui=undercurl guisp=Magenta
hi SpellLocal   term=underline ctermbg=6 gui=undercurl guisp=Cyan
hi Pmenu        ctermbg=5 guibg=Magenta
hi PmenuSel     ctermbg=0 guibg=DarkGrey
hi PmenuSbar    ctermbg=7 guibg=Grey
hi PmenuThumb   cterm=reverse gui=reverse
hi TabLine      term=underline cterm=bold,underline ctermfg=7 ctermbg=0 gui=underline guibg=DarkGrey
hi TabLineSel   term=bold cterm=bold gui=bold
hi TabLineFill  term=reverse cterm=reverse gui=reverse
hi CursorColumn term=reverse ctermbg=0 guibg=Grey40
hi CursorLine   term=underline cterm=underline guibg=Grey40
hi ColorColumn  term=reverse ctermfg=7 ctermbg=5 guibg=DarkRed
hi MatchParen   term=reverse ctermbg=6 guibg=DarkCyan
hi Comment      term=bold cterm=bold ctermfg=6 guifg=#80a0ff
hi Constant     term=underline cterm=bold ctermfg=5 guifg=#ffa0a0
hi Special      term=bold cterm=bold ctermfg=1 guifg=Orange
hi Identifier   term=underline cterm=bold ctermfg=6 guifg=#40ffff
hi Statement    term=bold cterm=bold ctermfg=3 gui=bold guifg=#ffff60
hi PreProc      term=underline cterm=bold ctermfg=4 guifg=#ff80ff
hi Type         term=underline cterm=bold ctermfg=2 gui=bold guifg=#60ff60
hi Underlined   term=underline cterm=bold,underline ctermfg=4 gui=underline guifg=#80a0ff
hi Ignore       ctermfg=0 guifg=bg
hi Error        term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
hi Todo         term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
hi link String          Constant
hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number
hi link Function        Identifier
hi link Conditional     Statement
hi link Repeat          Statement
hi link Label           Statement
hi link Operator        Statement
hi link Keyword         Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special
hi GreenBar     term=reverse cterm=bold ctermfg=7 ctermbg=2 guifg=white guibg=green
hi RedBar       term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=white guibg=red
hi Info         NONE
hi SrcExpl_HighLight    term=bold ctermfg=0 ctermbg=5 guifg=Black guibg=Magenta
hi link cStatement      Statement
hi link cLabel          Label
hi link cConditional    Conditional
hi link cRepeat         Repeat
hi link cTodo           Todo
hi link cBadContinuation    Error
hi link cSpecial        SpecialChar
hi link cFormat         cSpecial
hi link cString         String
hi link cCppString      cString
hi link cCharacter      Character
hi link cSpecialError   cError
hi link cSpecialCharacter   cSpecial
hi cBadBlock    NONE
hi link cCurlyError     cError
hi link cErrInParen     cError
hi cCppParen    NONE
hi link cErrInBracket   cError
hi cCppBracket  NONE
hi cBlock       NONE
hi link cParenError     cError
hi link cIncluded       cString
hi link cCommentSkip    cComment
hi link cCommentString  cString
hi link cComment2String cString
hi link cCommentStartError  cError
hi cUserCont    NONE
hi link cUserLabel      Label
hi cBitField    NONE
hi link cOctalZero      PreProc
hi link cNumber         Number
hi link cFloat          Float
hi link cOctal          Number
hi link cOctalError     cError
hi cNumbersCom  NONE
hi cParen       NONE
hi cBracket     NONE
hi cNumbers     NONE
hi link cSpaceError     cError
hi link cCommentL       cComment
hi link cCommentStart   cComment
hi link cComment        Comment
hi link cCommentError   cError
hi link cOperator       Operator
hi link cType           Type
hi link cStructure      Structure
hi link cStorageClass   StorageClass
hi link cConstant       Constant
hi link cPreCondit      PreCondit
hi link cPreConditMatch cPreCondit
hi cCppInIf     NONE
hi cCppInElse   NONE
hi link cCppInElse2     cCppOutIf2
hi cCppOutIf    NONE
hi link cCppOutIf2      cCppOut2
hi cCppOutElse  NONE
hi cCppInSkip   NONE
hi link cCppOutSkip     cCppOutIf2
hi link cCppOutWrapper  cPreCondit
hi link cCppInWrapper   cCppOutWrapper
hi link cPreProc        PreProc
hi link cInclude        Include
hi link cDefine         Macro
hi cMulti       NONE
hi link cError          Error
hi link cCppOut2        cCppOut
hi link cCppOut         Comment
hi link cppStatement    Statement
hi link cppAccess       cppStatement
hi link cppType         Type
hi link cppExceptions   Exception
hi link cppOperator     Operator
hi link cppCast         cppStatement
hi link cppStorageClass StorageClass
hi link cppStructure    Structure
hi link cppNumber       Number
hi link cppBoolean      Boolean
hi cppMinMax    NONE
hi link MBENormal       Comment
hi link MBEChanged      String
hi link MBEVisibleNormal    Special
hi link MBEVisibleChanged   Special
hi link MBEVisibleActiveNormal  Underlined
hi link MBEVisibleActiveChanged Error
hi link TagListComment  Comment
hi TagListFileName      cterm=bold ctermfg=7 ctermbg=0 guifg=white guibg=Grey
hi link TagListTitle    Title
hi link TagListTagScope Identifier
hi link TagListTagName  Search
hi link NERDTreeFlag    Ignore
hi link NERDTreeUp      Directory
hi link NERDTreeClosable    Type
hi link NERDTreeOpenable    Title
hi link NERDTreePart    Special
hi link NERDTreePartFile    Type
hi link NERDTreeHelpKey Identifier
hi link NERDTreeHelpTitle   Macro
hi link NERDTreeToggleOn    Question
hi link NERDTreeToggleOff   WarningMsg
hi link NERDTreeHelpCommand Identifier
hi link NERDTreeHelp    String
hi link NERDTreeBookmark    Normal
hi link NERDTreeRO      WarningMsg
hi link NERDTreeDirSlash    Identifier
hi link NERDTreeLink    Macro
hi link NERDTreeDir     Directory
hi link NERDTreeExecFile    Title
hi link NERDTreeFile    Normal
hi link NERDTreeCWD     Statement
hi link NERDTreeBookmarksLeader Ignore
hi link NERDTreeBookmarksHeader Statement
hi link NERDTreeBookmarkName    Identifier
hi Normal   NONE
hi link NERDTreeCurrentNode Search
hi link confTodo        Todo
hi link confComment     Comment
hi link confString      String
hi link diffOnly        Constant
hi link diffIdentical   Constant
hi link diffDiffer      Constant
hi link diffBDiffer     Constant
hi link diffIsA         Constant
hi link diffNoEOL       Constant
hi link diffCommon      Constant
hi link diffRemoved     Special
hi link diffAdded       Identifier
hi link diffChanged     PreProc
hi link diffSubname     PreProc
hi link diffLine        Statement
hi link diffFile        Type
hi link diffOldFile     diffFile
hi link diffNewFile     diffFile
hi link diffComment     Comment
hi link helpHeadline    Statement
hi link helpSectionDelim    PreProc
hi link helpIgnore      Ignore
hi link helpExample     Comment
hi link helpBar         Ignore
hi link helpStar        Ignore
hi link helpHyperTextJump   Subtitle
hi link helpHyperTextEntry  String
hi helpNormal   NONE
hi link helpVim     Identifier
hi link helpOption  Type
hi link helpHeader  PreProc
hi helpGraphic  NONE
hi link helpNote    Todo
hi link helpSpecial Special
hi helpLeadBlank    NONE
hi link helpNotVi   Special
hi link helpComment Comment
hi link helpConstant    Constant
hi link helpString  String
hi link helpCharacter   Character
hi link helpNumber  Number
hi link helpBoolean Boolean
hi link helpFloat   Float
hi link helpIdentifier  Identifier
hi link helpFunction    Function
hi link helpStatement   Statement
hi link helpConditional Conditional
hi link helpRepeat  Repeat
hi link helpLabel   Label
hi link helpOperator    Operator
hi link helpKeyword Keyword
hi link helpException   Exception
hi link helpPreProc PreProc
hi link helpInclude Include
hi link helpDefine  Define
hi link helpMacro   Macro
hi link helpPreCondit   PreCondit
hi link helpType    Type
hi link helpStorageClass    StorageClass
hi link helpStructure   Structure
hi link helpTypedef     Typedef
hi link helpSpecialChar SpecialChar
hi link helpTag     Tag
hi link helpDelimiter   Delimiter
hi link helpSpecialComment  SpecialComment
hi link helpDebug   Debug
hi link helpUnderlined  Underlined
hi link helpError   Error
hi link helpTodo    Todo
hi link helpURL     String
hi link Subtitle    Identifier
