/* ex_docmd.c */
void do_exmode(int improved);
int do_cmdline_cmd(char_u *cmd);
int do_cmdline(char_u *cmdline, char_u *(*fgetline)(int, void *, int, int), void *cookie, int flags);
int getline_equal(char_u *(*fgetline)(int, void *, int, int), void *cookie, char_u *(*func)(int, void *, int, int));
void *getline_cookie(char_u *(*fgetline)(int, void *, int, int), void *cookie);
char_u *getline_peek(char_u *(*fgetline)(int, void *, int, int), void *cookie);
int parse_command_modifiers(exarg_T *eap, char **errormsg, int skip_only);
void undo_cmdmod(exarg_T *eap, int save_msg_scroll);
int parse_cmd_address(exarg_T *eap, char **errormsg, int silent);
int checkforcmd(char_u **pp, char *cmd, int len);
char_u *find_ex_command(exarg_T *eap, int *full, void *(*lookup)(char_u *, size_t, cctx_T *), cctx_T *cctx);
int modifier_len(char_u *cmd);
int cmd_exists(char_u *name);
cmdidx_T excmd_get_cmdidx(char_u *cmd, int len);
long excmd_get_argt(cmdidx_T idx);
char_u *skip_range(char_u *cmd, int *ctx);
void ex_ni(exarg_T *eap);
int expand_filename(exarg_T *eap, char_u **cmdlinep, char **errormsgp);
void separate_nextcmd(exarg_T *eap);
char_u *skip_cmd_arg(char_u *p, int rembs);
int get_bad_opt(char_u *p, exarg_T *eap);
int ends_excmd(int c);
int ends_excmd2(char_u *cmd_start, char_u *cmd);
char_u *find_nextcmd(char_u *p);
char_u *check_nextcmd(char_u *p);
char_u *get_command_name(expand_T *xp, int idx);
void not_exiting(void);
void ex_quit(exarg_T *eap);
void tabpage_close(int forceit);
void tabpage_close_other(tabpage_T *tp, int forceit);
void handle_drop(int filec, char_u **filev, int split, void (*callback)(void *), void *cookie);
void handle_any_postponed_drop(void);
void ex_splitview(exarg_T *eap);
void tabpage_new(void);
void do_exedit(exarg_T *eap, win_T *old_curwin);
void free_cd_dir(void);
void post_chdir(cdscope_T scope);
int changedir_func(char_u *new_dir, int forceit, cdscope_T scope);
void ex_cd(exarg_T *eap);
void do_sleep(long msec);
void ex_may_print(exarg_T *eap);
void ex_redraw(exarg_T *eap);
int vim_mkdir_emsg(char_u *name, int prot);
FILE *open_exfile(char_u *fname, int forceit, char *mode);
void update_topline_cursor(void);
int save_current_state(save_state_T *sst);
void restore_current_state(save_state_T *sst);
void ex_normal(exarg_T *eap);
void exec_normal_cmd(char_u *cmd, int remap, int silent);
void exec_normal(int was_typed, int use_vpeekc, int may_use_terminal_loop);
int find_cmdline_var(char_u *src, int *usedlen);
char_u *eval_vars(char_u *src, char_u *srcstart, int *usedlen, linenr_T *lnump, char **errormsg, int *escaped);
char_u *expand_sfile(char_u *arg);
void dialog_msg(char_u *buff, char *format, char_u *fname);
void set_no_hlsearch(int flag);
int is_loclist_cmd(int cmdidx);
int get_pressedreturn(void);
void set_pressedreturn(int val);
/* vim: set ft=c : */
