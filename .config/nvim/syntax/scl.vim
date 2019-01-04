" Quit when a syntax file is already loaded.
if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'scl'
endif

syn case match

syn keyword     sclDirective         include
syn match       sclDirective         /__body__()/
syn keyword     sclTodo              contained TODO FIXE XXX BUG
syn region      sclComment           start="/\*" end="\*/" contains=sclTodo,@Spell
syn region      sclComment           start="//" end="$" contains=@Spell
syn match       sclOperator          /:=/
syn match       sclMixinDecl         /@\w\+/ nextgroup=sclVariable
syn match       sclVariable          /$\w\+/ 
syn region      sclString            start=+"+ skip=+\\\\\|\\"+ end=+"+

hi def link     sclDirective         Statement
hi def link     sclComment           Comment
hi def link     sclOperator          Operator
hi def link     sclMixinDecl         Type
hi def link     sclMixinCall         Statement
hi def link     sclVariable          Keyword
hi def link     sclString            String

let b:current_syntax = "scl"
