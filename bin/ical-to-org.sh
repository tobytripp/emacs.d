#!/usr/bin/env bash
export ICAL_ORG_PATH="${HOME}/.emacs.d/agenda/ical.org"

if [ -s "$ICAL_ORG_PATH" ] ; then
    echo "** Calendars Imported" >> $ICAL_ORG_PATH
    echo "  :PROPERTIES:"     >> $ICAL_ORG_PATH
    echo "  :CATEGORY: Calendar Event" >> $ICAL_ORG_PATH
    echo "  :IMPORTED_AT: " $(date "+<%Y-%m-%d %b %H:%M>") >> $ICAL_ORG_PATH
    echo "  :END:"            >> $ICAL_ORG_PATH
else
    cat <<EOF > $ICAL_ORG_PATH
#+TODO: SCHEDULED(s) | CANCELLED(c)
* Imported Calendar Events
EOF
fi

icalBuddy -b "*** "                                          \
          --includeEventProperties "title,datetime,location" \
          --propertyOrder "datetime,title,location"          \
          --propertySeparators "| |\\n  |"                   \
          --includeCals "Toby Tripp,Work,Home"               \
          --excludeAllDayEvents                              \
          --noRelativeDates                                  \
          --dateFormat "<%Y-%m-%d %b %H:%M>"                 \
          --timeFormat ""                                    \
          --excludeEndDates                                  \
          eventsToday+14 >> $ICAL_ORG_PATH
