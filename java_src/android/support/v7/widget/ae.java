package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.ListMenuItemView;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
/* compiled from: MenuPopupWindow.java */
@RestrictTo
/* loaded from: classes.dex */
public class ae extends ListPopupWindow implements ad {

    /* renamed from: a  reason: collision with root package name */
    private static Method f863a;
    private ad b;

    static {
        try {
            f863a = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public ae(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.support.v7.widget.ListPopupWindow
    x a(Context context, boolean z) {
        a aVar = new a(context, z);
        aVar.setHoverListener(this);
        return aVar;
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.g.setEnterTransition((Transition) obj);
        }
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.g.setExitTransition((Transition) obj);
        }
    }

    public void a(ad adVar) {
        this.b = adVar;
    }

    public void b(boolean z) {
        if (f863a != null) {
            try {
                f863a.invoke(this.g, Boolean.valueOf(z));
            } catch (Exception e) {
                Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
    }

    @Override // android.support.v7.widget.ad
    public void b(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
        if (this.b != null) {
            this.b.b(hVar, menuItem);
        }
    }

    @Override // android.support.v7.widget.ad
    public void a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
        if (this.b != null) {
            this.b.a(hVar, menuItem);
        }
    }

    /* compiled from: MenuPopupWindow.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public static class a extends x {
        final int g;
        final int h;
        private ad i;
        private MenuItem j;

        @Override // android.support.v7.widget.x
        public /* bridge */ /* synthetic */ boolean a(MotionEvent motionEvent, int i) {
            return super.a(motionEvent, i);
        }

        @Override // android.support.v7.widget.x, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // android.support.v7.widget.x, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // android.support.v7.widget.x, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // android.support.v7.widget.x, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        public a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 17 && 1 == configuration.getLayoutDirection()) {
                this.g = 21;
                this.h = 22;
                return;
            }
            this.g = 22;
            this.h = 21;
        }

        public void setHoverListener(ad adVar) {
            this.i = adVar;
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.g) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            } else if (listMenuItemView != null && i == this.h) {
                setSelection(-1);
                ((android.support.v7.view.menu.g) getAdapter()).a().b(false);
                return true;
            } else {
                return super.onKeyDown(i, keyEvent);
            }
        }

        @Override // android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            android.support.v7.view.menu.g gVar;
            android.support.v7.view.menu.j jVar;
            int pointToPosition;
            int i2;
            if (this.i != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    gVar = (android.support.v7.view.menu.g) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    gVar = (android.support.v7.view.menu.g) adapter;
                }
                if (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = pointToPosition - i) < 0 || i2 >= gVar.getCount()) {
                    jVar = null;
                } else {
                    jVar = gVar.getItem(i2);
                }
                MenuItem menuItem = this.j;
                if (menuItem != jVar) {
                    android.support.v7.view.menu.h a2 = gVar.a();
                    if (menuItem != null) {
                        this.i.a(a2, menuItem);
                    }
                    this.j = jVar;
                    if (jVar != null) {
                        this.i.b(a2, jVar);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }
    }
}
