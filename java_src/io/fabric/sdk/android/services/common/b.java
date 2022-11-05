package io.fabric.sdk.android.services.common;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdvertisingInfo.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f5662a;
    public final boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, boolean z) {
        this.f5662a = str;
        this.b = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.b != bVar.b) {
            return false;
        }
        if (this.f5662a != null) {
            if (this.f5662a.equals(bVar.f5662a)) {
                return true;
            }
        } else if (bVar.f5662a == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = (this.f5662a != null ? this.f5662a.hashCode() : 0) * 31;
        if (this.b) {
            i = 1;
        }
        return hashCode + i;
    }
}
