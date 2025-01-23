# TODO

- [x] I shouldn't use the left-hand side Shift modifier, get rid of that
- Rework the symbols layer
  - [ ] Look at Rico's new keymap: https://github.com/rstacruz/my-zmk-config
  - [ ] Basically want to move some of the keys to be easier to remember:
  - [ ] binary opfs |&
  - [ ] calc ops `*+\-`
  - [ ] backslash; can never remember where that one is
- [x] updating to the latest ZMK and applying patches
  - [x] reinit'ed from the zmk setup guide since corneish-zen is now upstream
  - [ ] https://discord.com/channels/714974558981062728/805980856090624071/1032236769942442064
- [x] see this config (which might require update to Zephyr 3.5): https://github.com/caksoylar/zmk-config/blob/main/config/corneish_zen.conf
  - [x] try these instructions: https://gist.github.com/caksoylar/c411313990978e1903c244f03039187a
- [ ] explain why the keymaps is this way
- [x] add alias for +- keys (i.e. for zoom shortcuts) to top right keys of sym layer
  - i don't use backspace on that layer
  - i also don't use > on that layer as i prefer shift .
- [x] aerospace alt-num and alt-shift-num shortcuts don't work; fix
  - this was because the numbers were keypad numbers, not numrow nums
