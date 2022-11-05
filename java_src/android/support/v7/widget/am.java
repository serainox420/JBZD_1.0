package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;
/* compiled from: ScrollbarHelper.java */
/* loaded from: classes.dex */
class am {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecyclerView.r rVar, ag agVar, View view, View view2, RecyclerView.h hVar, boolean z, boolean z2) {
        int max;
        if (hVar.getChildCount() == 0 || rVar.e() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(hVar.getPosition(view), hVar.getPosition(view2));
        int max2 = Math.max(hVar.getPosition(view), hVar.getPosition(view2));
        if (z2) {
            max = Math.max(0, (rVar.e() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (z) {
            return Math.round((max * (Math.abs(agVar.b(view2) - agVar.a(view)) / (Math.abs(hVar.getPosition(view) - hVar.getPosition(view2)) + 1))) + (agVar.c() - agVar.a(view)));
        }
        return max;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecyclerView.r rVar, ag agVar, View view, View view2, RecyclerView.h hVar, boolean z) {
        if (hVar.getChildCount() == 0 || rVar.e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(hVar.getPosition(view) - hVar.getPosition(view2)) + 1;
        }
        return Math.min(agVar.f(), agVar.b(view2) - agVar.a(view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(RecyclerView.r rVar, ag agVar, View view, View view2, RecyclerView.h hVar, boolean z) {
        if (hVar.getChildCount() == 0 || rVar.e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return rVar.e();
        }
        return (int) (((agVar.b(view2) - agVar.a(view)) / (Math.abs(hVar.getPosition(view) - hVar.getPosition(view2)) + 1)) * rVar.e());
    }
}
