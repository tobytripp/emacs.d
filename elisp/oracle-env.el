(setenv "TNS_ADMIN" "/usr/local/oracle/network/admin")
(setenv "SQLPATH" "/usr/local/oracle/instantclient_11_2")
(setenv "DYLD_LIBRARY_PATH" "/usr/local/oracle/instantclient_11_2")
(setenv "ORACLE_INTANTCLIENT_HOME" "/usr/local/oracle/instantclient_11_2")

(setenv  "PATH" (concat (getenv "PATH") ":" "/usr/local/oracle/instantclient_11_2" ":" "/Users/ttripp/.rbenv/shems"))
(setq exec-path (append exec-path '("/usr/local/oracle/instantclient_11_2") '("/Users/ttripp/.rbenv/shims")))

(provide 'oracle-env)
