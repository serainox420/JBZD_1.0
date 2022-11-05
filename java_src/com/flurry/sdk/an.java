package com.flurry.sdk;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class an extends am {
    private final File h;
    private OutputStream i;

    public an(File file) {
        this.h = file;
    }

    @Override // com.flurry.sdk.am
    protected final OutputStream c() throws IOException {
        if (this.i != null) {
            return this.i;
        }
        if (this.h == null) {
            throw new IOException("No file specified");
        }
        this.i = new FileOutputStream(this.h);
        return this.i;
    }

    @Override // com.flurry.sdk.am
    protected final void d() {
        ly.a(this.i);
        this.i = null;
    }

    @Override // com.flurry.sdk.am
    protected final void e() {
        if (this.h != null) {
            this.h.delete();
        }
    }
}
