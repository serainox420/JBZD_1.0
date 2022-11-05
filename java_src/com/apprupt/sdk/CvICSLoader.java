package com.apprupt.sdk;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Handler;
import com.apprupt.sdk.URLRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes.dex */
class CvICSLoader implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Context f1812a;
    private ProgressDialog b;
    private String c;
    private Handler d = new Handler() { // from class: com.apprupt.sdk.CvICSLoader.1
    };
    private String[] e = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class Event {

        /* renamed from: a  reason: collision with root package name */
        final String[] f1818a = {"SUMMARY:", "DESCRIPTION:", "LOCATION:", "RRULE:"};
        final String[] b = {"title", "description", "eventLocation", "rrule"};
        final String[] c = {"DTEND;", "DTSTART;"};
        final String[] d = {"dtend", "dtstart"};
        private ContentValues f = new ContentValues();

        Event() {
            this.f.put("calendar_id", (Integer) 1);
            this.f.put("eventStatus", (Integer) 1);
            this.f.put("hasAlarm", (Integer) 1);
            this.f.put("eventTimezone", "Europe/Berlin");
        }

        public void a(String str) {
            for (int i = 0; i < this.f1818a.length; i++) {
                String str2 = this.f1818a[i];
                if (str.startsWith(str2)) {
                    this.f.put(this.b[i], str.substring(str2.length()).replace("\\\\n", "\n").trim());
                    return;
                }
            }
            for (int i2 = 0; i2 < this.c.length; i2++) {
                String str3 = this.c[i2];
                if (str.startsWith(str3)) {
                    long b = b(str.substring(str3.length()).replace("\\\\n", "\n").trim());
                    if (b > 0) {
                        this.f.put(this.d[i2], Long.valueOf(b));
                        return;
                    }
                    return;
                }
            }
        }

        long b(String str) {
            int indexOf;
            Date parse;
            if (str.startsWith("VALUE=DATE:")) {
                str = str.substring(11).trim();
            } else if (str.startsWith("TZID=") && (indexOf = (str = str.substring(5)).indexOf(":")) > 0) {
                this.f.put("eventTimezone", str.substring(0, indexOf));
                str = str.substring(indexOf + 1);
            }
            try {
                parse = new SimpleDateFormat("yyyyMMdd'T'hhmmss'Z'").parse(str);
            } catch (ParseException e) {
                try {
                    parse = new SimpleDateFormat("yyyyMMdd").parse(str);
                } catch (ParseException e2) {
                    return 0L;
                }
            }
            if (parse != null) {
                return parse.getTime();
            }
            return 0L;
        }

        public boolean a(Context context) {
            long longValue = this.f.containsKey("dtstart") ? this.f.getAsLong("dtstart").longValue() : 0L;
            long longValue2 = this.f.containsKey("dtend") ? this.f.getAsLong("dtend").longValue() : 0L;
            if (longValue <= 0 && longValue2 <= 0) {
                return false;
            }
            if (longValue <= 0) {
                longValue = longValue2;
            } else if (longValue2 <= 0) {
                longValue2 = longValue;
            } else {
                long j = longValue2;
                longValue2 = longValue;
                longValue = j;
            }
            this.f.put("dtstart", Long.valueOf(longValue2));
            this.f.put("dtend", Long.valueOf(longValue));
            try {
                context.getApplicationContext().getContentResolver().insert(Uri.parse("content://com.android.calendar/events"), this.f);
            } catch (IllegalArgumentException e) {
                context.getApplicationContext().getContentResolver().insert(Uri.parse("content://calendar/events"), this.f);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvICSLoader(Context context, String str) {
        this.c = str.startsWith("webcal") ? String.format("http%s", str.substring(6)) : str;
        this.f1812a = context;
        this.b = ProgressDialog.show(this.f1812a, "", CvLocale.PROGRESS_LOADING.a());
        new Thread(this).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str) {
        this.d.post(new Runnable() { // from class: com.apprupt.sdk.CvICSLoader.2
            @Override // java.lang.Runnable
            public void run() {
                CvICSLoader.this.b.dismiss();
                CvICSLoader.this.b = null;
                AlertDialog create = new AlertDialog.Builder(CvICSLoader.this.f1812a).create();
                DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.apprupt.sdk.CvICSLoader.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                };
                create.setMessage(str);
                create.setButton(-1, "OK", onClickListener);
                create.show();
            }
        });
    }

    @Override // java.lang.Runnable
    public void run() {
        URLRequest.c(this.c).a(new URLRequest.Listener() { // from class: com.apprupt.sdk.CvICSLoader.3
            @Override // com.apprupt.sdk.URLRequest.Listener
            public void a(URLRequest.URLResponse uRLResponse) {
                if (uRLResponse.d) {
                    CvICSLoader.this.a(CvLocale.CALENDAR_DATA_FAILED.a());
                    return;
                }
                CvICSLoader.this.e = uRLResponse.c.replaceAll("\\r", "").trim().split("\\n");
                CvICSLoader.this.d.post(new Runnable() { // from class: com.apprupt.sdk.CvICSLoader.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CvICSLoader.this.a();
                    }
                });
            }
        }).b();
    }

    void a() {
        int i = 0;
        Event event = null;
        for (int i2 = 0; i2 < this.e.length; i2++) {
            try {
                String trim = this.e[i2].trim();
                if (trim.equals("BEGIN:VEVENT")) {
                    event = new Event();
                } else if (trim.equals("END:VEVENT")) {
                    i += event.a(this.f1812a) ? 1 : 0;
                    event = null;
                } else if (event != null) {
                    event.a(trim);
                }
            } catch (IllegalArgumentException e) {
                a(CvLocale.CALENDAR_FAILED.a());
                return;
            } catch (SecurityException e2) {
                a(CvLocale.CALENDAR_FAILED.a());
                return;
            } catch (Exception e3) {
                a(CvLocale.CALENDAR_FAILED.a());
                return;
            }
        }
        if (i > 0) {
            a(CvLocale.CALENDAR_SUCCESS.a());
        } else {
            a(CvLocale.CALENDAR_NOENTRIES.a());
        }
    }
}
