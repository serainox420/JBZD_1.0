package com.openx.sdk.calendar;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes3.dex */
public class OXMDate {
    private static final String DATE_PATTERN = "yyyy-MM-dd";
    private static final String DATE_TIME_PATTERN_SEP1 = "T";
    private static final String DATE_TIME_PATTERN_SEP2 = " ";
    private static final String TIME_PATTERN1 = "HH:mm'Z'";
    private static final String TIME_PATTERN2 = "HH:mm:ss.S";
    private static final String TIME_PATTERN3 = "HH:mm:ss.SS";
    private static final String TIME_PATTERN4 = "HH:mm:ss.SSS";
    private static final String TIME_PATTERN5 = "HH:mm:ss.SZZZ";
    private static final String TIME_PATTERN6 = "HH:mm:ss.SSZZZ";
    private static final String TIME_PATTERN7 = "HH:mm:ss.SSSZZZ";
    private static final String TIME_PATTERN8 = "HH:mm:ssZZZ";
    private static final String TIME_PATTERN9 = "HH:mmZZZ";
    private Date mDate;
    private boolean mIsEmpty;
    private String mTimeZone;

    public boolean isEmpty() {
        return this.mIsEmpty;
    }

    public Date getDate() {
        return this.mDate;
    }

    public void setDate(Date date) {
        this.mDate = date;
    }

    public String getTimeZone() {
        return this.mTimeZone;
    }

    public void setTimeZone(String str) {
        if (str != null && !str.startsWith("GMT")) {
            str = "GMT" + str;
        }
        this.mTimeZone = str;
    }

    public long getTime() {
        if (this.mDate != null) {
            return this.mDate.getTime();
        }
        return 0L;
    }

    private static SimpleDateFormat tryPattern(String str, String str2) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
            simpleDateFormat.parse(str);
            return simpleDateFormat;
        } catch (ParseException e) {
            return null;
        }
    }

    public OXMDate(String str) throws ParseException {
        String str2;
        String str3;
        String str4 = null;
        if (str != null) {
            if (str.indexOf(DATE_TIME_PATTERN_SEP1) != -1) {
                str3 = str.substring(0, str.indexOf(DATE_TIME_PATTERN_SEP1));
                str2 = str.substring(str.indexOf(DATE_TIME_PATTERN_SEP1) + 1);
                str4 = "'T'";
            } else if (str.indexOf(" ") != -1) {
                str3 = str.substring(0, str.indexOf(" "));
                str2 = str.substring(str.indexOf(" ") + 1);
                str4 = "' '";
            } else {
                this.mDate = new SimpleDateFormat("yyyy-MM-dd").parse(str);
                str2 = null;
                str3 = null;
            }
            if (str3 != null && str2 != null && str4 != null) {
                getDate(str, str2, str4);
                return;
            }
            return;
        }
        this.mIsEmpty = true;
    }

    private void getDate(String str, String str2, String str3) throws ParseException {
        String str4;
        boolean z = false;
        if (tryPattern(str2, TIME_PATTERN1) != null) {
            str4 = "yyyy-MM-dd" + str3 + TIME_PATTERN1;
        } else if (tryPattern(str2, TIME_PATTERN2) != null) {
            str4 = "yyyy-MM-dd" + str3 + TIME_PATTERN2;
        } else if (tryPattern(str2, TIME_PATTERN3) != null) {
            str4 = "yyyy-MM-dd" + str3 + TIME_PATTERN3;
        } else if (tryPattern(str2, TIME_PATTERN4) != null) {
            str4 = "yyyy-MM-dd" + str3 + TIME_PATTERN4;
        } else if (tryPattern(str2, TIME_PATTERN5) != null) {
            str4 = "yyyy-MM-dd" + str3 + TIME_PATTERN5;
            z = true;
        } else if (tryPattern(str2, TIME_PATTERN6) != null) {
            str4 = "yyyy-MM-dd" + str3 + TIME_PATTERN6;
            z = true;
        } else if (tryPattern(str2, TIME_PATTERN7) != null) {
            str4 = "yyyy-MM-dd" + str3 + TIME_PATTERN7;
            z = true;
        } else if (tryPattern(str2, TIME_PATTERN8) != null) {
            str4 = "yyyy-MM-dd" + str3 + TIME_PATTERN8;
            z = true;
        } else if (tryPattern(str2, TIME_PATTERN9) == null) {
            str4 = null;
        } else {
            str4 = "yyyy-MM-dd" + str3 + TIME_PATTERN9;
            z = true;
        }
        if (str4 != null) {
            if (z) {
                setTimeZone(str.substring(str.length() - 6));
            }
            this.mDate = new SimpleDateFormat(str4).parse(str);
        }
    }
}
