package com.smaato.soma.internal.requests.settings;

import com.smaato.soma.exception.GenerateUserSettingsFailed;
import com.smaato.soma.internal.c.k;
import com.smaato.soma.internal.requests.settings.UserSettings;
import java.util.Locale;
/* compiled from: InternalUserSettings.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private UserSettings f5074a;

    public b(UserSettings userSettings) {
        this.f5074a = userSettings;
    }

    public final StringBuffer a() throws GenerateUserSettingsFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.b.1
            });
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("&coppa=" + this.f5074a.d());
            if (UserSettings.Gender.getStringForValue(this.f5074a.f5059a).length() > 0) {
                stringBuffer.append(String.format(Locale.US, "&gender=%s", k.a(UserSettings.Gender.getStringForValue(this.f5074a.f5059a))));
            }
            if (this.f5074a.a() > 0) {
                stringBuffer.append(String.format(Locale.US, "&age=%d", Integer.valueOf(this.f5074a.a())));
            }
            if (this.f5074a.c != null && this.f5074a.c.length() > 0) {
                stringBuffer.append(String.format(Locale.US, "&kws=%s", k.a(this.f5074a.c)));
            }
            if (this.f5074a.d != null && this.f5074a.d.length() > 0) {
                stringBuffer.append(String.format(Locale.US, "&qs=%s", k.a(this.f5074a.d)));
            }
            if (this.f5074a.e != null && this.f5074a.e.length() > 0) {
                stringBuffer.append(String.format(Locale.US, "&region=%s", k.a(this.f5074a.e)));
            }
            if (this.f5074a.f != null && this.f5074a.f.length() > 0) {
                stringBuffer.append(String.format(Locale.US, "&city=%s", k.a(this.f5074a.f)));
            }
            return stringBuffer;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new GenerateUserSettingsFailed(e2);
        }
    }
}
