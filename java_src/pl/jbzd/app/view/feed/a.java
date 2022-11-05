package pl.jbzd.app.view.feed;

import android.support.v4.app.Fragment;
import android.support.v4.app.u;
import android.view.ViewGroup;
import java.util.List;
import pl.jbzd.app.view.menu.model.Item;
/* compiled from: FeedTabsPagerAdapter.java */
/* loaded from: classes3.dex */
public class a extends b<FeedFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final List<C0603a> f6022a;
    private Item b;

    @Override // pl.jbzd.app.view.feed.b, android.support.v4.app.x, android.support.v4.view.aa
    public /* bridge */ /* synthetic */ void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        super.destroyItem(viewGroup, i, obj);
    }

    @Override // pl.jbzd.app.view.feed.b, android.support.v4.app.x, android.support.v4.view.aa
    public /* bridge */ /* synthetic */ Object instantiateItem(ViewGroup viewGroup, int i) {
        return super.instantiateItem(viewGroup, i);
    }

    /* compiled from: FeedTabsPagerAdapter.java */
    /* renamed from: pl.jbzd.app.view.feed.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0603a {

        /* renamed from: a  reason: collision with root package name */
        public String f6024a;
        public int b;

        public C0603a(String str, int i) {
            this.f6024a = str;
            this.b = i;
        }
    }

    public a(u uVar, Item item, List<C0603a> list) {
        super(uVar);
        this.b = item;
        this.f6022a = list;
    }

    @Override // android.support.v4.app.x
    public Fragment a(int i) {
        FeedFragment b = b(i);
        if (b == null) {
            return FeedFragment.a(this.b, this.f6022a.get(i).b);
        }
        return b;
    }

    @Override // android.support.v4.view.aa
    public int getCount() {
        return this.f6022a.size();
    }

    public void a() {
        int count = getCount();
        for (int i = 0; i < count; i++) {
            FeedFragment b = b(i);
            if (b != null) {
                b.h();
            }
        }
    }
}
