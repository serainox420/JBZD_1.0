package com.openx.sdk.calendar;

import android.content.Context;
import android.content.Intent;
import com.mopub.mraid.MraidNativeCommandHandler;
/* loaded from: classes3.dex */
final class OXMCalendarLT14 implements OXMCalendar {
    @Override // com.openx.sdk.calendar.OXMCalendar
    public void createCalendarEvent(Context context, OXMCalendarEvent oXMCalendarEvent) throws Exception {
        String summary = oXMCalendarEvent.getSummary();
        String description = oXMCalendarEvent.getDescription();
        String location = oXMCalendarEvent.getLocation();
        if (summary == null) {
            summary = "";
        }
        if (description == null) {
            description = "";
        }
        if (location == null) {
            location = "";
        }
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
        intent.putExtra("title", summary);
        intent.putExtra("description", description);
        intent.putExtra("eventLocation", location);
        intent.putExtra("beginTime", oXMCalendarEvent.getStart() != null ? oXMCalendarEvent.getStart().getTime() : System.currentTimeMillis());
        intent.putExtra("endTime", oXMCalendarEvent.getEnd() != null ? oXMCalendarEvent.getEnd().getTime() : System.currentTimeMillis() + 1800000);
        intent.putExtra("allDay", false);
        intent.putExtra("visibility", 0);
        if (oXMCalendarEvent.getReminder() != null && !oXMCalendarEvent.getReminder().isEmpty()) {
            intent.putExtra("hasAlarm", 1);
        }
        context.startActivity(intent);
    }
}
