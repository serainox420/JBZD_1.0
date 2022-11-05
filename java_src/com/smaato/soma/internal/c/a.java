package com.smaato.soma.internal.c;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.widget.Toast;
import com.google.android.gms.drive.DriveFile;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.smaato.soma.debug.DebugCategory;
/* compiled from: CalendarEventCreator.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    j f4972a;
    Context b;
    String c = "CalendarEventCreator";

    public a(final j jVar, final Context context) {
        new com.smaato.soma.l<Void>() { // from class: com.smaato.soma.internal.c.a.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                a.this.f4972a = jVar;
                a.this.b = context;
                if (Build.VERSION.SDK_INT >= 14) {
                    a.this.a();
                    return null;
                }
                Toast.makeText(a.this.b, "Oups ! This feature is not supported by your device", 0).show();
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            Intent intent = new Intent("android.intent.action.EDIT");
            intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
            String a2 = this.f4972a.a();
            if (a2 != null && a2.length() > 0) {
                intent.putExtra("calendar_id", a2);
            }
            String b = this.f4972a.b();
            if (b != null && b.length() > 0) {
                intent.putExtra("title", b);
            }
            String c = this.f4972a.c();
            if (c != null && c.length() > 0) {
                intent.putExtra("description", c);
            }
            String d = this.f4972a.d();
            if (d != null && d.length() > 0) {
                try {
                    intent.putExtra("beginTime", Long.parseLong(d + "000"));
                } catch (Exception e) {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(this.c, "Wrog Date Format !!", 1, DebugCategory.WARNING));
                }
            }
            String e2 = this.f4972a.e();
            if (e2 != null && e2.length() > 0) {
                try {
                    intent.putExtra("endTime", Long.parseLong(e2 + "000"));
                } catch (Exception e3) {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(this.c, "Wrog Date Format !!", 1, DebugCategory.WARNING));
                }
            }
            if (this.f4972a.f() != null) {
                String g = this.f4972a.g();
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(this.c, "FREQ=" + g, 1, DebugCategory.INFO));
                if (g != null && g.length() > 0) {
                    intent.putExtra("rrule", "FREQ=" + g);
                }
            }
            String h = this.f4972a.h();
            if (h != null && h.length() > 0) {
                intent.putExtra("eventLocation", h);
            }
            String i = this.f4972a.i();
            if (i != null && i.length() > 0) {
                intent.putExtra("eventStatus", i);
            }
            String j = this.f4972a.j();
            if (j != null && j.length() > 0) {
                intent.putExtra("exrule", j);
            }
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            this.b.startActivity(intent);
        } catch (Throwable th) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(this.c, "Wrong JSON format !!", 1, DebugCategory.INFO));
        }
    }
}
