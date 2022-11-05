package com.flurry.sdk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.flurry.sdk.am;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.File;
/* loaded from: classes2.dex */
public class k {
    private static final String d = k.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public final File f2949a;
    String b;
    int c;
    private final kh<jq> e = new kh<jq>() { // from class: com.flurry.sdk.k.1
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(jq jqVar) {
            if (jqVar.f2934a) {
                k.this.b();
            }
        }
    };
    private final File f;
    private am g;

    static /* synthetic */ int d(k kVar) {
        int i = kVar.c;
        kVar.c = i + 1;
        return i;
    }

    public k() {
        ki.a().a("com.flurry.android.sdk.NetworkStateEvent", this.e);
        this.f2949a = jy.a().f2947a.getFileStreamPath(".flurryads.mediaassets");
        this.f = jy.a().f2947a.getFileStreamPath(".flurryads.mediaassets.tmp");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        final String str;
        if (!TextUtils.isEmpty(this.b)) {
            final SharedPreferences sharedPreferences = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
            if (this.b.equals(sharedPreferences.getString("flurry_last_media_asset_url", null)) && this.f2949a.exists()) {
                km.a(3, d, "Media player assets: download not necessary");
            } else {
                if (this.c < 3) {
                    str = this.b + "android.zip";
                } else {
                    str = "https://cdn.flurry.com/vast/videocontrols/v2/android.zip";
                }
                if (this.g != null) {
                    this.g.b();
                }
                this.f.delete();
                km.a(3, d, "Media player assets: attempting download from url: " + str);
                this.g = new an(this.f);
                this.g.b = str;
                this.g.c = 30000;
                this.g.f2439a = new am.a() { // from class: com.flurry.sdk.k.3
                    @Override // com.flurry.sdk.am.a
                    public final void a(am amVar) {
                        if (!amVar.f || !k.this.f.exists()) {
                            km.a(3, k.d, "Media player assets: download failed");
                            if (jr.a().b) {
                                k.d(k.this);
                            }
                            jy a2 = jy.a();
                            a2.b.postDelayed(new ma() { // from class: com.flurry.sdk.k.3.1
                                @Override // com.flurry.sdk.ma
                                public final void a() {
                                    k.this.b();
                                }
                            }, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
                        } else {
                            k.this.f2949a.delete();
                            if (k.this.f.renameTo(k.this.f2949a)) {
                                km.a(3, k.d, "Media player assets: download successful");
                                SharedPreferences.Editor edit = sharedPreferences.edit();
                                edit.putString("flurry_last_media_asset_url", str);
                                edit.apply();
                            } else {
                                km.a(3, k.d, "Media player assets: couldn't rename tmp file (giving up)");
                            }
                        }
                        k.this.g = null;
                    }
                };
                this.g.a();
            }
        }
    }
}
