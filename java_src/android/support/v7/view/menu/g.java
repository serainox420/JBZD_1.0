package android.support.v7.view.menu;

import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.p;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
/* compiled from: MenuAdapter.java */
@RestrictTo
/* loaded from: classes.dex */
public class g extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    static final int f718a = R.layout.abc_popup_menu_item_layout;
    h b;
    private int c = -1;
    private boolean d;
    private final boolean e;
    private final LayoutInflater f;

    public g(h hVar, LayoutInflater layoutInflater, boolean z) {
        this.e = z;
        this.f = layoutInflater;
        this.b = hVar;
        b();
    }

    public void a(boolean z) {
        this.d = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<j> l = this.e ? this.b.l() : this.b.i();
        if (this.c < 0) {
            return l.size();
        }
        return l.size() - 1;
    }

    public h a() {
        return this.b;
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public j getItem(int i) {
        ArrayList<j> l = this.e ? this.b.l() : this.b.i();
        if (this.c >= 0 && i >= this.c) {
            i++;
        }
        return l.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate = view == null ? this.f.inflate(f718a, viewGroup, false) : view;
        p.a aVar = (p.a) inflate;
        if (this.d) {
            ((ListMenuItemView) inflate).setForceShowIcon(true);
        }
        aVar.a(getItem(i), 0);
        return inflate;
    }

    void b() {
        j r = this.b.r();
        if (r != null) {
            ArrayList<j> l = this.b.l();
            int size = l.size();
            for (int i = 0; i < size; i++) {
                if (l.get(i) == r) {
                    this.c = i;
                    return;
                }
            }
        }
        this.c = -1;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        b();
        super.notifyDataSetChanged();
    }
}
