import Lake
open Lake DSL

package grammar_and_syntax {
  -- add package configuration options here
}

lean_lib GrammarAndSyntax {
  -- add library configuration options here
}

@[defaultTarget]
lean_exe grammar_and_syntax {
  root := `Main
}
