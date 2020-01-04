youtube-dl fork with custom date output options
=================

Homebrew Tap for Kade Robertson's youtube-dl fork with custom date options:

https://github.com/kade-robertson/youtube-dl

This fork is constantly up to date with the main youtube-dl repo.

## Installation

```
brew remove youtube-dl
brew install kristofferR/homebrew-repo/youtube-dl --HEAD
```

### Fork improvements
This forks adds the following options to the file name output (-o ..). Read Kade's repo readme for more info.

 - `upload_year` (string): Year the video was uploaded (YYYY).
 - `upload_month` (string): Month the video was uploaded (MM).
 - `upload_day` (string): Day the video was uploaded (DD).
 - `upload_dyofyr` (string): Day of year the video was uploaded (DDD).
 - `upload_wkofyr` (string): Week of year the video was uploaded (WW).
 - `upload_dyn` (string): Localized day of the week the video was uploaded (Monday).
 - `upload_dyna` (string): Localized abbreviated day of the week the video was uploaded (Mon).
 - `upload_mntn` (string): Localized month of the year the video was uploaded (September).
 - `upload_mntna` (string): Localized abbreviated month of the year the video was uploaded (Sep).
 - `upload_hour24` (string): Hour of the day (24 hour clock) the video was uploaded (HH).
 - `upload_hour12` (string): Hour of the day (12 hour clock) the video was uploaded (hh).
 - `upload_minute` (string): Minute of the hour the video was uploaded (mm).
 - `upload_second` (string): Second of the minute the video was uploaded (ss).
 - `upload_ampm` (string): Localized AM/PM indicator of when video was uploaded (PP).
 - `upload_time24` (string): Time of day (24 hour clock) the video was uploaded (HHmmss).
 - `upload_time12` (string): Time of day (12 hour clock) the video was uploaded (hhmmssPP).
