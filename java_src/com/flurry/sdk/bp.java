package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class bp implements br {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2490a = bp.class.getSimpleName();

    @Override // com.flurry.sdk.br
    public final boolean a(Context context, bv bvVar) {
        List<bo> list;
        if (bvVar == null) {
            return false;
        }
        String str = bvVar.f2494a;
        if (TextUtils.isEmpty(str) || (list = bvVar.b) == null) {
            return false;
        }
        boolean z = true;
        String packageName = context.getPackageName();
        Iterator<bo> it = list.iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            z = !a(str, packageName, it.next()) ? false : z2;
        }
    }

    private static boolean a(String str, String str2, bo boVar) {
        boolean z = false;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && boVar != null) {
            try {
                if (!TextUtils.isEmpty(boVar.c)) {
                    Class.forName(boVar.c);
                    z = true;
                }
            } catch (ClassNotFoundException e) {
                km.a(6, f2490a, "failed to find third party ad provider api with exception: ", e);
            } catch (ExceptionInInitializerError e2) {
                km.a(6, f2490a, "failed to initialize third party ad provider api with exception: ", e2);
            } catch (LinkageError e3) {
                km.a(6, f2490a, "failed to link third party ad provider api with exception: ", e3);
            }
            if (!z) {
                km.b(f2490a, str + ": package=\"" + str2 + "\": apk should include ad provider library with name=\"" + boVar.f2489a + "\" and version=\"" + boVar.b + "\" or higher");
            } else {
                km.a(3, f2490a, str + ": package=\"" + str2 + "\": apk has ad provider library with name=\"" + boVar.f2489a + "\" and version=\"" + boVar.b + "\" or higher");
            }
        }
        return z;
    }
}
