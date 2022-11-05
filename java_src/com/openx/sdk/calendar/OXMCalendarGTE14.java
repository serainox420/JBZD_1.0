package com.openx.sdk.calendar;

import android.content.Context;
import android.content.Intent;
import com.mopub.mraid.MraidNativeCommandHandler;
/* loaded from: classes3.dex */
final class OXMCalendarGTE14 implements OXMCalendar {
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
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
        intent.putExtra("title", summary);
        intent.putExtra("description", description);
        intent.putExtra("eventLocation", location);
        intent.putExtra("beginTime", oXMCalendarEvent.getStart() != null ? oXMCalendarEvent.getStart().getTime() : System.currentTimeMillis());
        intent.putExtra("endTime", oXMCalendarEvent.getEnd() != null ? oXMCalendarEvent.getEnd().getTime() : System.currentTimeMillis() + 1800000);
        intent.putExtra("allDay", false);
        intent.putExtra("accessLevel", 0);
        intent.putExtra("availability", 1);
        OXMCalendarRepeatRule recurrence = oXMCalendarEvent.getRecurrence();
        if (recurrence != null) {
            intent.putExtra("rrule", createRule(recurrence));
        }
        if (oXMCalendarEvent.getReminder() != null && !oXMCalendarEvent.getReminder().isEmpty()) {
            intent.putExtra("hasAlarm", true);
        }
        context.startActivity(intent);
    }

    private String createRule(OXMCalendarRepeatRule oXMCalendarRepeatRule) {
        StringBuilder frequencyRule = setFrequencyRule(oXMCalendarRepeatRule);
        if (oXMCalendarRepeatRule.getDaysInWeek() != null && oXMCalendarRepeatRule.getDaysInWeek().length > 0) {
            setDayRule(oXMCalendarRepeatRule, frequencyRule);
        }
        frequencyRule.append(produceRuleValuesStringForKey(oXMCalendarRepeatRule.getDaysInMonth(), "BYMONTHDAY"));
        frequencyRule.append(produceRuleValuesStringForKey(oXMCalendarRepeatRule.getDaysInYear(), "BYYEARDAY"));
        frequencyRule.append(produceRuleValuesStringForKey(oXMCalendarRepeatRule.getMonthsInYear(), "BYMONTH"));
        frequencyRule.append(produceRuleValuesStringForKey(oXMCalendarRepeatRule.getWeeksInMonth(), "BYWEEKNO"));
        if (oXMCalendarRepeatRule.getExpires() != null) {
            frequencyRule.append(";UNTIL=" + oXMCalendarRepeatRule.getExpires().getTime());
        }
        if (oXMCalendarRepeatRule.getExceptionDates() != null) {
        }
        return frequencyRule.toString();
    }

    private void setDayRule(OXMCalendarRepeatRule oXMCalendarRepeatRule, StringBuilder sb) {
        Short[] daysInWeek;
        StringBuilder sb2 = new StringBuilder();
        for (Short sh : oXMCalendarRepeatRule.getDaysInWeek()) {
            if (sh != null) {
                switch (sh.shortValue()) {
                    case 0:
                        sb2.append(",SU");
                        continue;
                    case 1:
                        sb2.append(",MO");
                        continue;
                    case 2:
                        sb2.append(",TU");
                        continue;
                    case 3:
                        sb2.append(",WE");
                        continue;
                    case 4:
                        sb2.append(",TH");
                        continue;
                    case 5:
                        sb2.append(",FR");
                        continue;
                    case 6:
                        sb2.append(",SA");
                        continue;
                }
            }
        }
        if (sb2.length() > 0) {
            sb.append(";BYDAY=" + sb2.deleteCharAt(0).toString());
        }
    }

    private StringBuilder setFrequencyRule(OXMCalendarRepeatRule oXMCalendarRepeatRule) {
        StringBuilder sb = new StringBuilder();
        switch (oXMCalendarRepeatRule.getFrequency()) {
            case DAILY:
                sb.append("FREQ=DAILY");
                break;
            case MONTHLY:
                sb.append("FREQ=MONTHLY");
                break;
            case WEEKLY:
                sb.append("FREQ=WEEKLY");
                break;
            case YEARLY:
                sb.append("FREQ=YEARLY");
                break;
        }
        if (oXMCalendarRepeatRule.getInterval() != null) {
            sb.append(";INTERVAL=" + oXMCalendarRepeatRule.getInterval());
        }
        return sb;
    }

    private String produceRuleValuesStringForKey(Short[] shArr, String str) {
        if (shArr != null && shArr.length > 0) {
            StringBuilder sb = new StringBuilder();
            for (Short sh : shArr) {
                if (sh != null) {
                    sb.append("," + sh);
                }
            }
            if (sb.length() > 0) {
                return ";" + str + "=" + sb.deleteCharAt(0).toString();
            }
            return "";
        }
        return "";
    }
}
