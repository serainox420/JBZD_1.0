package com.revmob.client;
/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public String f4786a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    private boolean h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str, String str2, String str3, boolean z, String str4, boolean z2) {
        this.g = str;
        this.f4786a = str2;
        this.b = str3;
        this.h = z;
        this.c = str4;
        this.i = z2;
    }

    public final boolean T() {
        return this.h;
    }

    public final boolean U() {
        return this.i;
    }

    public String c() {
        return null;
    }

    public final String c(String str) {
        if (str != null) {
            if (this.b.contains("click_stub.json")) {
                this.b = this.b.concat("?videoPosition=");
            } else {
                this.b = this.b.concat("&videoPosition=");
            }
            this.b = this.b.concat(str);
        }
        return this.b;
    }
}
