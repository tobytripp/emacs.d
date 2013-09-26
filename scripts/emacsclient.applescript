on open given_items
   set this_item to item 1 of given_items
   set file_path to (the POSIX path of this_item)
     tell application "Terminal"
       do shell script "/usr/local/Cellar/emacs/current/bin/emacsclient -n " & file_path & ""
     end tell
end open
