package com.smaato.soma.internal.requests;

import com.facebook.internal.AnalyticsEvents;
import com.smaato.soma.AdDimension;
import com.smaato.soma.AdType;
import com.smaato.soma.exception.GeneratingAdSettingsRequestFailed;
import java.util.Locale;
/* compiled from: InternalAdSettings.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private com.smaato.soma.d f5054a;

    public e(com.smaato.soma.d dVar) {
        this.f5054a = dVar;
    }

    public StringBuffer a() throws GeneratingAdSettingsRequestFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.e.1
            });
            StringBuffer stringBuffer = new StringBuffer();
            if (this.f5054a.a() >= 0) {
                stringBuffer.append(String.format(Locale.US, "pub=%d", Long.valueOf(this.f5054a.a())));
            }
            if (this.f5054a.b() >= 0) {
                stringBuffer.append(String.format(Locale.US, "&adspace=%d", Long.valueOf(this.f5054a.b())));
            }
            if (AdType.getStringForValue(this.f5054a.c()).length() > 0) {
                if (this.f5054a.c() == AdType.VAST) {
                    stringBuffer.append(String.format(Locale.US, "&format=%s", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO));
                    stringBuffer.append(String.format(Locale.US, "&videotype=%s", "interstitial"));
                } else if (this.f5054a.c() == AdType.REWARDED) {
                    stringBuffer.append(String.format(Locale.US, "&format=%s", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO));
                    stringBuffer.append(String.format(Locale.US, "&videotype=%s", AdType.getStringForValue(this.f5054a.c())));
                } else {
                    stringBuffer.append(String.format(Locale.US, "&format=%s", AdType.getStringForValue(this.f5054a.c())));
                }
                stringBuffer.append(String.format(Locale.US, "&formatstrict=%s", Boolean.valueOf(this.f5054a.h())));
                if (this.f5054a.c() == AdType.VAST || this.f5054a.c() == AdType.REWARDED) {
                    stringBuffer.append("&vastver=2");
                    stringBuffer.append("&linearity=1");
                }
                if (this.f5054a.c() == AdType.ALL || this.f5054a.c() == AdType.IMAGE || this.f5054a.c() == AdType.TEXT || this.f5054a.c() == AdType.RICHMEDIA || this.f5054a.c() == AdType.NATIVE) {
                    stringBuffer.append("&mediationversion=2");
                }
                if (this.f5054a.c() == AdType.VAST || this.f5054a.c() == AdType.REWARDED) {
                    stringBuffer.append("&response=XML");
                } else {
                    stringBuffer.append("&response=JSON");
                }
                if (this.f5054a.c() == AdType.NATIVE) {
                    stringBuffer.append("&nver=1");
                    String i = this.f5054a.i();
                    if (i != null && i.length() > 0) {
                        stringBuffer.append("&nsupport=");
                        stringBuffer.append(i);
                    }
                }
            }
            if (AdDimension.getStringForValue(this.f5054a.d()).length() > 0) {
                stringBuffer.append(String.format(Locale.US, "&dimension=%s", AdDimension.getStringForValue(this.f5054a.d())));
                stringBuffer.append("&dimensionstrict=" + this.f5054a.g());
            }
            if (this.f5054a.e() > 0) {
                stringBuffer.append(String.format(Locale.US, "&width=%d", Integer.valueOf(this.f5054a.e())));
            }
            if (this.f5054a.f() > 0) {
                stringBuffer.append(String.format(Locale.US, "&height=%d", Integer.valueOf(this.f5054a.f())));
            }
            return stringBuffer;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new GeneratingAdSettingsRequestFailed(e2);
        }
    }
}
