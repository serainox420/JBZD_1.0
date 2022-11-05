package com.google.android.exoplayer2.extractor.d;

import com.google.android.exoplayer2.util.l;
import java.io.IOException;
/* compiled from: OggPacket.java */
/* loaded from: classes2.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private final e f3243a = new e();
    private final l b = new l(new byte[65025], 0);
    private int c = -1;
    private int d;
    private boolean e;

    public void a() {
        this.f3243a.a();
        this.b.a();
        this.c = -1;
        this.e = false;
    }

    public boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        int i;
        com.google.android.exoplayer2.util.a.b(gVar != null);
        if (this.e) {
            this.e = false;
            this.b.a();
        }
        while (!this.e) {
            if (this.c < 0) {
                if (!this.f3243a.a(gVar, true)) {
                    return false;
                }
                int i2 = this.f3243a.h;
                if ((this.f3243a.b & 1) == 1 && this.b.c() == 0) {
                    i2 += a(0);
                    i = this.d + 0;
                } else {
                    i = 0;
                }
                gVar.b(i2);
                this.c = i;
            }
            int a2 = a(this.c);
            int i3 = this.c + this.d;
            if (a2 > 0) {
                gVar.b(this.b.f3511a, this.b.c(), a2);
                this.b.b(a2 + this.b.c());
                this.e = this.f3243a.j[i3 + (-1)] != 255;
            }
            this.c = i3 == this.f3243a.g ? -1 : i3;
        }
        return true;
    }

    public e b() {
        return this.f3243a;
    }

    public l c() {
        return this.b;
    }

    private int a(int i) {
        int i2 = 0;
        this.d = 0;
        while (this.d + i < this.f3243a.g) {
            int[] iArr = this.f3243a.j;
            int i3 = this.d;
            this.d = i3 + 1;
            int i4 = iArr[i3 + i];
            i2 += i4;
            if (i4 != 255) {
                break;
            }
        }
        return i2;
    }
}
