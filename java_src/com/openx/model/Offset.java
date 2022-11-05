package com.openx.model;

import com.facebook.appevents.AppEventsConstants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes3.dex */
public class Offset {
    private static final String skipFormat = "HH:mm:ss.SSS";

    private static int determineTimeOffset(String str) {
        Date date;
        try {
            date = new SimpleDateFormat(skipFormat).parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            date = null;
        }
        if (date != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            return (calendar.get(10) * 3600) + (calendar.get(12) * 60) + calendar.get(13) + Math.round(calendar.get(14) / 1000.0f);
        }
        return 0;
    }

    public static int time(String str) {
        return (str.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO) || str.equals("00:00:00.000") || str.contains("-")) ? start() : determineTimeOffset(str) * 1000;
    }

    public static int percentage(int i) {
        if (i > 0 && i < 100) {
            return -i;
        }
        if (i <= 0) {
            return start();
        }
        if (i >= 100) {
            return end();
        }
        return invalid();
    }

    public static int start() {
        return Integer.MIN_VALUE;
    }

    public static int end() {
        return -2147483646;
    }

    public static int firstQuartile() {
        return -2147483645;
    }

    public static int midpoint() {
        return -2147483644;
    }

    public static int thirdQuartile() {
        return -2147483643;
    }

    public static int invalid() {
        return -2147383649;
    }
}
