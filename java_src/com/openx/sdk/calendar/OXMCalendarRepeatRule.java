package com.openx.sdk.calendar;

import com.openx.common.utils.helpers.Utils;
import java.text.ParseException;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class OXMCalendarRepeatRule {
    private Short[] mDaysInMonth;
    private Short[] mDaysInWeek;
    private Short[] mDaysInYear;
    private OXMDate[] mExceptionDates;
    private OXMDate mExpires;
    private Frequency mFrequency;
    private Integer mInterval = 1;
    private Short[] mMonthsInYear;
    private Short[] mWeeksInMonth;

    /* loaded from: classes3.dex */
    public enum Frequency {
        DAILY,
        WEEKLY,
        MONTHLY,
        YEARLY,
        UNKNOWN
    }

    public Frequency getFrequency() {
        return this.mFrequency;
    }

    public void setFrequency(Frequency frequency) {
        this.mFrequency = frequency;
    }

    public Integer getInterval() {
        return this.mInterval;
    }

    public void setInterval(Integer num) {
        this.mInterval = num;
    }

    public OXMDate getExpires() {
        return this.mExpires;
    }

    public void setExpires(String str) {
        try {
            this.mExpires = new OXMDate(str);
        } catch (ParseException e) {
            Utils.log(this, e.getMessage());
        }
    }

    public OXMDate[] getExceptionDates() {
        return this.mExceptionDates;
    }

    public void setExceptionDates(String[] strArr) {
        if (strArr != null) {
            this.mExceptionDates = new OXMDate[strArr.length];
            int i = 0;
            for (String str : strArr) {
                try {
                    this.mExceptionDates[i] = new OXMDate(str);
                } catch (ParseException e) {
                    this.mExceptionDates[i] = null;
                    Utils.log(this, e.getMessage());
                }
                i++;
            }
        }
    }

    public Short[] getDaysInWeek() {
        return this.mDaysInWeek;
    }

    public void setDaysInWeek(Short[] shArr) {
        this.mDaysInWeek = shArr;
    }

    public Short[] getDaysInMonth() {
        return this.mDaysInMonth;
    }

    public void setDaysInMonth(Short[] shArr) {
        this.mDaysInMonth = shArr;
    }

    public Short[] getDaysInYear() {
        return this.mDaysInYear;
    }

    public void setDaysInYear(Short[] shArr) {
        this.mDaysInYear = shArr;
    }

    public Short[] getWeeksInMonth() {
        return this.mWeeksInMonth;
    }

    public void setWeeksInMonth(Short[] shArr) {
        this.mWeeksInMonth = shArr;
    }

    public Short[] getMonthsInYear() {
        return this.mMonthsInYear;
    }

    public void setMonthsInYear(Short[] shArr) {
        this.mMonthsInYear = shArr;
    }

    public OXMCalendarRepeatRule(JSONObject jSONObject) {
        setFrequency(jSONObject.optString("frequency", null));
        setInterval(jSONObject.optString("interval", null));
        String optString = jSONObject.optString("expires", null);
        if (optString != null && !optString.equals("")) {
            setExpires(optString);
        }
        setExceptionDates(jSONObject.optJSONArray("exceptionDates"));
        setDaysInWeek(jSONObject.optJSONArray("daysInWeek"));
        setDaysInMonth(jSONObject.optJSONArray("daysInMonth"));
        setDaysInYear(jSONObject.optJSONArray("daysInYear"));
        setWeeksInMonth(jSONObject.optJSONArray("weeksInMonth"));
        setMonthsInYear(jSONObject.optJSONArray("monthsInYear"));
    }

    private void setMonthsInYear(JSONArray jSONArray) {
        if (jSONArray != null && !jSONArray.equals("")) {
            try {
                Short[] shArr = new Short[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    String optString = jSONArray.optString(i, null);
                    shArr[i] = (optString == null || optString.equals("")) ? null : Short.valueOf(optString);
                }
                setMonthsInYear(shArr);
            } catch (Exception e) {
                Utils.log(this, e.getMessage());
            }
        }
    }

    private void setWeeksInMonth(JSONArray jSONArray) {
        if (jSONArray != null && !jSONArray.equals("")) {
            try {
                Short[] shArr = new Short[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    String optString = jSONArray.optString(i, null);
                    shArr[i] = (optString == null || optString.equals("")) ? null : Short.valueOf(optString);
                }
                setWeeksInMonth(shArr);
            } catch (Exception e) {
                Utils.log(this, e.getMessage());
            }
        }
    }

    private void setDaysInYear(JSONArray jSONArray) {
        if (jSONArray != null && !jSONArray.equals("")) {
            try {
                Short[] shArr = new Short[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    String optString = jSONArray.optString(i, null);
                    shArr[i] = (optString == null || optString.equals("")) ? null : Short.valueOf(optString);
                }
                setDaysInYear(shArr);
            } catch (Exception e) {
                Utils.log(this, e.getMessage());
            }
        }
    }

    private void setDaysInMonth(JSONArray jSONArray) {
        if (jSONArray != null && !jSONArray.equals("")) {
            try {
                Short[] shArr = new Short[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    String optString = jSONArray.optString(i, null);
                    shArr[i] = (optString == null || optString.equals("")) ? null : Short.valueOf(optString);
                }
                setDaysInMonth(shArr);
            } catch (Exception e) {
                Utils.log(this, e.getMessage());
            }
        }
    }

    private void setDaysInWeek(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                Short[] shArr = new Short[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    String optString = jSONArray.optString(i, null);
                    shArr[i] = (optString == null || optString.equals("")) ? null : Short.valueOf(optString);
                }
                setDaysInWeek(shArr);
            } catch (Exception e) {
                Utils.log(this, e.getMessage());
            }
        }
    }

    private void setExceptionDates(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                String[] strArr = new String[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    strArr[i] = jSONArray.optString(i, null);
                }
                setExceptionDates(strArr);
            } catch (Exception e) {
                Utils.log(this, e.getMessage());
            }
        }
    }

    private void setInterval(String str) {
        if (str != null && !str.equals("")) {
            try {
                setInterval(Integer.valueOf(Integer.parseInt(str)));
            } catch (Exception e) {
                Utils.log(this, e.getMessage());
            }
        }
    }

    private void setFrequency(String str) {
        if (str != null && !str.equals("")) {
            if (str.equalsIgnoreCase("daily")) {
                setFrequency(Frequency.DAILY);
                return;
            } else if (str.equalsIgnoreCase("monthly")) {
                setFrequency(Frequency.MONTHLY);
                return;
            } else if (str.equalsIgnoreCase("weekly")) {
                setFrequency(Frequency.WEEKLY);
                return;
            } else if (str.equalsIgnoreCase("yearly")) {
                setFrequency(Frequency.YEARLY);
                return;
            } else {
                setFrequency(Frequency.UNKNOWN);
                return;
            }
        }
        setFrequency(Frequency.UNKNOWN);
    }
}
