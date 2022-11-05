package com.flurry.sdk;

import com.flurry.sdk.kz;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class ky {
    public final String b;
    public la d;
    public Set<String> c = new HashSet();
    public String e = "defaultDataKey_";

    /* renamed from: a  reason: collision with root package name */
    private kh<jq> f2995a = new kh<jq>() { // from class: com.flurry.sdk.ky.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(jq jqVar) {
            jq jqVar2 = jqVar;
            km.a(4, ky.this.b, "onNetworkStateChanged : isNetworkEnable = " + jqVar2.f2934a);
            if (!jqVar2.f2934a) {
                return;
            }
            ky.this.b();
        }
    };

    /* loaded from: classes2.dex */
    public interface a {
    }

    public abstract void a(byte[] bArr, String str, String str2);

    public ky(final String str, String str2) {
        this.b = str2;
        ki.a().a("com.flurry.android.sdk.NetworkStateEvent", this.f2995a);
        jy.a().b(new ma() { // from class: com.flurry.sdk.ky.2
            @Override // com.flurry.sdk.ma
            public final void a() {
                ky.this.d = new la(str);
            }
        });
    }

    public final void b() {
        jy.a().b(new ma() { // from class: com.flurry.sdk.ky.4

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a f2999a = null;

            @Override // com.flurry.sdk.ma
            public final void a() {
                final ky kyVar = ky.this;
                if (!jr.a().b) {
                    km.a(5, kyVar.b, "Reports were not sent! No Internet connection!");
                    return;
                }
                ArrayList<String> arrayList = new ArrayList(kyVar.d.c.keySet());
                if (arrayList.isEmpty()) {
                    km.a(4, kyVar.b, "No more reports to send.");
                    return;
                }
                for (String str : arrayList) {
                    if (!kyVar.c()) {
                        return;
                    }
                    List<String> a2 = kyVar.d.a(str);
                    km.a(4, kyVar.b, "Number of not sent blocks = " + a2.size());
                    for (String str2 : a2) {
                        if (!kyVar.c.contains(str2)) {
                            if (kyVar.c()) {
                                kz kzVar = (kz) new kf(jy.a().f2947a.getFileStreamPath(kz.a(str2)), ".yflurrydatasenderblock.", 1, new lj<kz>() { // from class: com.flurry.sdk.ky.6
                                    @Override // com.flurry.sdk.lj
                                    public final lg<kz> a(int i) {
                                        return new kz.a();
                                    }
                                }).a();
                                if (kzVar == null) {
                                    km.a(6, kyVar.b, "Internal ERROR! Cannot read!");
                                    kyVar.d.a(str2, str);
                                } else {
                                    byte[] bArr = kzVar.b;
                                    if (bArr == null || bArr.length == 0) {
                                        km.a(6, kyVar.b, "Internal ERROR! Report is empty!");
                                        kyVar.d.a(str2, str);
                                    } else {
                                        km.a(5, kyVar.b, "Reading block info " + str2);
                                        kyVar.c.add(str2);
                                        kyVar.a(bArr, str2, str);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    public void a(final String str, final String str2, int i) {
        jy.a().b(new ma() { // from class: com.flurry.sdk.ky.7
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (!ky.this.d.a(str, str2)) {
                    km.a(6, ky.this.b, "Internal error. Block wasn't deleted with id = " + str);
                }
                if (!ky.this.c.remove(str)) {
                    km.a(6, ky.this.b, "Internal error. Block with id = " + str + " was not in progress state");
                }
            }
        });
    }

    public final void a(final String str) {
        jy.a().b(new ma() { // from class: com.flurry.sdk.ky.8
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (!ky.this.c.remove(str)) {
                    km.a(6, ky.this.b, "Internal error. Block with id = " + str + " was not in progress state");
                }
            }
        });
    }

    public final void b(final byte[] bArr, final String str, final String str2) {
        if (bArr == null || bArr.length == 0) {
            km.a(6, this.b, "Report that has to be sent is EMPTY or NULL");
            return;
        }
        jy.a().b(new ma() { // from class: com.flurry.sdk.ky.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                final ky kyVar = ky.this;
                byte[] bArr2 = bArr;
                kz kzVar = new kz(bArr2);
                String str3 = kzVar.f3004a;
                new kf(jy.a().f2947a.getFileStreamPath(kz.a(str3)), ".yflurrydatasenderblock.", 1, new lj<kz>() { // from class: com.flurry.sdk.ky.5
                    @Override // com.flurry.sdk.lj
                    public final lg<kz> a(int i) {
                        return new kz.a();
                    }
                }).a(kzVar);
                km.a(5, kyVar.b, "Saving Block File " + str3 + " at " + jy.a().f2947a.getFileStreamPath(kz.a(str3)));
                kyVar.d.a(kzVar, kyVar.e + str + io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR + str2);
            }
        });
        b();
    }

    final boolean c() {
        return this.c.size() <= 5;
    }
}
