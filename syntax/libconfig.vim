" Vim syntax file
" Language: libconfig configuration file
" Maintainer: David Perry <boolean263 at protonmail dot com>
" Last Change: 2021-06-16
"
" References:
" https://hyperrealm.com/libconfig/libconfig_manual.html#Configuration-Files

" Quit when a (custom) syntax file was already loaded
if exists("b:current_snintax")
  finish
endif

syn keyword	lcfgTodo	contained TODO FIXME XXX
syn match	lcfgComment	"^\s*\(#\|//\).*" contains=lcfgTodo
syn region	lcfgComment	start="/\*" end="\*/" extend contains=lcfgTodo

syn match lcfgKey "^.\{-}\ze\s*[=:]" nextgroup=lcfgInt,lcfgFloat,lcfgBool,lcfgStr
syn match lcfgInt "=\zs\s*[-+]\?\d\+L\?\s*"
syn match lcfgInt "=\zs\s*0x[\da-fA-F]\+L\?\s*"
syn match lcfgFloat "=\zs\s*[-+]\?\d\+\.\d\+\s*"
syn match lcfgFloat "=\zs\s*[-+]\?\d\+\.\d\+[eE][-+]\?\d\+\s*"
syn region lcfgString    start=+"+ skip=+\\"+  end=+"+ contains=lcfgEsc
syn match lcfgEsc +\\[\\"fnrt]+ contained
syn match lcfgEsc +\\x[0-9a-fA-F][0-9a-fA-F]+ contained
syn case ignore
syn keyword lcfgBool true false

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link lcfgComment	Comment
hi def link lcfgTodo	Todo
hi def link lcfgString	String
hi def link lcfgEsc SpecialChar
hi def link lcfgKey Statement
hi def link lcfgInt Number
hi def link lcfgFloat Number
hi def link lcfgBool Constant

let b:current_syntax = "libconfig"

" vim: ts=8 sw=2
