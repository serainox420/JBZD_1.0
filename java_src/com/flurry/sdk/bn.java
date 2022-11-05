package com.flurry.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.vision.barcode.Barcode;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class bn implements br {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2488a = bn.class.getSimpleName();
    private static final SparseArray<String> b;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        sparseArray.append(1, "mcc");
        sparseArray.append(2, "mnc");
        sparseArray.append(4, "locale");
        sparseArray.append(8, "touchscreen");
        sparseArray.append(16, "keyboard");
        sparseArray.append(32, "keyboardHidden");
        sparseArray.append(64, "navigation");
        sparseArray.append(128, "orientation");
        sparseArray.append(256, "screenLayout");
        sparseArray.append(512, "uiMode");
        sparseArray.append(1024, "screenSize");
        sparseArray.append(Barcode.PDF417, "smallestScreenSize");
        b = sparseArray;
    }

    @Override // com.flurry.sdk.br
    public final boolean a(Context context, bv bvVar) {
        List<ActivityInfo> list;
        boolean z;
        if (bvVar == null) {
            return false;
        }
        String str = bvVar.f2494a;
        if (TextUtils.isEmpty(str) || (list = bvVar.e) == null) {
            return false;
        }
        boolean z2 = true;
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        Iterator<ActivityInfo> it = list.iterator();
        while (true) {
            boolean z3 = z2;
            if (!it.hasNext()) {
                return z3;
            }
            ActivityInfo next = it.next();
            if (TextUtils.isEmpty(str) || packageManager == null || TextUtils.isEmpty(packageName) || next == null || TextUtils.isEmpty(next.name)) {
                z = false;
            } else {
                ActivityInfo a2 = fe.a(packageManager, new ComponentName(packageName, next.name));
                if (a2 == null) {
                    km.b(f2488a, str + ": package=\"" + packageName + "\": AndroidManifest.xml should include activity node with android:name=\"" + next.name + "\"");
                    z = false;
                } else {
                    km.a(3, f2488a, str + ": package=\"" + packageName + "\": AndroidManifest.xml has activity node with android:name=\"" + next.name + "\"");
                    int i = next.configChanges;
                    if (i == 0) {
                        z = true;
                    } else {
                        int a3 = fe.a(a2);
                        SparseArray<String> sparseArray = b;
                        int i2 = 0;
                        z = true;
                        while (true) {
                            int i3 = i2;
                            if (i3 >= sparseArray.size()) {
                                break;
                            }
                            int keyAt = sparseArray.keyAt(i3);
                            if ((keyAt & i) != 0) {
                                if ((keyAt & a3) == 0) {
                                    km.b(f2488a, str + ": package=\"" + packageName + "\": AndroidManifest.xml activity node with android:name=\"" + next.name + "\" should include android:configChanges value=\"" + sparseArray.valueAt(i3) + "\"");
                                    z = false;
                                } else {
                                    km.a(3, f2488a, str + ": package=\"" + packageName + "\": AndroidManifest.xml activity node with android:name=\"" + next.name + "\" has android:configChanges value=\"" + sparseArray.valueAt(i3) + "\"");
                                }
                            }
                            i2 = i3 + 1;
                        }
                    }
                }
            }
            z2 = !z ? false : z3;
        }
    }
}
