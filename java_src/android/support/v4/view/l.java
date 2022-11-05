package android.support.v4.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.view.k;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import java.lang.reflect.Field;
/* compiled from: LayoutInflaterCompatHC.java */
@TargetApi(11)
/* loaded from: classes.dex */
class l {

    /* renamed from: a  reason: collision with root package name */
    private static Field f467a;
    private static boolean b;

    /* compiled from: LayoutInflaterCompatHC.java */
    /* loaded from: classes.dex */
    static class a extends k.a implements LayoutInflater.Factory2 {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(n nVar) {
            super(nVar);
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.f466a.a(view, str, context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(LayoutInflater layoutInflater, n nVar) {
        a aVar = nVar != null ? new a(nVar) : null;
        layoutInflater.setFactory2(aVar);
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflater.Factory2) {
            a(layoutInflater, (LayoutInflater.Factory2) factory);
        } else {
            a(layoutInflater, aVar);
        }
    }

    static void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!b) {
            try {
                f467a = LayoutInflater.class.getDeclaredField("mFactory2");
                f467a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            b = true;
        }
        if (f467a != null) {
            try {
                f467a.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }
}
