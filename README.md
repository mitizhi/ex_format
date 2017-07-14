# ex_format

> `ex_format` is still in alpha.  If you run into any problems, please [report them](https://github.com/uohzxela/ex_format/issues).
>
> **The format produced by ex_format may change significantly before the 1.0.0 release.**  If this will cause problems for you, please refrain from using ex_format during the alpha- and beta-test periods.

`ex_format` formats Elixir source code according to a standard set of rules based on the [elixir-style-guide](https://github.com/lexmag/elixir-style-guide). It tries its best to accommodate the user's intent by preserving intended layout and syntax.

## Running locally

Note that this formatter requires Elixir >= v1.5 to work. As of now, Elixir v1.5 is still unreleased, however, you can build it manually from the master branch.

Run `iex -S mix` to compile the project and open the Elixir interactive shell.

Once inside the shell, run `ExFormat.process("filename.ex")` to try it out.

## What it can do so far

- Preserve comments
  * Prefix comments
  * Suffix comments
  * Inline comments
  * Doc comments
- Preserve line breaks and collapse contiguous line breaks into a single one so you can separate unrelated functions or group related ones together
- Preserve intended keyword list syntax (e.g., `do: something`)
- Preserve sigils along with their intended terminators
- Preserve intended line breaks for various syntactic constructs (e.g., `|>` or `<>` operator)
- Line width aware printing


## Task list according to Elixir style guide

- [x] [spaces-indentation](https://github.com/lexmag/elixir-style-guide#spaces-indentation)
- [x] [no-semicolon](https://github.com/lexmag/elixir-style-guide#no-semicolon)
- [x] [spaces-in-code](https://github.com/lexmag/elixir-style-guide#spaces-in-code)
- [x] [no-spaces-in-code](https://github.com/lexmag/elixir-style-guide#no-spaces-in-code)
- [x] [default-arguments](https://github.com/lexmag/elixir-style-guide#default-arguments)
- [x] [no-trailing-whitespaces](https://github.com/lexmag/elixir-style-guide#no-trailing-whitespaces)
- [x] [newline-eof](https://github.com/lexmag/elixir-style-guide#newline-eof)
- [x] [bitstring-segment-options](https://github.com/lexmag/elixir-style-guide#bitstring-segment-options)
- [x] [guard-clauses](https://github.com/lexmag/elixir-style-guide#guard-clauses)
- [ ] [multi-line-expr-assignment](https://github.com/lexmag/elixir-style-guide#multi-line-expr-assignment)
- [ ] [underscores-in-numerics](https://github.com/lexmag/elixir-style-guide#underscores-in-numerics)
- [x] [quotes-around-atoms](https://github.com/lexmag/elixir-style-guide#quotes-around-atoms)
- [x] [trailing-comma](https://github.com/lexmag/elixir-style-guide#trailing-comma)
- [x] [expression-group-alignment](https://github.com/lexmag/elixir-style-guide#expression-group-alignment)
- [ ] [fun-parens](https://github.com/lexmag/elixir-style-guide#fun-parens)
- [ ] [zero-arity-parens](https://github.com/lexmag/elixir-style-guide#zero-arity-parens)
- [x] [pipeline-indentation](https://github.com/lexmag/elixir-style-guide#pipeline-operator)
- [x] [binary-operators-eols](https://github.com/lexmag/elixir-style-guide#binary-operators-at-eols)
- [ ] [with-indentation](https://github.com/lexmag/elixir-style-guide#with-indentation)
- [ ] [for-indentation](https://github.com/lexmag/elixir-style-guide#for-indentation)
- [ ] [no-nil-else](https://github.com/lexmag/elixir-style-guide#no-nil-else)
- [ ] [hex-literals](https://github.com/lexmag/elixir-style-guide#hex-literals)
- [ ] [module-layout](https://github.com/lexmag/elixir-style-guide#module-layout)
- [ ] [current-module-reference](https://github.com/lexmag/elixir-style-guide#current-module-reference)
- [ ] [defstruct-fields-default](https://github.com/lexmag/elixir-style-guide#defstruct-fields-default)
- [ ] [exception-message](https://github.com/lexmag/elixir-style-guide#exception-message)
- [ ] [exunit-assertion-side](https://github.com/lexmag/elixir-style-guide#exunit-assertion-side)
