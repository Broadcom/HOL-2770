#!/bin/bash

#This script will correct any issues with the firefox browser at boot.
#It will reset all vCetner and NSX manager UI's to dark mode as well as collpase all trees
#It will also erase all browser history.

#remove and replace the places.sqlite file. This contains book marks and history
rm /lmchol/home/holuser/snap/firefox/common/.mozilla/firefox/hu6lbvyx.default/places.sqlite
cp /vpodrepo/2027-labs/2770/lab-standup/firefox/places.sqlite /lmchol/home/holuser/snap/firefox/common/.mozilla/firefox/hu6lbvyx.default/places.sqlite

#rmove and replace the data folder which contains the data for the individual websites
rm -rf /lmchol/home/holuser/snap/firefox/common/.mozilla/firefox/hu6lbvyx.default/storage/default/
unzip /vpodrepo/2027-labs/2770/lab-standup/firefox/default.zip -d /lmchol/