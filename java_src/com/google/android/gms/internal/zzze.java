package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class zzze {
    private static final zzyz zzanA = new zzyz("MetadataUtils");
    private static final String[] zzaxd = {"Z", "+hh", "+hhmm", "+hh:mm"};
    private static final String zzaxe;

    static {
        String valueOf = String.valueOf("yyyyMMdd'T'HHmmss");
        String valueOf2 = String.valueOf(zzaxd[0]);
        zzaxe = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public static String zza(Calendar calendar) {
        if (calendar == null) {
            zzanA.zzb("Calendar object cannot be null", new Object[0]);
            return null;
        }
        String str = zzaxe;
        if (calendar.get(11) == 0 && calendar.get(12) == 0 && calendar.get(13) == 0) {
            str = "yyyyMMdd";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        simpleDateFormat.setTimeZone(calendar.getTimeZone());
        String format = simpleDateFormat.format(calendar.getTime());
        return format.endsWith("+0000") ? format.replace("+0000", zzaxd[0]) : format;
    }

    public static void zza(List<WebImage> list, JSONObject jSONObject) {
        try {
            list.clear();
            JSONArray jSONArray = jSONObject.getJSONArray("images");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    list.add(new WebImage(jSONArray.getJSONObject(i)));
                } catch (IllegalArgumentException e) {
                }
            }
        } catch (JSONException e2) {
        }
    }

    public static void zza(JSONObject jSONObject, List<WebImage> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        for (WebImage webImage : list) {
            jSONArray.put(webImage.toJson());
        }
        try {
            jSONObject.put("images", jSONArray);
        } catch (JSONException e) {
        }
    }

    public static Calendar zzcW(String str) {
        if (TextUtils.isEmpty(str)) {
            zzanA.zzb("Input string is empty or null", new Object[0]);
            return null;
        }
        String zzcX = zzcX(str);
        if (TextUtils.isEmpty(zzcX)) {
            zzanA.zzb("Invalid date format", new Object[0]);
            return null;
        }
        String zzcY = zzcY(str);
        String str2 = "yyyyMMdd";
        if (!TextUtils.isEmpty(zzcY)) {
            String valueOf = String.valueOf(zzcX);
            zzcX = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(zzcY).length()).append(valueOf).append("T").append(zzcY).toString();
            str2 = zzcY.length() == "HHmmss".length() ? "yyyyMMdd'T'HHmmss" : zzaxe;
        }
        Calendar gregorianCalendar = GregorianCalendar.getInstance();
        try {
            gregorianCalendar.setTime(new SimpleDateFormat(str2).parse(zzcX));
            return gregorianCalendar;
        } catch (ParseException e) {
            zzanA.zzb("Error parsing string: %s", e.getMessage());
            return null;
        }
    }

    private static String zzcX(String str) {
        if (TextUtils.isEmpty(str)) {
            zzanA.zzb("Input string is empty or null", new Object[0]);
            return null;
        }
        try {
            return str.substring(0, "yyyyMMdd".length());
        } catch (IndexOutOfBoundsException e) {
            zzanA.zze("Error extracting the date: %s", e.getMessage());
            return null;
        }
    }

    private static String zzcY(String str) {
        if (TextUtils.isEmpty(str)) {
            zzanA.zzb("string is empty or null", new Object[0]);
            return null;
        }
        int indexOf = str.indexOf(84);
        int i = indexOf + 1;
        if (indexOf != "yyyyMMdd".length()) {
            zzanA.zzb("T delimeter is not found", new Object[0]);
            return null;
        }
        try {
            String substring = str.substring(i);
            if (substring.length() == "HHmmss".length()) {
                return substring;
            }
            switch (substring.charAt("HHmmss".length())) {
                case '+':
                case '-':
                    if (!zzcZ(substring)) {
                        return null;
                    }
                    return substring.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2");
                case 'Z':
                    if (substring.length() != "HHmmss".length() + zzaxd[0].length()) {
                        return null;
                    }
                    String valueOf = String.valueOf(substring.substring(0, substring.length() - 1));
                    String valueOf2 = String.valueOf("+0000");
                    return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                default:
                    return null;
            }
        } catch (IndexOutOfBoundsException e) {
            zzanA.zzb("Error extracting the time substring: %s", e.getMessage());
            return null;
        }
    }

    private static boolean zzcZ(String str) {
        int length = str.length();
        int length2 = "HHmmss".length();
        return length == zzaxd[1].length() + length2 || length == zzaxd[2].length() + length2 || length == length2 + zzaxd[3].length();
    }
}
