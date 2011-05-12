(setenv "TNS_ADMIN" "/usr/local/oracle/network/admin")
(setenv "SQLPATH" "/usr/local/oracle/instantclient_10_2")
(setenv "DYLD_LIBRARY_PATH" "/usr/local/oracle/instantclient_10_2:/usr/local/oracle/product/10.2.0/db_1/lib:")
(setenv "ORACLE_INTANTCLIENT_HOME" "/usr/local/oracle/instantclient_10_2")
(setenv "ORACLE_HOME" "/usr/local/oracle/product/10.2.0/db_1")

(setenv  "PATH" (concat (getenv "PATH") ":" "/usr/local/oracle/instantclient_10_2" ":" "/Users/ttripp/.rvm/bin"))
(setq exec-path (append exec-path '("/usr/local/oracle/instantclient_10_2") '("/Users/ttripp/.rvm/bin")))
