package com.apprupt.sdk;

import java.util.Locale;
/* loaded from: classes.dex */
enum CvLocale {
    BUTTON_OK,
    BUTTON_CANCEL,
    BUTTON_CALL,
    PROGRESS_LOADING,
    CALENDAR_SUCCESS,
    CALENDAR_NOENTRIES,
    CALENDAR_DATA_FAILED,
    CALENDAR_FAILED;

    private String b() {
        switch (this) {
            case PROGRESS_LOADING:
                return "Loading...";
            case CALENDAR_SUCCESS:
                return "Events added to calendar.";
            case CALENDAR_DATA_FAILED:
                return "Cannot load data from server.";
            case CALENDAR_FAILED:
            case CALENDAR_NOENTRIES:
                return "Cannot add events to calendar.";
            case BUTTON_OK:
                return "OK";
            case BUTTON_CANCEL:
                return "Cancel";
            case BUTTON_CALL:
                return "Call";
            default:
                return toString();
        }
    }

    private String c() {
        switch (this) {
            case PROGRESS_LOADING:
                return "Lädt...";
            case CALENDAR_SUCCESS:
                return "Termine wurden hinzugefügt.";
            case CALENDAR_DATA_FAILED:
                return "Daten können nicht geladen werden.";
            case CALENDAR_FAILED:
            case CALENDAR_NOENTRIES:
                return "Termine können nicht hinzugefügt werden.";
            case BUTTON_OK:
            default:
                return b();
            case BUTTON_CANCEL:
                return "Abbrechen";
            case BUTTON_CALL:
                return "Anrufen";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        Locale locale = Locale.getDefault();
        return (locale.equals(Locale.GERMAN) || locale.equals(Locale.GERMANY)) ? c() : b();
    }
}
