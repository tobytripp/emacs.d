#!/usr/bin/env bash
export ICAL_ORG_PATH="${HOME}/Documents/Notes/calendar.org"

if [ -s "$ICAL_ORG_PATH" ] ; then
    echo "* Imported Calendars"                             >> $ICAL_ORG_PATH
    echo "  :PROPERTIES:"                                   >> $ICAL_ORG_PATH
    echo "  :CATEGORY: Calendar Event"                      >> $ICAL_ORG_PATH
    echo "  :CUSTOM_ID: Imported Calendars"                 >> $ICAL_ORG_PATH
    echo "  :IMPORTED_AT: " $(date "+<%Y-%m-%d %b %H:%M>")  >> $ICAL_ORG_PATH
    echo "  :END:"                                          >> $ICAL_ORG_PATH
    echo "** " $(date "+<%Y-%m-%d %b %H:%M>") " <<Import>>" >> $ICAL_ORG_PATH
    echo "  :PROPERTIES:"                                   >> $ICAL_ORG_PATH
    echo "  :CATEGORY: Calendar Event"                      >> $ICAL_ORG_PATH
    echo "  :CUSTOM_ID: Import"                             >> $ICAL_ORG_PATH
    echo "  :END:"                                          >> $ICAL_ORG_PATH
else
    cat <<EOF > $ICAL_ORG_PATH
#+TODO: SCHEDULED(s) | CANCELLED(c)
* Current Calendar Events
* Imported Calendars
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
          eventsToday+21 >> $ICAL_ORG_PATH
