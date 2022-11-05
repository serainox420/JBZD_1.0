package android.support.v4.widget;

import android.annotation.TargetApi;
import android.view.View;
import android.widget.ListView;
/* compiled from: ListViewCompatGingerbread.java */
@TargetApi(9)
/* loaded from: classes.dex */
class p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ListView listView, int i) {
        View childAt;
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (firstVisiblePosition != -1 && (childAt = listView.getChildAt(0)) != null) {
            listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
        }
    }
}
