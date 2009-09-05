;;; proof-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(if (featurep 'proof-autoloads) (error "Already loaded"))

(provide 'proof-autoloads)

;;;***

;;;### (autoloads (bufhist-mode bufhist-exit bufhist-init) "bufhist"
;;;;;;  "../lib/bufhist.el" (19106 28183))
;;; Generated autoloads from ../lib/bufhist.el

(autoload 'bufhist-init "bufhist" "\
Initialise a ring history for the current buffer.
The history will be read-only unless READWRITE is non-nil.
For read-only histories, edits to the buffer switch to the latest version.
The size defaults to `bufhist-ring-size'.

\(fn &optional READWRITE RINGSIZE)" t nil)

(autoload 'bufhist-exit "bufhist" "\
Stop keeping ring history for current buffer.

\(fn)" t nil)

(autoload 'bufhist-mode "bufhist" "\
Minor mode retaining an in-memory history of the buffer contents.

Commands:\\<bufhist-minor-mode-map>
\\[bufhist-prev]    bufhist-prev    go back in history
\\[bufhist-next]    bufhist-next    go forward in history
\\[bufhist-first]   bufhist-first   go to first item in history
\\[bufhist-last]    bufhist-last    go to last (current) item in history.
\\[bufhist-clear]   bufhist-clear   clear history.
\\[bufhist-delete]  bufhist-clear   delete current item from history.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (holes-mode holes-insert-and-expand holes-abbrev-complete
;;;;;;  holes-set-make-active-hole) "holes" "../lib/holes.el" (19106
;;;;;;  28183))
;;; Generated autoloads from ../lib/holes.el

(autoload 'holes-set-make-active-hole "holes" "\
Make a new hole between START and END or at point, and make it active.

\(fn &optional START END)" t nil)

(autoload 'holes-abbrev-complete "holes" "\
Complete abbrev by putting holes and indenting.
Moves point at beginning of expanded text.  Put this function as
call-back for your abbrevs, and just expanded \"#\" and \"@{..}\" will
become holes.

\(fn)" nil nil)

(autoload 'holes-insert-and-expand "holes" "\
Insert S, expand it and replace #s and @{]s by holes.

\(fn S)" nil nil)

(autoload 'holes-mode "holes" "\
If ARG is nil, then toggle holes mode on/off.
If arg is positive, then turn holes mode on.  If arg is negative, then
turn it off.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (maths-menu-mode) "maths-menu" "../lib/maths-menu.el"
;;;;;;  (19106 28183))
;;; Generated autoloads from ../lib/maths-menu.el

(autoload 'maths-menu-mode "maths-menu" "\
Install a menu for entering mathematical characters.
Uses window system menus only when they can display multilingual text.
Otherwise the menu-bar item activates the text-mode menu system.
This mode is only useful with a font which can display the maths repertoire.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (proof-associated-windows proof-associated-buffers)
;;;;;;  "pg-assoc" "pg-assoc.el" (19106 28180))
;;; Generated autoloads from pg-assoc.el

(autoload 'proof-associated-buffers "pg-assoc" "\
Return a list of the associated buffers.
Some may be dead/nil.

\(fn)" nil nil)

(autoload 'proof-associated-windows "pg-assoc" "\
Return a list of the associated buffers windows.
Dead or nil buffers are not represented in the list.

\(fn)" nil nil)

;;;***

;;;### (autoloads (proof-goals-config-done) "pg-goals" "pg-goals.el"
;;;;;;  (19106 28181))
;;; Generated autoloads from pg-goals.el

(autoload 'proof-goals-config-done "pg-goals" "\
Initialise the goals buffer after the child has been configured.

\(fn)" nil nil)

;;;***

;;;### (autoloads (pg-pgip-askprefs pg-pgip-maybe-askpgip pg-pgip-process-packet)
;;;;;;  "pg-pgip" "pg-pgip.el" (19106 28181))
;;; Generated autoloads from pg-pgip.el

(autoload 'pg-pgip-process-packet "pg-pgip" "\
Process the command packet PGIP, which is parsed XML according to pg-xml-parse-*.
The list PGIPS may contain one or more PGIP packets, whose contents are processed.

\(fn PGIPS)" nil nil)

(autoload 'pg-pgip-maybe-askpgip "pg-pgip" "\
Send an <askpgip> message to the prover if PGIP is supported.

\(fn)" nil nil)

(autoload 'pg-pgip-askprefs "pg-pgip" "\
Send an <askprefs> message to the prover.

\(fn)" nil nil)

;;;***

;;;### (autoloads (pg-response-has-error-location proof-next-error
;;;;;;  pg-response-display-with-face pg-response-maybe-erase proof-response-config-done
;;;;;;  proof-response-mode) "pg-response" "pg-response.el" (19106
;;;;;;  28181))
;;; Generated autoloads from pg-response.el

(autoload 'proof-response-mode "pg-response" "\
Responses from Proof Assistant

\(fn)" t nil)

(autoload 'proof-response-config-done "pg-response" "\
Complete initialisation of a response-mode derived buffer.

\(fn)" nil nil)

(autoload 'pg-response-maybe-erase "pg-response" "\
Erase the response buffer according to pg-response-erase-flag.
ERASE-NEXT-TIME is the new value for the flag.
If CLEAN-WINDOWS is set, use proof-clean-buffer to do the erasing.
If FORCE, override pg-response-erase-flag.

If the user option proof-tidy-response is nil, then
the buffer is only cleared when FORCE is set.

No effect if there is no response buffer currently.
Returns non-nil if response buffer was cleared.

\(fn &optional ERASE-NEXT-TIME CLEAN-WINDOWS FORCE)" nil nil)

(autoload 'pg-response-display-with-face "pg-response" "\
Display STR with FACE in response buffer.
Also updates `proof-shell-last-output'.

\(fn STR &optional FACE)" nil nil)

(autoload 'proof-next-error "pg-response" "\
Jump to location of next error reported in the response buffer.

A prefix arg specifies how many error messages to move;
negative means move back to previous error messages.

Optional argument ARGP means reparse the error message buffer
and start at the first error.

\(fn &optional ARGP)" t nil)

(autoload 'pg-response-has-error-location "pg-response" "\
Return non-nil if the response buffer has an error location.
See `pg-next-error-regexp'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (pg-defthymode) "pg-thymodes" "pg-thymodes.el"
;;;;;;  (19106 28181))
;;; Generated autoloads from pg-thymodes.el

(autoload 'pg-defthymode "pg-thymodes" "\
Define a Proof General mode for theory files.
Mode name is SYM-mode, named NAMED.  BODY is the body of a setq and
can define a number of variables for the mode, viz:

  SYM-<font-lock-keywords>      (value for font-lock-keywords)
  SYM-<syntax-table-entries>	(list of pairs: used for modify-syntax-entry calls)
  SYM-<menu>			(menu for the mode, arg of easy-menu-define)
  SYM-<parent-mode>		(defaults to fundamental-mode)
  SYM-<filename-regexp>	        (regexp matching filenames for auto-mode-alist)

All of these settings are optional.

\(fn SYM NAME &rest BODY)" nil (quote macro))

;;;***

;;;### (autoloads (pg-clear-input-ring pg-remove-from-input-history
;;;;;;  pg-add-to-input-history pg-next-matching-input-from-input
;;;;;;  pg-previous-matching-input-from-input proof-imenu-enable
;;;;;;  pg-hint pg-next-error-hint pg-processing-complete-hint pg-jump-to-end-hint
;;;;;;  pg-response-buffers-hint pg-slow-fontify-tracing-hint proof-electric-terminator-enable
;;;;;;  proof-define-assistant-command-witharg proof-define-assistant-command)
;;;;;;  "pg-user" "pg-user.el" (19106 28181))
;;; Generated autoloads from pg-user.el

(autoload 'proof-define-assistant-command "pg-user" "\
Define FN (docstring DOC) to send BODY to prover, based on CMDVAR.
BODY defaults to CMDVAR, a variable.

\(fn FN DOC CMDVAR &optional BODY)" nil (quote macro))

(autoload 'proof-define-assistant-command-witharg "pg-user" "\
Define command FN to prompt for string CMDVAR to proof assistant.
CMDVAR is a variable holding a function or string.  Automatically has history.

\(fn FN DOC CMDVAR PROMPT &rest BODY)" nil (quote macro))

(autoload 'proof-electric-terminator-enable "pg-user" "\
Make sure the modeline is updated to display new value for electric terminator.

\(fn)" nil nil)

(autoload 'pg-slow-fontify-tracing-hint "pg-user" "\
Not documented

\(fn)" nil nil)

(autoload 'pg-response-buffers-hint "pg-user" "\
Not documented

\(fn &optional NEXTBUF)" nil nil)

(autoload 'pg-jump-to-end-hint "pg-user" "\
Not documented

\(fn)" nil nil)

(autoload 'pg-processing-complete-hint "pg-user" "\
Display hint for showing end of locked region or processing complete.

\(fn)" nil nil)

(autoload 'pg-next-error-hint "pg-user" "\
Display hint for locating error.

\(fn)" nil nil)

(autoload 'pg-hint "pg-user" "\
Display a hint HINTMSG in the minibuffer, if `pg-show-hints' is non-nil.
The function `substitute-command-keys' is called on the argument.

\(fn HINTMSG)" nil nil)

(autoload 'proof-imenu-enable "pg-user" "\
Add or remove index menu.

\(fn)" nil nil)

(autoload 'pg-previous-matching-input-from-input "pg-user" "\
Search backwards through input history for match for current input.
\(Previous history elements are earlier commands.)
With prefix argument N, search for Nth previous match.
If N is negative, search forwards for the -Nth following match.

\(fn N)" t nil)

(autoload 'pg-next-matching-input-from-input "pg-user" "\
Search forwards through input history for match for current input.
\(Following history elements are more recent commands.)
With prefix argument N, search for Nth following match.
If N is negative, search backwards for the -Nth previous match.

\(fn N)" t nil)

(autoload 'pg-add-to-input-history "pg-user" "\
Maybe add CMD to the input history.
CMD is only added to the input history if it is not a duplicate
of the last item added.

\(fn CMD)" nil nil)

(autoload 'pg-remove-from-input-history "pg-user" "\
Maybe remove CMD from the end of the input history.
This is called when the command is undone.  It's only
removed if it matches the last item in the ring.

\(fn CMD)" nil nil)

(autoload 'pg-clear-input-ring "pg-user" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (pg-xml-parse-string) "pg-xml" "pg-xml.el" (19106
;;;;;;  28181))
;;; Generated autoloads from pg-xml.el

(autoload 'pg-xml-parse-string "pg-xml" "\
Parse string in ARG, same as pg-xml-parse-buffer.

\(fn ARG)" nil nil)

;;;***

;;;### (autoloads (proof-dependency-in-span-context-menu proof-depends-process-dependencies)
;;;;;;  "proof-depends" "proof-depends.el" (19106 28181))
;;; Generated autoloads from proof-depends.el

(autoload 'proof-depends-process-dependencies "proof-depends" "\
Process dependencies reported by prover, for NAME in span GSPAN.
Called from `proof-done-advancing' when a save is processed and
`proof-last-theorem-dependencies' is set.

\(fn NAME GSPAN)" nil nil)

(autoload 'proof-dependency-in-span-context-menu "proof-depends" "\
Make a portion of a context-sensitive menu showing proof dependencies.

\(fn SPAN)" nil nil)

;;;***

;;;### (autoloads (proof-easy-config) "proof-easy-config" "proof-easy-config.el"
;;;;;;  (19106 28181))
;;; Generated autoloads from proof-easy-config.el

(autoload 'proof-easy-config "proof-easy-config" "\
Configure Proof General for proof-assistant using BODY as a setq body.
The symbol SYM and string name NAME must match those given in
the `proof-assistant-table', which see.

\(fn SYM NAME &rest BODY)" nil (quote macro))

;;;***

;;;### (autoloads (proof-indent-line) "proof-indent" "proof-indent.el"
;;;;;;  (19106 28181))
;;; Generated autoloads from proof-indent.el

(autoload 'proof-indent-line "proof-indent" "\
Indent current line of proof script, if indentation enabled.

\(fn)" t nil)

;;;***

;;;### (autoloads (proof-maths-menu-enable proof-maths-menu-set-global)
;;;;;;  "proof-maths-menu" "proof-maths-menu.el" (19106 28181))
;;; Generated autoloads from proof-maths-menu.el

(autoload 'proof-maths-menu-set-global "proof-maths-menu" "\
Set global status of maths-menu mode for PG buffers to be FLAG.
Turn on/off menu in all script buffers and ensure new buffers follow suit.

\(fn FLAG)" nil nil)

(autoload 'proof-maths-menu-enable "proof-maths-menu" "\
Turn on or off maths-menu mode in Proof General script buffer.
This invokes `maths-menu-mode' to toggle the setting for the current
buffer, and then sets PG's option for default to match.
Also we arrange to have maths menu mode turn itself on automatically
in future if we have just activated it for this buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (defpacustom proof-defpacustom-fn proof-aux-menu
;;;;;;  proof-menu-define-specific proof-menu-define-main proof-menu-define-keys)
;;;;;;  "proof-menu" "proof-menu.el" (19106 28181))
;;; Generated autoloads from proof-menu.el

(autoload 'proof-menu-define-keys "proof-menu" "\
Not documented

\(fn MAP)" nil nil)

(autoload 'proof-menu-define-main "proof-menu" "\
Not documented

\(fn)" nil nil)

(autoload 'proof-menu-define-specific "proof-menu" "\
Not documented

\(fn)" nil nil)

(autoload 'proof-aux-menu "proof-menu" "\
Construct and return PG auxiliary menu used in non-scripting buffers.

\(fn)" nil nil)

(autoload 'proof-defpacustom-fn "proof-menu" "\
As for macro `defpacustom' but evaluating arguments.

\(fn NAME VAL ARGS)" nil nil)

(autoload 'defpacustom "proof-menu" "\
Define a setting NAME for the current proof assitant, default VAL.
NAME can correspond to some internal setting, flag, etc, for the
proof assistant, in which case a :setting and :type value should be provided.
The :type of NAME should be one of 'integer, 'boolean, 'string.
The customization variable is automatically in group `proof-assistant-setting'.
The function `proof-assistant-format' is used to format VAL.
If NAME corresponds instead to a PG internal setting, then a form :eval to
evaluate can be provided instead.

\(fn NAME VAL &rest ARGS)" nil (quote macro))

;;;***

;;;### (autoloads (proof-mmm-enable proof-mmm-set-global) "proof-mmm"
;;;;;;  "proof-mmm.el" (19106 28181))
;;; Generated autoloads from proof-mmm.el

(autoload 'proof-mmm-set-global "proof-mmm" "\
Set global status of MMM mode for PG buffers to be FLAG.

\(fn FLAG)" nil nil)

(autoload 'proof-mmm-enable "proof-mmm" "\
Turn on or off MMM mode in Proof General script buffer.
This invokes `mmm-mode' to toggle the setting for the current
buffer, and then sets PG's option for default to match.
Also we arrange to have MMM mode turn itself on automatically
in future if we have just activated it for this buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (proof-config-done proof-mode proof-insert-sendback-command
;;;;;;  proof-insert-pbp-command pg-set-span-helphighlights proof-locked-region-empty-p
;;;;;;  proof-locked-region-full-p proof-locked-end proof-unprocessed-begin
;;;;;;  proof-colour-locked) "proof-script" "proof-script.el" (19106
;;;;;;  28915))
;;; Generated autoloads from proof-script.el

(autoload 'proof-colour-locked "proof-script" "\
Alter the colour of the locked region according to variable `proof-colour-locked'.

\(fn)" t nil)

(autoload 'proof-unprocessed-begin "proof-script" "\
Return end of locked region in current buffer or (point-min) otherwise.
The position is actually one beyond the last locked character.

\(fn)" nil nil)

(autoload 'proof-locked-end "proof-script" "\
Return end of the locked region of the current buffer.
Only call this from a scripting buffer.

\(fn)" nil nil)

(autoload 'proof-locked-region-full-p "proof-script" "\
Non-nil if the locked region covers all the buffer's non-whitespace.
Works on any buffer.

\(fn)" nil nil)

(autoload 'proof-locked-region-empty-p "proof-script" "\
Non-nil if the locked region is empty.  Works on any buffer.

\(fn)" nil nil)

(autoload 'pg-set-span-helphighlights "proof-script" "\
Add a daughter help span for SPAN with help message, highlight, actions.
We add the last output (which should be non-empty) to the hover display here.
Optional argument NOHIGHLIGHT means do not add highlight mouse face property.

\(fn SPAN &optional NOHIGHLIGHT)" nil nil)

(autoload 'proof-insert-pbp-command "proof-script" "\
Insert CMD into the proof queue.

\(fn CMD)" nil nil)

(autoload 'proof-insert-sendback-command "proof-script" "\
Insert CMD into the proof script, execute assert-until-point.

\(fn CMD)" nil nil)

(autoload 'proof-mode "proof-script" "\
Proof General major mode class for proof scripts.
\\{proof-mode-map}

\(fn)" t nil)

(autoload 'proof-config-done "proof-script" "\
Finish setup of Proof General scripting mode.
Call this function in the derived mode for the proof assistant to
finish setup which depends on specific proof assistant configuration.

\(fn)" nil nil)

;;;***

;;;### (autoloads (proof-shell-config-done proof-shell-mode proof-shell-invisible-command-invisible-result
;;;;;;  proof-shell-invisible-cmd-get-result proof-shell-invisible-command
;;;;;;  proof-shell-wait proof-extend-queue proof-start-queue proof-shell-insert
;;;;;;  proof-shell-available-p proof-shell-ready-prover) "proof-shell"
;;;;;;  "proof-shell.el" (19106 28181))
;;; Generated autoloads from proof-shell.el

(autoload 'proof-shell-ready-prover "proof-shell" "\
Make sure the proof assistant is ready for a command.
If QUEUEMODE is set, succeed if the proof shell is busy but
has mode QUEUEMODE, which is a symbol or list of symbols.
Otherwise, if the shell is busy, give an error.
No change to current buffer or point.

\(fn &optional QUEUEMODE)" nil nil)

(defsubst proof-shell-live-buffer nil "\
Return buffer of active proof assistant, or nil if none running." (and proof-shell-buffer (buffer-live-p proof-shell-buffer) (scomint-check-proc proof-shell-buffer)))

(autoload 'proof-shell-available-p "proof-shell" "\
Return non-nil if there is a proof shell active and available.
No error messages.  Useful as menu or toolbar enabler.

\(fn)" nil nil)

(autoload 'proof-shell-insert "proof-shell" "\
Insert STRING at the end of the proof shell, call `scomint-send-input'.

First we call `proof-shell-insert-hook'.  The arguments `action' and
`scriptspan' may be examined by the hook to determine how to modify
the `string' variable (exploiting dynamic scoping) which will be
the command actually sent to the shell.

Note that the hook is not called for the empty (null) string
or a carriage return.

Then we strip `string' of carriage returns before inserting it
and updating `proof-marker' to point to the end of the newly
inserted text.

Do not use this function directly, or output will be lost.  It is only
used in `proof-append-alist' when we start processing a queue, and in
`proof-shell-exec-loop', to process the next item.

\(fn STRING ACTION &optional SCRIPTSPAN)" nil nil)

(autoload 'proof-start-queue "proof-shell" "\
Begin processing a queue of commands in ALIST.
If START is non-nil, START and END are buffer positions in the
active scripting buffer for the queue region.

This function calls `proof-append-alist'.

\(fn START END ALIST)" nil nil)

(autoload 'proof-extend-queue "proof-shell" "\
Extend the current queue with commands in ALIST, queue end END.
To make sense, the commands should correspond to processing actions
for processing a region from (buffer-queue-or-locked-end) to END.
The queue mode is set to 'advancing

\(fn END ALIST)" nil nil)

(autoload 'proof-shell-wait "proof-shell" "\
Busy wait for `proof-shell-busy' to become nil.
Needed between sequences of commands to maintain synchronization,
because Proof General does not allow for the action list to be extended
in some cases.   May be called by `proof-shell-invisible-command'.

\(fn)" nil nil)

(autoload 'proof-shell-invisible-command "proof-shell" "\
Send CMD to the proof process.
The CMD is `invisible' in the sense that it is not recorded in buffer.
CMD may be a string or a string-yielding expression.

Automatically add proof-terminal-char if necessary, examining
`proof-shell-no-auto-terminate-commands'.

By default, let the command be processed asynchronously.
But if optional WAIT command is non-nil, wait for processing to finish
before and after sending the command.

In case CMD is (or yields) nil, do nothing.

INVISIBLECALLBACK will be invoked after the command has finished,
if it is set.  It should probably run the hook variables
`proof-state-change-hook'.

If NOERROR is set, surpress usual error action.

\(fn CMD &optional WAIT INVISIBLECALLBACK &rest FLAGS)" nil nil)

(autoload 'proof-shell-invisible-cmd-get-result "proof-shell" "\
Execute CMD and return result as a string.
This expects CMD to result in some theorem prover output.
Ordinary output (and error handling) is disabled, and the result
\(contents of `proof-shell-last-output') is returned as a string.

\(fn CMD)" nil nil)

(autoload 'proof-shell-invisible-command-invisible-result "proof-shell" "\
Execute CMD for side effect in the theorem prover, waiting before and after.
Error messages are displayed as usual.

\(fn CMD)" nil nil)

(autoload 'proof-shell-mode "proof-shell" "\
Proof General shell mode class for proof assistant processes

\(fn)" t nil)

(autoload 'proof-shell-config-done "proof-shell" "\
Initialise the specific prover after the child has been configured.
Every derived shell mode should call this function at the end of
processing.

\(fn)" nil nil)

;;;***

;;;### (autoloads (proof-ready-for-assistant) "proof-site" "proof-site.el"
;;;;;;  (19106 28181))
;;; Generated autoloads from proof-site.el

(autoload 'proof-ready-for-assistant "proof-site" "\
Configure PG for symbol ASSISTANTSYM, name ASSISTANT-NAME.
If ASSISTANT-NAME is omitted, look up in `proof-assistant-table'.

\(fn ASSISTANTSYM &optional ASSISTANT-NAME)" nil nil)

;;;***

;;;### (autoloads (proof-splash-message proof-splash-display-screen)
;;;;;;  "proof-splash" "proof-splash.el" (19106 28181))
;;; Generated autoloads from proof-splash.el

(autoload 'proof-splash-display-screen "proof-splash" "\
Save window config and display Proof General splash screen.
If TIMEOUT is non-nil, arrange for a time-out to occur outside this function.

\(fn &optional TIMEOUT)" t nil)

(autoload 'proof-splash-message "proof-splash" "\
Make sure the user gets welcomed one way or another.

\(fn)" t nil)

;;;***

;;;### (autoloads (proof-splice-separator proof-format) "proof-syntax"
;;;;;;  "proof-syntax.el" (19106 28181))
;;; Generated autoloads from proof-syntax.el

(autoload 'proof-format "proof-syntax" "\
Format a string by matching regexps in ALIST against STRING.
ALIST contains (REGEXP . REPLACEMENT) pairs where REPLACEMENT
may be a string or sexp evaluated to get a string.

\(fn ALIST STRING)" nil nil)

(autoload 'proof-splice-separator "proof-syntax" "\
Splice SEP into list of STRINGS, ignoring nil entries.

\(fn SEP STRINGS)" nil nil)

;;;***

;;;### (autoloads (proof-toolbar-scripting-menu proof-toolbar-setup)
;;;;;;  "proof-toolbar" "proof-toolbar.el" (19106 28182))
;;; Generated autoloads from proof-toolbar.el

(autoload 'proof-toolbar-setup "proof-toolbar" "\
Initialize Proof General toolbar and enable it for current buffer.
If `proof-toolbar-enable' is nil, change the current buffer toolbar
to the default toolbar.

\(fn)" t nil)
 (autoload 'proof-toolbar-toggle "proof-toolbar")

(autoload 'proof-toolbar-scripting-menu "proof-toolbar" "\
Menu made from the Proof General toolbar commands.

\(fn)" nil nil)

;;;***

;;;### (autoloads (proof-unicode-tokens-set-global proof-unicode-tokens-enable)
;;;;;;  "proof-unicode-tokens" "proof-unicode-tokens.el" (19106 28182))
;;; Generated autoloads from proof-unicode-tokens.el

(autoload 'proof-unicode-tokens-enable "proof-unicode-tokens" "\
Turn on or off Unicode tokens mode in Proof General script buffer.
This invokes `unicode-tokens-mode' to toggle the setting for the current
buffer, and then sets PG's option for default to match.
Also we arrange to have unicode tokens mode turn itself on automatically
in future if we have just activated it for this buffer.
Note: this function is called when the customize setting for the prover
is changed.

\(fn)" t nil)

(autoload 'proof-unicode-tokens-set-global "proof-unicode-tokens" "\
Set global status of unicode tokens mode for PG buffers to be FLAG.
Turn on/off menu in all script buffers and ensure new buffers follow suit.

\(fn FLAG)" nil nil)

;;;***

;;;### (autoloads (scomint-make scomint-make-in-buffer) "scomint"
;;;;;;  "../lib/scomint.el" (19106 12942))
;;; Generated autoloads from ../lib/scomint.el

(autoload 'scomint-make-in-buffer "scomint" "\
Make a Comint process NAME in BUFFER, running PROGRAM.
If BUFFER is nil, it defaults to NAME surrounded by `*'s.
PROGRAM should be either a string denoting an executable program to create
via `start-file-process', or a cons pair of the form (HOST . SERVICE) denoting
a TCP connection to be opened via `open-network-stream'.  If there is already
a running process in that buffer, it is not restarted.  Optional fourth arg
STARTFILE is the name of a file to send the contents of to the process.

If PROGRAM is a string, any more args are arguments to PROGRAM.

\(fn NAME BUFFER PROGRAM &optional STARTFILE &rest SWITCHES)" nil nil)

(autoload 'scomint-make "scomint" "\
Make a Comint process NAME in a buffer, running PROGRAM.
The name of the buffer is made by surrounding NAME with `*'s.
PROGRAM should be either a string denoting an executable program to create
via `start-file-process', or a cons pair of the form (HOST . SERVICE) denoting
a TCP connection to be opened via `open-network-stream'.  If there is already
a running process in that buffer, it is not restarted.  Optional third arg
STARTFILE is the name of a file to send the contents of the process to.

If PROGRAM is a string, any more args are arguments to PROGRAM.

\(fn NAME PROGRAM &optional STARTFILE &rest SWITCHES)" nil nil)

;;;***

;;;### (autoloads (texi-docstring-magic) "texi-docstring-magic" "../lib/texi-docstring-magic.el"
;;;;;;  (19106 28184))
;;; Generated autoloads from ../lib/texi-docstring-magic.el

(autoload 'texi-docstring-magic "texi-docstring-magic" "\
Update all texi docstring magic annotations in buffer.
With prefix arg, no errors on unknown symbols.  (This results in
@def .. @end being deleted if not known).

\(fn &optional NOERROR)" t nil)

;;;***

;;;### (autoloads (unicode-chars-list-chars) "unicode-chars" "../lib/unicode-chars.el"
;;;;;;  (19106 32184))
;;; Generated autoloads from ../lib/unicode-chars.el

(autoload 'unicode-chars-list-chars "unicode-chars" "\
Insert each Unicode character into a buffer.
Lets you see which characters are available for literal display
in your emacs font.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../lib/local-vars-list.el" "../lib/pg-dev.el"
;;;;;;  "../lib/pg-fontsets.el" "../lib/proof-compat.el" "../lib/span.el"
;;;;;;  "../lib/unicode-tokens.el" "comptest.el" "pg-autotest.el"
;;;;;;  "pg-custom.el" "pg-pbrpm.el" "pg-span.el" "pg-vars.el" "proof-auxmodes.el"
;;;;;;  "proof-config.el" "proof-faces.el" "proof-useropts.el" "proof-utils.el"
;;;;;;  "proof.el") (19106 44543 93145))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; proof-autoloads.el ends here
