package com.millennialmedia.internal.utils;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.firebase.a.a;
import com.millennialmedia.MMLog;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class CalendarUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4168a = CalendarUtils.class.getSimpleName();
    private static final SimpleDateFormat b = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
    private static final String[] c = {"SU", "MO", "TU", "WE", "TH", "FR", "SA", "SU"};
    private static final String[] d = {"yyyy-MM-dd'T'HH:mmZZZ", "yyyy-MM-dd'T'HH:mm:ssZZZ"};

    /* loaded from: classes3.dex */
    public interface CalendarListener {
        void onError(String str);

        void onUIDisplayed();
    }

    public static void addEvent(Context context, JSONObject jSONObject, CalendarListener calendarListener) {
        if (calendarListener == null) {
            MMLog.e(f4168a, "CalendarListener is required");
            return;
        }
        String optString = jSONObject.optString("description", null);
        String optString2 = jSONObject.optString("summary", null);
        String optString3 = jSONObject.optString(a.b.LOCATION, null);
        String recurrenceRule = getRecurrenceRule(jSONObject.optJSONObject("recurrence"));
        Date parseDate = parseDate(jSONObject.optString(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START, null));
        Date parseDate2 = parseDate(jSONObject.optString("end", null));
        Integer transparency = getTransparency(jSONObject.optString("transparency", null));
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4168a, String.format("Creating calendar event: title: %s, location: %s, start: %s, end: %s, description: %s, rrule: %s, transparency: %s", optString, optString3, parseDate, parseDate2, optString2, recurrenceRule, transparency));
        }
        if (optString == null || parseDate == null) {
            calendarListener.onError("Description and start are required");
            return;
        }
        Intent data = new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", optString);
        data.putExtra("beginTime", parseDate.getTime());
        if (parseDate2 != null) {
            data.putExtra("endTime", parseDate2.getTime());
        }
        if (optString2 != null) {
            data.putExtra("description", optString2);
        }
        if (optString3 != null) {
            data.putExtra("eventLocation", optString3);
        }
        if (recurrenceRule != null) {
            data.putExtra("rrule", recurrenceRule);
        }
        if (transparency != null) {
            data.putExtra("availability", transparency);
        }
        try {
            context.startActivity(data);
            calendarListener.onUIDisplayed();
        } catch (ActivityNotFoundException e) {
            calendarListener.onError("No calendar application installed");
        }
    }

    public static String getRecurrenceRule(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String optString = jSONObject.optString("frequency", null);
        if (optString == null) {
            MMLog.e(f4168a, "frequency is required for recurrence rule");
            return null;
        }
        sb.append("FREQ=").append(optString).append(';');
        Date parseDate = parseDate(jSONObject.optString("expires", null));
        if (parseDate != null) {
            sb.append("UNTIL=").append(b.format(parseDate)).append(';');
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("daysInWeek");
        if (optJSONArray != null) {
            ArrayList<String> convertDaysToRRuleDays = convertDaysToRRuleDays(optJSONArray);
            if (convertDaysToRRuleDays.size() > 0) {
                sb.append("BYDAY=").append(TextUtils.join(",", convertDaysToRRuleDays)).append(';');
            }
        }
        String optString2 = jSONObject.optString("daysInMonth", null);
        if (optString2 != null) {
            sb.append("BYMONTHDAY=").append(optString2.replaceAll("\\[", "").replaceAll("\\]", "")).append(';');
        }
        String optString3 = jSONObject.optString("monthsInYear", null);
        if (optString3 != null) {
            sb.append("BYMONTH=").append(optString3.replaceAll("\\[", "").replaceAll("\\]", "")).append(';');
        }
        String optString4 = jSONObject.optString("daysInYear", null);
        if (optString4 != null) {
            sb.append("BYYEARDAY=").append(optString4).append(';');
        }
        return sb.toString().toUpperCase();
    }

    public static Date parseDate(String str) {
        String[] strArr;
        Date date = null;
        if (str != null) {
            for (String str2 : d) {
                try {
                    date = new SimpleDateFormat(str2).parse(str);
                } catch (ParseException e) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4168a, "Parsing exception for value = " + str + " with pattern = " + str2);
                    }
                }
                if (date != null) {
                    break;
                }
            }
            if (date == null) {
                MMLog.e(f4168a, "Error parsing calendar event date <" + str + ">");
            }
        }
        return date;
    }

    public static ArrayList<String> convertDaysToRRuleDays(JSONArray jSONArray) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            int optInt = jSONArray.optInt(i, 0);
            if (optInt >= 0 && optInt < c.length) {
                arrayList.add(c[optInt]);
            } else {
                MMLog.e(f4168a, "Invalid index for day of week <" + optInt + ">");
            }
        }
        return arrayList;
    }

    public static Integer getTransparency(String str) {
        if ("transparent".equals(str)) {
            return 1;
        }
        if (!"opaque".equals(str)) {
            return null;
        }
        return 0;
    }
}
