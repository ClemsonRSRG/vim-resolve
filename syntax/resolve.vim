" Vim syntax file
" Language: RESOLVE
" Maintainer: Foster McLane and Mackenzie Binns
" Last Change: 2016-10-29

" guard for other syntaxes
if exists('b:current_syntax')
  finish
endif
let b:current_syntax='resolve'

" comments
syn region resolveBlockComment start='(\*' end='\*)'
syn match resolveComment '\v--.*'

" common
syntax keyword resolveOperator
      \ +
      \ -
      \ *
      \ **
      \ /
      \ =
      \ /=
      \ <
      \ <=
      \ >
      \ >=

" math context
syntax keyword resolveMathConstant
      \ false
      \ true

syntax keyword resolveMathOperator
      \ o
      \ #
      \ |

syntax keyword resolveMathOperation
      \ DeString
      \ Prt_Btwn
      \ Reverse

syntax keyword resolveMathType
      \ B
      \ N
      \ Z

" strings
syntax region resolveString start=/"/ skip=/\\"/ end=/"/

" characters
syntax match resolveCharacter "\v'%(.|\\')'"

" numbers
syntax match resolveNumber '\v<\d+>'
syntax match resolveFloat '\v<\d+\.\d+>'

" strings
syntax keyword resolveStringOperation
      \ Are_Equal
      \ Are_Not_Equal
      \ Length
      \ Merger
      \ Read
      \ Replica
      \ Write
      \ Write_Line

" characters
syntax keyword resolveCharacterOperation
      \ Char_Str_for
      \ Char_to_Int
      \ Greater
      \ Greater_Or_Equal
      \ Less
      \ Less_Or_Equal

" integers
syntax keyword resolveIntegerOperation
      \ Decrement
      \ Difference
      \ Div
      \ Divide
      \ Increment
      \ Is_Not_Zero
      \ Is_Zero
      \ Mod
      \ Negative
      \ Power
      \ Product
      \ Quotient
      \ Rem
      \ Sum

" booleans
syntax keyword resolveBooleanOperation
      \ And
      \ False
      \ Not
      \ Or
      \ True

" conditionals
syntax keyword resolveConditional
      \ If
      \ else
      \ elseif
      \ end

" loops
syntax keyword resolveLoop
      \ While
      \ do

" operators
syntax keyword resolveObjectOperator
      \ =
      \ /=
      \ :=
      \ :=:

" delcarations
syntax keyword resolveDeclaration
      \ Concept
      \ Convention
      \ Correspondence
      \ Def
      \ Definition
      \ Facility
      \ Proc
      \ Procedure
      \ Realization
      \ Type

" modifiers
syntax keyword resolveModifier
      \ changing
      \ decreasing
      \ ensures
      \ exemplar
      \ finalization
      \ initialization
      \ maintaining
      \ realized
      \ requires
      \ updates

" general keywords
syntax keyword resolveKeyword
      \ Array
      \ Constraint
      \ Constraints
      \ Enhancement
      \ Family
      \ Oper
      \ Operation
      \ Property
      \ Pty
      \ Var
      \ Variable
      \ Variables
      \ Vars
      \ alt
      \ alters
      \ and
      \ by
      \ clears
      \ clr
      \ constraint
      \ constraints
      \ convention
      \ correspondence
      \ def
      \ definition
      \ enhanced
      \ eval
      \ evaluates
      \ for
      \ if
      \ is
      \ mod
      \ modeled
      \ not
      \ oper
      \ operation
      \ or
      \ powerset
      \ pres
      \ preserves
      \ rea
      \ reassigns
      \ replaces
      \ represented
      \ rest
      \ restores
      \ rpl
      \ str
      \ then
      \ type
      \ upd
      \ uses

" types
syntax keyword resolveBuiltinType
      \ Boolean
      \ Char_Str
      \ Character
      \ Integer

" set highlights
highlight default link resolveBlockComment Comment
highlight default link resolveComment Comment

highlight default link resolveMathConstant Constant

highlight default link resolveString String

highlight default link resolveCharacter Character

highlight default link resolveNumber Number
highlight default link resolveFloat Float

highlight default link resolveBooleanOperation Identifier
highlight default link resolveCharacterOperation Identifier
highlight default link resolveIntegerOperation Identifier
highlight default link resolveMathOperation Identifier
highlight default link resolveStringOperation Identifier

highlight default link resolveConditional Conditional

highlight default link resolveLoop Repeat

highlight default link resolveOperator Operator
highlight default link resolveMathOperator Operator
highlight default link resolveObjectOperator Operator

highlight default link resolveDeclaration Keyword
highlight default link resolveModifier Keyword
highlight default link resolveKeyword Keyword

highlight default link resolveBuiltinType Type
highlight default link resolveMathType Type
