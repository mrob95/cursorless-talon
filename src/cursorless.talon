app: vscode
-
toggle cursor: user.vscode("cursorless.toggleDecorations")

{self.simple_cursorless_action} <user.cursorless_target>:
    user.cursorless_single_target_command(simple_cursorless_action, cursorless_target)

search <user.cursorless_target>:
    user.cursorless_single_target_command("setSelection", cursorless_target)
    key(ctrl-shift-f)

grab <user.cursorless_target>:
    user.cursorless_single_target_command("copy", cursorless_target)
    edit.paste()


# drink <user.cursorless_target>:
#     user.cursorless_single_target_command("setSelectionBefore", cursorless_target)
#     # user.new_line_above()
#     edit.line_insert_up()

pour <user.cursorless_target>:
    user.cursorless_single_target_command("setSelectionAfter", cursorless_target)
    # user.new_line_below()
    edit.line_insert_down()

# def show <user.cursorless_target>:
#     user.cursorless_single_target_command("setSelection", cursorless_target)
#     user.vscode("editor.action.revealDefinition")

# ref show <user.cursorless_target>:
#     user.cursorless_single_target_command("setSelection", cursorless_target)
#     user.vscode("references-view.find")

wrap <user.cursorless_target> with funk {user.functions}:
    user.cursorless_single_target_command("wrap", cursorless_target, "{functions}(", ")")

square wrap <user.cursorless_target>:
    user.cursorless_single_target_command("wrap", cursorless_target, "[", "]")

round wrap <user.cursorless_target>:
    user.cursorless_single_target_command("wrap", cursorless_target, "(", ")")

curly wrap <user.cursorless_target>:
    user.cursorless_single_target_command("wrap", cursorless_target, "{", "}")

(diamond | angle) wrap <user.cursorless_target>:
    user.cursorless_single_target_command("wrap", cursorless_target, "<", ">")

quad wrap <user.cursorless_target>:
    user.cursorless_single_target_command("wrap", cursorless_target, "\"", "\"")

twin wrap <user.cursorless_target>:
    user.cursorless_single_target_command("wrap", cursorless_target, "'", "'")

# escaped quad wrap <user.cursorless_target>:
#     user.cursorless_single_target_command("wrap", cursorless_target, "\\\"", "\\\"")

# escaped twin wrap <user.cursorless_target>:
#     user.cursorless_single_target_command("wrap", cursorless_target, "\\'", "\\'")

# puff <user.cursorless_target>:
#     user.cursorless_single_target_command("wrap", cursorless_target, "\n", "\n")

# extract <user.cursorless_target>:
#     user.cursorless_single_target_command("extractVariable", cursorless_target)

# extract <user.cursorless_target> as <user.text>:
#     user.cursorless_single_target_command("extractVariable", cursorless_target)
#     sleep(300ms)
#     user.code_public_variable_formatter(text)
#     key(enter)

<user.cursorless_swap>:
    user.cursorless_multiple_target_command("swap", cursorless_swap)

# # action(user.dental_click): user.vscode("cursorless.toggleDecorations")