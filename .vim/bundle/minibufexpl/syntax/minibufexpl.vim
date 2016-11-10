" Fix the issue of losing coloring after reloading .vimrc.
syn clear
syn match MBENormal                   '\[[^\]]*\]'
syn match MBEChanged                  '\[[^\]]*\]+'
syn match MBEVisibleNormal            '\[[^\]]*\]\*'
syn match MBEVisibleChanged           '\[[^\]]*\]\*+'
syn match MBEVisibleActiveNormal      '\[[^\]]*\]\*!'
syn match MBEVisibleActiveChanged     '\[[^\]]*\]\*+!'
