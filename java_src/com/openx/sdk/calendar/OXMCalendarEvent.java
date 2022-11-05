package com.openx.sdk.calendar;

import com.facebook.internal.AnalyticsEvents;
import com.google.firebase.a.a;
import com.openx.common.utils.helpers.Utils;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.text.ParseException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class OXMCalendarEvent {
    private String mDescription;
    private OXMDate mEnd;
    private String mId;
    private String mLocation;
    private OXMCalendarRepeatRule mRecurrence;
    private OXMDate mReminder;
    private OXMDate mStart;
    private Status mStatus;
    private String mSummary;
    private Transparency mTransparency;

    /* loaded from: classes3.dex */
    public enum Status {
        PENDING,
        TENTATIVE,
        CONFIRMED,
        CANCELLED,
        UNKNOWN
    }

    /* loaded from: classes3.dex */
    public enum Transparency {
        TRANSPARENT,
        OPAQUE,
        UNKNOWN
    }

    public String getId() {
        return this.mId;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public void setDescription(String str) {
        this.mDescription = str;
    }

    public String getLocation() {
        return this.mLocation;
    }

    public void setLocation(String str) {
        this.mLocation = str;
    }

    public String getSummary() {
        return this.mSummary;
    }

    public void setSummary(String str) {
        this.mSummary = str;
    }

    public OXMDate getStart() {
        return this.mStart;
    }

    public void setStart(String str) {
        try {
            this.mStart = new OXMDate(str);
        } catch (ParseException e) {
            Utils.log(this, e.getMessage());
        }
    }

    public OXMDate getEnd() {
        return this.mEnd;
    }

    public void setEnd(String str) {
        try {
            this.mEnd = new OXMDate(str);
        } catch (ParseException e) {
            Utils.log(this, e.getMessage());
        }
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public void setStatus(Status status) {
        this.mStatus = status;
    }

    public Transparency getTransparency() {
        return this.mTransparency;
    }

    public void setTransparency(Transparency transparency) {
        this.mTransparency = transparency;
    }

    public OXMCalendarRepeatRule getRecurrence() {
        return this.mRecurrence;
    }

    public void setRecurrence(OXMCalendarRepeatRule oXMCalendarRepeatRule) {
        this.mRecurrence = oXMCalendarRepeatRule;
    }

    public OXMDate getReminder() {
        return this.mReminder;
    }

    public void setReminder(String str) {
        try {
            this.mReminder = new OXMDate(str);
        } catch (ParseException e) {
            Utils.log(this, e.getMessage());
        }
    }

    public OXMCalendarEvent(JSONObject jSONObject) {
        setId(jSONObject.optString("id", null));
        setDescription(jSONObject.optString("description", null));
        setLocation(jSONObject.optString(a.b.LOCATION, null));
        setSummary(jSONObject.optString("summary", null));
        setStart(jSONObject.optString(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START, null));
        setEnd(jSONObject.optString("end", null));
        setCalendarStatus(jSONObject.optString("status", null));
        setCalendarTransparency(jSONObject.optString("transparency", null));
        setCalendarRecurrence(jSONObject.optString("recurrence", null));
        setReminder(jSONObject.optString("reminder", null));
    }

    private void setCalendarRecurrence(String str) {
        if (str != null && !str.equals("")) {
            try {
                setRecurrence(new OXMCalendarRepeatRule(new JSONObject(str)));
            } catch (Exception e) {
                Utils.log(this, e.getMessage());
            }
        }
    }

    private void setCalendarTransparency(String str) {
        if (str != null && !str.equals("")) {
            if (str.equalsIgnoreCase("transparent")) {
                setTransparency(Transparency.TRANSPARENT);
                return;
            } else if (str.equalsIgnoreCase("opaque")) {
                setTransparency(Transparency.OPAQUE);
                return;
            } else {
                setTransparency(Transparency.UNKNOWN);
                return;
            }
        }
        setTransparency(Transparency.UNKNOWN);
    }

    private void setCalendarStatus(String str) {
        if (str != null && !str.equals("")) {
            if (str.equalsIgnoreCase("pending")) {
                setStatus(Status.PENDING);
                return;
            } else if (str.equalsIgnoreCase("tentative")) {
                setStatus(Status.TENTATIVE);
                return;
            } else if (str.equalsIgnoreCase("confirmed")) {
                setStatus(Status.CONFIRMED);
                return;
            } else if (str.equalsIgnoreCase(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED)) {
                setStatus(Status.CANCELLED);
                return;
            } else {
                setStatus(Status.UNKNOWN);
                return;
            }
        }
        setStatus(Status.UNKNOWN);
    }
}
