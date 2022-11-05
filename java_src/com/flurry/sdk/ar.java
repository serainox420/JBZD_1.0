package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.aq;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class ar extends am {
    private static final String k = ar.class.getSimpleName();
    protected final aq h;
    protected final String i;
    protected aq.c j;

    public ar(aq aqVar, String str) {
        this.h = aqVar;
        this.i = str;
    }

    @Override // com.flurry.sdk.am
    protected final OutputStream c() throws IOException {
        if (this.j == null) {
            if (this.h == null) {
                throw new IOException("No cache specified");
            }
            if (TextUtils.isEmpty(this.i)) {
                throw new IOException("No cache key specified");
            }
            this.j = this.h.b(this.i);
            if (this.j == null) {
                throw new IOException("Could not open writer for key: " + this.i);
            }
            return this.j.f2457a;
        }
        return this.j.f2457a;
    }

    @Override // com.flurry.sdk.am
    protected final void d() {
        ly.a(this.j);
        this.j = null;
    }

    @Override // com.flurry.sdk.am
    protected final void e() {
        if (this.h != null && !TextUtils.isEmpty(this.i)) {
            try {
                this.h.c(this.i);
            } catch (Exception e) {
                km.a(3, k, "Error removing result for key: " + this.i + " -- " + e);
            }
        }
    }
}
