package com.openx.sdk.calendar;

import com.openx.common.utils.helpers.Utils;
/* loaded from: classes3.dex */
public final class OXMCalendarFactory {
    private OXMCalendar mImplementation;

    private OXMCalendarFactory() {
        if (Utils.atLeastICS()) {
            this.mImplementation = new OXMCalendarGTE14();
        } else {
            this.mImplementation = new OXMCalendarLT14();
        }
    }

    /* loaded from: classes3.dex */
    private static class OXMCalendarImplHolder {
        public static final OXMCalendarFactory instance = new OXMCalendarFactory();

        private OXMCalendarImplHolder() {
        }
    }

    public static OXMCalendar getCalendarInstance() {
        return OXMCalendarImplHolder.instance.mImplementation;
    }
}
