package android.support.v7.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.support.v7.mediarouter.R;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: MediaRouteDialogHelper.java */
/* loaded from: classes.dex */
final class s {
    public static int a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        boolean z = displayMetrics.widthPixels < displayMetrics.heightPixels;
        TypedValue typedValue = new TypedValue();
        context.getResources().getValue(z ? R.dimen.mr_dialog_fixed_width_minor : R.dimen.mr_dialog_fixed_width_major, typedValue, true);
        if (typedValue.type == 5) {
            return (int) typedValue.getDimension(displayMetrics);
        }
        if (typedValue.type == 6) {
            return (int) typedValue.getFraction(displayMetrics.widthPixels, displayMetrics.widthPixels);
        }
        return -2;
    }

    public static <E> boolean a(List<E> list, List<E> list2) {
        return new HashSet(list).equals(new HashSet(list2));
    }

    public static <E> Set<E> b(List<E> list, List<E> list2) {
        HashSet hashSet = new HashSet(list2);
        hashSet.removeAll(list);
        return hashSet;
    }

    public static <E> Set<E> c(List<E> list, List<E> list2) {
        HashSet hashSet = new HashSet(list);
        hashSet.removeAll(list2);
        return hashSet;
    }

    public static <E> HashMap<E, Rect> a(ListView listView, ArrayAdapter<E> arrayAdapter) {
        HashMap<E, Rect> hashMap = new HashMap<>();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        for (int i = 0; i < listView.getChildCount(); i++) {
            E item = arrayAdapter.getItem(firstVisiblePosition + i);
            View childAt = listView.getChildAt(i);
            hashMap.put(item, new Rect(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom()));
        }
        return hashMap;
    }

    public static <E> HashMap<E, BitmapDrawable> a(Context context, ListView listView, ArrayAdapter<E> arrayAdapter) {
        HashMap<E, BitmapDrawable> hashMap = new HashMap<>();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        for (int i = 0; i < listView.getChildCount(); i++) {
            hashMap.put(arrayAdapter.getItem(firstVisiblePosition + i), a(context, listView.getChildAt(i)));
        }
        return hashMap;
    }

    private static BitmapDrawable a(Context context, View view) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        return new BitmapDrawable(context.getResources(), createBitmap);
    }
}
