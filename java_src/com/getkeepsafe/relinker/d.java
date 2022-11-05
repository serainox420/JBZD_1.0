package com.getkeepsafe.relinker;

import android.os.Build;
import com.getkeepsafe.relinker.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SystemLibraryLoader.java */
/* loaded from: classes2.dex */
public final class d implements b.InterfaceC0129b {
    @Override // com.getkeepsafe.relinker.b.InterfaceC0129b
    public void a(String str) {
        System.loadLibrary(str);
    }

    @Override // com.getkeepsafe.relinker.b.InterfaceC0129b
    public void b(String str) {
        System.load(str);
    }

    @Override // com.getkeepsafe.relinker.b.InterfaceC0129b
    public String c(String str) {
        return (!str.startsWith("lib") || !str.endsWith(".so")) ? System.mapLibraryName(str) : str;
    }

    @Override // com.getkeepsafe.relinker.b.InterfaceC0129b
    public String d(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // com.getkeepsafe.relinker.b.InterfaceC0129b
    public String[] a() {
        if (Build.VERSION.SDK_INT < 21 || Build.SUPPORTED_ABIS.length <= 0) {
            return !e.a(Build.CPU_ABI2) ? new String[]{Build.CPU_ABI, Build.CPU_ABI2} : new String[]{Build.CPU_ABI};
        }
        return Build.SUPPORTED_ABIS;
    }
}
