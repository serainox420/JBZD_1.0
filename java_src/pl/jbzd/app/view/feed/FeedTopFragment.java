package pl.jbzd.app.view.feed;

import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import com.google.android.gms.analytics.HitBuilders;
import java.util.ArrayList;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.app.view.feed.a;
import pl.jbzd.app.view.main.MainActivity;
import pl.jbzd.app.view.menu.model.Item;
/* loaded from: classes3.dex */
public class FeedTopFragment extends pl.jbzd.app.view.a {
    private a b;
    private Item c;
    private List<a.C0603a> d;
    @BindView
    TabLayout tabLayout;
    @BindView
    ViewPager viewPager;

    public static FeedTopFragment a(Item item) {
        FeedTopFragment feedTopFragment = new FeedTopFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ARG_MENU_ITEM", item);
        feedTopFragment.setArguments(bundle);
        return feedTopFragment;
    }

    @Override // pl.jbzd.core.a, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.c = (Item) getArguments().getParcelable("ARG_MENU_ITEM");
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        return layoutInflater.inflate(R.layout.feed_top_fragment, viewGroup, false);
    }

    @Override // pl.jbzd.core.a, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.viewPager.addOnPageChangeListener(new ViewPager.e() { // from class: pl.jbzd.app.view.feed.FeedTopFragment.1
            @Override // android.support.v4.view.ViewPager.e
            public void a(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.e
            public void b(int i) {
            }

            @Override // android.support.v4.view.ViewPager.e
            public void a(int i) {
            }
        });
        a(0);
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (d() != null) {
            d().setScreenName("Top");
            d().send(new HitBuilders.ScreenViewBuilder().build());
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    private void a(int i) {
        this.d = new ArrayList();
        this.d.add(new a.C0603a("Top dnia", 0));
        this.d.add(new a.C0603a("Top tygodnia", 1));
        this.d.add(new a.C0603a("Top miesiąca", 2));
        this.b = new a(getChildFragmentManager(), this.c, this.d);
        this.viewPager.setAdapter(this.b);
        this.tabLayout.setupWithViewPager(this.viewPager);
        int tabCount = this.tabLayout.getTabCount();
        for (int i2 = 0; i2 < tabCount; i2++) {
            this.tabLayout.a(i2).a(this.d.get(i2).f6024a);
        }
        this.tabLayout.a(i).e();
    }

    @Override // pl.jbzd.app.b.a
    public MainActivity.FragmentType a() {
        return MainActivity.FragmentType.TOP;
    }

    @Override // pl.jbzd.app.b.a
    public Item b() {
        return this.c;
    }

    public void e() {
        if (this.b != null) {
            this.b.a();
        }
    }
}
