package pl.jbzd.app.view.feed;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import butterknife.BindView;
import com.flurry.android.AdCreative;
import com.google.android.gms.analytics.HitBuilders;
import com.intentsoftware.addapptr.ad.NativeAd;
import io.realm.l;
import io.realm.v;
import io.realm.w;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.callback.CachedApiCallback;
import pl.jbzd.api.callback.EmptyApiCallback;
import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.MediaListResponse;
import pl.jbzd.api.response.UserMediaResponse;
import pl.jbzd.app.MyApplication;
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.model.User;
import pl.jbzd.app.ui.view.dialog.SignInDialog;
import pl.jbzd.app.view.comments.CommentsActivity;
import pl.jbzd.app.view.feed.FeedAdapter;
import pl.jbzd.app.view.feed.a.c;
import pl.jbzd.app.view.feed.holders.GalleryViewHolder;
import pl.jbzd.app.view.feed.holders.StandardViewHolder;
import pl.jbzd.app.view.feed.holders.d;
import pl.jbzd.app.view.feed.model.BaseFeedModel;
import pl.jbzd.app.view.gallery.GalleryActivity;
import pl.jbzd.app.view.main.MainActivity;
import pl.jbzd.app.view.menu.model.Item;
import pl.jbzd.core.ui.layout.PreLoadingLinearLayoutManager;
import pl.jbzd.core.ui.view.TextView;
import pl.jbzd.core.ui.view.lce.LceRecyclerView;
import retrofit2.Call;
import retrofit2.Response;
/* loaded from: classes3.dex */
public class FeedFragment extends pl.jbzd.app.view.a implements LceRecyclerView.a {
    public static final int b = pl.jbzd.core.a.a.a(16);
    public static final int c = pl.jbzd.core.a.a.a(8);
    @BindView
    TextView btnAddedNew;
    protected int d;
    private MainActivity.FragmentType h;
    private Item j;
    private FeedAdapter.a p;
    @BindView
    LceRecyclerView rvFeed;
    @BindView
    SwipeRefreshLayout swipeContainer;
    private ArrayList<pl.jbzd.app.view.feed.a.a> u;
    private FeedAdapter x;
    private LinearLayoutManager y;
    private int e = 0;
    private int f = 0;
    private boolean g = false;
    private int i = 0;
    private boolean k = false;
    private boolean l = false;
    private long m = 0;
    private long n = 0;
    private int o = -1;
    private boolean q = false;
    private boolean r = false;
    private int s = 0;
    private User t = null;
    private List<pl.jbzd.app.view.feed.a.a> v = null;
    private int w = -1;
    private pl.jbzd.core.ui.b.a z = null;
    private FeedAdapter.b A = null;
    private FeedAdapter.c B = null;

    /* loaded from: classes3.dex */
    public interface b {
        boolean a(View view, Comment comment);
    }

    public static FeedFragment a(Item item, int i) {
        FeedFragment feedFragment = new FeedFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("ARG_USER_ID", -1);
        bundle.putParcelable("ARG_MENU_ITEM", item);
        bundle.putSerializable("ARG_FRAGMENT_TYPE", MainActivity.FragmentType.TOP);
        bundle.putInt("ARG_FRAGMENT_TYPE2", i);
        feedFragment.setArguments(bundle);
        return feedFragment;
    }

    public static FeedFragment a(MainActivity.FragmentType fragmentType, Item item) {
        FeedFragment feedFragment = new FeedFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("ARG_USER_ID", -1);
        bundle.putParcelable("ARG_MENU_ITEM", item);
        bundle.putSerializable("ARG_FRAGMENT_TYPE", fragmentType);
        feedFragment.setArguments(bundle);
        return feedFragment;
    }

    public static FeedFragment a(MainActivity.FragmentType fragmentType, int i, Item item) {
        FeedFragment feedFragment = new FeedFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("ARG_USER_ID", i);
        bundle.putParcelable("ARG_MENU_ITEM", item);
        bundle.putSerializable("ARG_FRAGMENT_TYPE", fragmentType);
        feedFragment.setArguments(bundle);
        return feedFragment;
    }

    @Override // pl.jbzd.app.b.a
    public MainActivity.FragmentType a() {
        return this.h;
    }

    @Override // pl.jbzd.app.b.a
    public Item b() {
        return this.j;
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 321 && i2 == -1 && this.o >= 0 && this.o < this.u.size() && (this.u.get(this.o).f6023a instanceof Media)) {
            int realmGet$comments_counter = ((Media) this.u.get(this.o).f6023a).realmGet$comments_counter();
            int intExtra = intent.getIntExtra("ARG_COMMENTS_COUNTER", realmGet$comments_counter);
            if (realmGet$comments_counter != intExtra) {
                l.k().b();
                ((Media) this.u.get(this.o).f6023a).realmSet$comments_counter(intExtra);
                l.k().c();
                this.x.notifyItemChanged(this.o);
            }
            this.o = 0;
        }
    }

    @Override // pl.jbzd.core.a, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d = getArguments().getInt("ARG_USER_ID", -1);
        this.h = (MainActivity.FragmentType) getArguments().getSerializable("ARG_FRAGMENT_TYPE");
        this.i = getArguments().getInt("ARG_FRAGMENT_TYPE2", 0);
        this.j = (Item) getArguments().getParcelable("ARG_MENU_ITEM");
        this.m = 0L;
        this.n = 0L;
        this.o = 0;
        this.p = FeedAdapter.a.MEDIA;
        this.g = false;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.feed_fragment, viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ARG_SHOWN_POSITIONS", this.x.e());
        bundle.putInt("ARG_SHOWN_ITEMS", this.x.f());
        if (!MainActivity.FragmentType.USER_PROFILE.equals(this.h)) {
            if (this.z != null) {
                this.z.a(bundle);
            }
            try {
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                Iterator<pl.jbzd.app.view.feed.a.a> it = this.u.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().f6023a);
                }
                bundle.putParcelableArrayList("ARG_ITEMS", arrayList);
                bundle.putInt("ARG_LAST_ACTIVE_POSITION", this.w);
            } catch (Exception e) {
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.q = true;
        if (this.w >= 0 && this.w < this.u.size()) {
            this.u.get(this.w).a(false);
            this.u.get(this.w).a();
        }
        String k = k();
        if (!k.isEmpty() && d() != null) {
            d().setScreenName(k);
            d().send(new HitBuilders.ScreenViewBuilder().build());
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        this.q = false;
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @Override // pl.jbzd.app.view.a, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0049, code lost:
        if (r1.isEmpty() != false) goto L8;
     */
    @Override // pl.jbzd.core.a, android.support.v4.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onViewCreated(View view, Bundle bundle) {
        ArrayList arrayList = null;
        super.onViewCreated(view, bundle);
        this.btnAddedNew.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (FeedFragment.this.v != null && !FeedFragment.this.v.isEmpty()) {
                    FeedFragment.this.x.a(FeedFragment.this.v);
                    FeedFragment.this.v.clear();
                    FeedFragment.this.v = null;
                } else {
                    FeedFragment.this.a(true);
                }
                FeedFragment.this.rvFeed.scrollToPosition(0);
                FeedFragment.this.btnAddedNew.setVisibility(8);
                MyApplication.a((Context) FeedFragment.this.getActivity()).a();
                if (FeedFragment.this.d() != null) {
                    FeedFragment.this.d().send(new HitBuilders.EventBuilder().setCategory("Menu").setAction("nowe kwejki button").build());
                }
            }
        });
        this.y = new PreLoadingLinearLayoutManager(c(), 1000);
        a(this.y);
        j();
        this.B = new FeedAdapter.c() { // from class: pl.jbzd.app.view.feed.FeedFragment.9
            @Override // pl.jbzd.app.view.feed.FeedAdapter.c
            public void a(String str) {
                if (!FeedFragment.this.c().isFinishing()) {
                    Toast.makeText(FeedFragment.this.c(), str, 0).show();
                }
            }
        };
        this.u = new ArrayList<>();
        if (bundle != null) {
            this.w = bundle.getInt("ARG_LAST_ACTIVE_POSITION", -1);
            try {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("ARG_ITEMS");
                if (parcelableArrayList != null) {
                    try {
                    } catch (Exception e) {
                        arrayList = parcelableArrayList;
                    }
                }
                arrayList = parcelableArrayList;
            } catch (Exception e2) {
            }
            if (arrayList != null) {
                this.u = (ArrayList) pl.jbzd.app.view.feed.a.a.a(this.B, arrayList);
                this.z.b(bundle);
            }
        }
        this.e = bundle != null ? bundle.getInt("ARG_SHOWN_POSITIONS", 0) : 0;
        this.f = bundle != null ? bundle.getInt("ARG_SHOWN_ITEMS", 0) : 0;
        this.x = new FeedAdapter(c(), this.rvFeed, this.z, this.A, this.u, this.e, this.f);
        this.rvFeed.setLayoutManager(this.y);
        this.rvFeed.setAdapter(this.x);
        this.rvFeed.setOnLoadMoreListener(this);
        this.rvFeed.addOnScrollListener(new RecyclerView.l() { // from class: pl.jbzd.app.view.feed.FeedFragment.10
            @Override // android.support.v7.widget.RecyclerView.l
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            }

            @Override // android.support.v7.widget.RecyclerView.l
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                if (!FeedFragment.this.u.isEmpty() && FeedFragment.this.w >= 0 && FeedFragment.this.w < FeedFragment.this.u.size()) {
                    if (FeedFragment.this.w < FeedFragment.this.y.findFirstVisibleItemPosition() || FeedFragment.this.w > FeedFragment.this.y.findLastVisibleItemPosition()) {
                        ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(FeedFragment.this.w)).c();
                        FeedFragment.this.w = -1;
                        return;
                    }
                    ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(FeedFragment.this.w)).a();
                }
            }
        });
        new LceRecyclerView(getActivity()).setOnLoadMoreListener(new LceRecyclerView.a() { // from class: pl.jbzd.app.view.feed.FeedFragment.11
            @Override // pl.jbzd.core.ui.view.lce.LceRecyclerView.a
            public boolean a(LceRecyclerView lceRecyclerView, int i, int i2) {
                return false;
            }
        });
        this.rvFeed.addItemDecoration(new a(b, c, pl.jbzd.core.a.a.a(1)));
        if (this.u.isEmpty() && pl.jbzd.core.a.a.c(getActivity())) {
            this.x.k();
        }
        if (this.w >= 0 && this.w < this.u.size()) {
            this.u.get(this.w).a();
        }
        this.k = false;
        this.swipeContainer.setOnRefreshListener(new SwipeRefreshLayout.b() { // from class: pl.jbzd.app.view.feed.FeedFragment.12
            @Override // android.support.v4.widget.SwipeRefreshLayout.b
            public void a() {
                if (FeedFragment.this.u.isEmpty()) {
                    FeedFragment.this.x.k();
                } else {
                    FeedFragment.this.e();
                }
            }
        });
        if (!MainActivity.FragmentType.USER_PROFILE.equals(this.h) && !MainActivity.FragmentType.TOP.equals(this.h) && !MainActivity.FragmentType.RANDOM.equals(this.h)) {
            a(60000);
        }
    }

    public void a(final int i) {
        new Handler().postDelayed(new Runnable() { // from class: pl.jbzd.app.view.feed.FeedFragment.13
            @Override // java.lang.Runnable
            public void run() {
                if (!FeedFragment.this.l && FeedFragment.this.q) {
                    FeedFragment.this.l = true;
                    FeedFragment.this.a(false);
                }
                FeedFragment.this.a(i);
            }
        }, i);
    }

    public void e() {
        if (this.swipeContainer != null) {
            this.rvFeed.scrollToPosition(0);
            MyApplication.a((Context) getActivity()).a();
            if (!this.k) {
                this.swipeContainer.setRefreshing(true);
                this.k = true;
                a(true);
            }
        }
    }

    private FeedAdapter.b j() {
        if (this.A == null) {
            this.A = new FeedAdapter.b() { // from class: pl.jbzd.app.view.feed.FeedFragment.14
                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(View view, Media media, int i) {
                    if (FeedFragment.this.d() != null) {
                        FeedFragment.this.d().send(new HitBuilders.EventBuilder().setCategory("Komentarze").setAction("klik w button z feedu").build());
                    }
                    try {
                        Intent intent = new Intent(FeedFragment.this.c(), CommentsActivity.class);
                        intent.putExtra("ARG_MEDIA", media);
                        FeedFragment.this.startActivityForResult(intent, 321);
                        FeedFragment.this.c().overridePendingTransition(0, 0);
                        FeedFragment.this.o = i;
                        if (FeedFragment.this.w >= 0 && FeedFragment.this.w < FeedFragment.this.u.size()) {
                            ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(FeedFragment.this.w)).c();
                            FeedFragment.this.w = -1;
                        }
                    } catch (Exception e) {
                    }
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void b(View view, Media media, int i) {
                    if (ApiClient.getToken() != null && !ApiClient.getToken().isEmpty()) {
                        ApiClient.getApiService().media_toFavorites(ApiClient.getToken(), media.realmGet$id(), true).enqueue(new EmptyApiCallback());
                    } else if (FeedFragment.this.getActivity() != null && !FeedFragment.this.getActivity().isFinishing()) {
                        SignInDialog signInDialog = (SignInDialog) FeedFragment.this.getActivity().getFragmentManager().findFragmentByTag(SignInDialog.class.getSimpleName());
                        if (signInDialog == null) {
                            signInDialog = new SignInDialog();
                        }
                        if (!signInDialog.isAdded()) {
                            signInDialog.show(FeedFragment.this.getActivity().getFragmentManager(), SignInDialog.class.getSimpleName());
                        }
                    }
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(View view, Media media, int i, int i2) {
                    if (FeedFragment.this.d() != null) {
                        FeedFragment.this.d().send(new HitBuilders.EventBuilder().setCategory("Vote").setAction("Obrazki").setLabel(i2 == 1 ? "plus" : "minus").build());
                    }
                    ApiClient.getApiService().media_vote(media.realmGet$id(), i2 == 1 ? "up" : "down").enqueue(new EmptyApiCallback());
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(View view, Comment comment, int i) {
                    if (FeedFragment.this.d() != null) {
                        FeedFragment.this.d().send(new HitBuilders.EventBuilder().setCategory("Vote").setAction("Komentarze").setLabel(i == 1 ? "plus" : "minus").build());
                    }
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(View view, Media media, int i, boolean z) {
                    if (FeedFragment.this.d() != null) {
                        FeedFragment.this.d().send(new HitBuilders.EventBuilder().setCategory("Social").setAction("like obrazka").build());
                    }
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void c(View view, Media media, int i) {
                    FeedFragment.this.c().a(view, media);
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(View view, pl.jbzd.app.view.feed.holders.b bVar, Media media, int i) {
                    try {
                        if (FeedFragment.this.w >= 0 && FeedFragment.this.w < FeedFragment.this.u.size()) {
                            ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(FeedFragment.this.w)).c();
                            FeedFragment.this.w = -1;
                        }
                        Intent intent = new Intent(FeedFragment.this.c(), GalleryActivity.class);
                        intent.putExtra("ARG_MEDIA", media);
                        FeedFragment.this.startActivityForResult(intent, 321);
                        FeedFragment.this.c().overridePendingTransition(0, 0);
                        FeedFragment.this.o = i;
                    } catch (Exception e) {
                    }
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(View view, GalleryViewHolder galleryViewHolder, Media media, int i) {
                    try {
                        if (FeedFragment.this.w >= 0 && FeedFragment.this.w < FeedFragment.this.u.size()) {
                            ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(FeedFragment.this.w)).c();
                            FeedFragment.this.w = -1;
                        }
                        Intent intent = new Intent(FeedFragment.this.c(), GalleryActivity.class);
                        intent.putExtra("ARG_MEDIA", media);
                        FeedFragment.this.startActivityForResult(intent, 321);
                        FeedFragment.this.c().overridePendingTransition(0, 0);
                        FeedFragment.this.o = i;
                    } catch (Exception e) {
                    }
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(View view, pl.jbzd.app.view.feed.holders.a aVar, Media media, int i) {
                    try {
                        Intent intent = new Intent(FeedFragment.this.c(), GalleryActivity.class);
                        intent.putExtra("ARG_MEDIA", media);
                        FeedFragment.this.startActivityForResult(intent, 321);
                        FeedFragment.this.c().overridePendingTransition(0, 0);
                        FeedFragment.this.o = i;
                        new Handler().postDelayed(new Runnable() { // from class: pl.jbzd.app.view.feed.FeedFragment.14.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (FeedFragment.this.w >= 0 && FeedFragment.this.w < FeedFragment.this.u.size()) {
                                    if (FeedFragment.this.u.get(FeedFragment.this.w) instanceof c) {
                                        ((c) FeedFragment.this.u.get(FeedFragment.this.w)).d();
                                    } else {
                                        ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(FeedFragment.this.w)).c();
                                    }
                                    FeedFragment.this.w = -1;
                                }
                            }
                        }, 1000L);
                    } catch (Exception e) {
                    }
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(View view, d dVar, Media media, int i) {
                    try {
                        Intent intent = new Intent(FeedFragment.this.c(), GalleryActivity.class);
                        intent.putExtra("ARG_MEDIA", media);
                        intent.putExtra("ARG_POSITION", MyApplication.a((Context) FeedFragment.this.getActivity()).b());
                        FeedFragment.this.startActivityForResult(intent, 321);
                        FeedFragment.this.c().overridePendingTransition(0, 0);
                        FeedFragment.this.o = i;
                        new Handler().postDelayed(new Runnable() { // from class: pl.jbzd.app.view.feed.FeedFragment.14.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (FeedFragment.this.w >= 0 && FeedFragment.this.w < FeedFragment.this.u.size()) {
                                    if (FeedFragment.this.u.get(FeedFragment.this.w) instanceof c) {
                                        ((c) FeedFragment.this.u.get(FeedFragment.this.w)).d();
                                    } else {
                                        ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(FeedFragment.this.w)).c();
                                    }
                                    FeedFragment.this.w = -1;
                                }
                            }
                        }, 1000L);
                    } catch (Exception e) {
                    }
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(View view, StandardViewHolder<? extends pl.jbzd.app.view.feed.a.a> standardViewHolder, c cVar, Media media, int i) {
                    if (FeedFragment.this.w >= 0 && FeedFragment.this.w < FeedFragment.this.u.size()) {
                        ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(FeedFragment.this.w)).c();
                        FeedFragment.this.w = -1;
                    }
                    FeedFragment.this.w = i;
                    if (FeedFragment.this.w >= 0 && FeedFragment.this.w < FeedFragment.this.u.size()) {
                        ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(FeedFragment.this.w)).b();
                    }
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public boolean a(View view, Comment comment) {
                    return (FeedFragment.this.getActivity() instanceof b) && ((b) FeedFragment.this.getActivity()).a(view, comment);
                }

                @Override // pl.jbzd.app.view.feed.FeedAdapter.b
                public void a(int i, int i2, int i3) {
                    FeedFragment.this.i();
                }
            };
        }
        return this.A;
    }

    private pl.jbzd.core.ui.b.a a(LinearLayoutManager linearLayoutManager) {
        if (this.z == null) {
            this.z = new pl.jbzd.core.ui.b.a(c(), linearLayoutManager) { // from class: pl.jbzd.app.view.feed.FeedFragment.15
                @Override // pl.jbzd.core.ui.b.a
                public void a(int i, int i2) {
                    Media media;
                    long time = new Date().getTime();
                    int size = FeedFragment.this.u.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        } else if (!(((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(size)).f6023a instanceof Media) || (media = (Media) ((pl.jbzd.app.view.feed.a.a) FeedFragment.this.u.get(size)).f6023a) == null || media.realmGet$date() == null) {
                            size--;
                        } else {
                            long time2 = media.realmGet$date().getTime() - 1000;
                            if (time2 >= FeedFragment.this.m && FeedFragment.this.m > 0) {
                                time2 = FeedFragment.this.r ? (FeedFragment.this.m - 3600000) - 1000 : FeedFragment.this.m - 1000;
                            }
                            FeedFragment.this.m = time2;
                            time = time2;
                        }
                    }
                    FeedFragment.this.a("down", time, i, true);
                }

                @Override // pl.jbzd.core.ui.b.a
                public boolean b(int i, int i2) {
                    return (FeedFragment.this.t == null || !FeedFragment.this.x.a()) ? (!MainActivity.FragmentType.TOP.equals(FeedFragment.this.h) || i <= 1) && (!MainActivity.FragmentType.FAVORITE.equals(FeedFragment.this.h) || !FeedFragment.this.g) : FeedAdapter.a.MEDIA.equals(FeedFragment.this.p) ? FeedFragment.this.f() < FeedFragment.this.t.realmGet$media_count() : FeedFragment.this.g() < FeedFragment.this.t.realmGet$comments_count();
                }

                @Override // pl.jbzd.core.ui.b.a
                public int a() {
                    return 7;
                }
            };
        }
        return this.z;
    }

    @Override // pl.jbzd.core.ui.view.lce.LceRecyclerView.a
    public boolean a(LceRecyclerView lceRecyclerView, int i, int i2) {
        boolean z;
        Media media;
        boolean z2 = false;
        if (this.t != null && this.x.a()) {
            if (FeedAdapter.a.MEDIA.equals(this.p)) {
                if (f() < this.t.realmGet$media_count()) {
                    z2 = true;
                }
                z = z2;
            } else {
                if (g() < this.t.realmGet$comments_count()) {
                    z2 = true;
                }
                z = z2;
            }
        } else {
            if ((!MainActivity.FragmentType.TOP.equals(this.h) || i <= 1) && (!MainActivity.FragmentType.FAVORITE.equals(this.h) || !this.g)) {
                z2 = true;
            }
            z = z2;
        }
        if (z) {
            long time = new Date().getTime();
            int size = this.u.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                } else if (!(this.u.get(size).f6023a instanceof Media) || (media = (Media) this.u.get(size).f6023a) == null || media.realmGet$date() == null) {
                    size--;
                } else {
                    long time2 = media.realmGet$date().getTime() - 1000;
                    if (time2 >= this.m && this.m > 0) {
                        time2 = this.r ? (this.m - 3600000) - 1000 : this.m - 1000;
                    }
                    this.m = time2;
                    time = time2;
                }
            }
            a("down", time, i, true);
        }
        return z;
    }

    public int f() {
        int idByName;
        int i = 0;
        Iterator<pl.jbzd.app.view.feed.a.a> it = this.u.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                pl.jbzd.app.view.feed.a.a next = it.next();
                if (next.f6023a != null && (next.f6023a instanceof Media) && ((idByName = FeedViewType.getIdByName(((Media) next.f6023a).realmGet$type())) == FeedViewType.PICTURE.id || idByName == FeedViewType.GIF.id || idByName == FeedViewType.VIDEO.id || idByName == FeedViewType.GALLERY.id)) {
                    i2++;
                }
                i = i2;
            } else {
                return i2;
            }
        }
    }

    public int g() {
        int i = 0;
        Iterator<pl.jbzd.app.view.feed.a.a> it = this.u.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                pl.jbzd.app.view.feed.a.a next = it.next();
                if (next.f6023a != null && (next.f6023a instanceof Comment)) {
                    i2++;
                }
                i = i2;
            } else {
                return i2;
            }
        }
    }

    public void h() {
        this.q = false;
        MyApplication.a((Context) getActivity()).a();
        if (this.u != null && !this.u.isEmpty() && this.w >= 0 && this.w < this.u.size()) {
            this.u.get(this.w).c();
            this.w = -1;
        }
    }

    public void a(boolean z) {
        Media media;
        long time = new Date().getTime();
        int i = 0;
        while (true) {
            if (i >= this.u.size()) {
                break;
            } else if (!(this.u.get(i).f6023a instanceof Media) || (media = (Media) this.u.get(i).f6023a) == null || media.realmGet$date() == null) {
                i++;
            } else {
                long time2 = media.realmGet$date().getTime() + 1000;
                if (time2 >= this.n && this.n > 0) {
                    time2 = this.n + 1000;
                }
                this.n = time2;
                time = time2;
            }
        }
        this.g = false;
        a("up", time, 0, z);
    }

    public void i() {
        this.q = true;
        String k = k();
        if (!k.isEmpty() && d() != null) {
            d().setScreenName(k);
            d().send(new HitBuilders.ScreenViewBuilder().build());
        }
    }

    protected void a(String str, long j, int i, boolean z) {
        long j2 = j / 1000;
        if (MainActivity.FragmentType.HOME.equals(this.h)) {
            ApiClient.getApiService().media_listing(NativeAd.MAIN_IMAGE_ASSET, str, j2).enqueue(a(str, NativeAd.MAIN_IMAGE_ASSET, i, z));
        } else if (MainActivity.FragmentType.WAITING.equals(this.h)) {
            ApiClient.getApiService().media_listing("queue", str, j2).enqueue(a(str, "queue", i, z));
        } else if (MainActivity.FragmentType.FAVORITE.equals(this.h)) {
            ApiClient.getApiService().media_favorites(ApiClient.getToken(), str, j2).enqueue(a(str, "favorite", i, z));
        } else if (MainActivity.FragmentType.TOP.equals(this.h)) {
            if (this.i == 1) {
                ApiClient.getApiService().media_top("week", 100).enqueue(a(str, AdCreative.kAlignmentTop, i, z));
            } else if (this.i == 2) {
                ApiClient.getApiService().media_top("month", 100).enqueue(a(str, AdCreative.kAlignmentTop, i, z));
            } else {
                ApiClient.getApiService().media_top("day", 100).enqueue(a(str, AdCreative.kAlignmentTop, i, z));
            }
        } else if (MainActivity.FragmentType.RANDOM.equals(this.h)) {
            ApiClient.getApiService().media_random().enqueue(a(str, "random", i, z));
        } else if (MainActivity.FragmentType.USER_PROFILE.equals(this.h)) {
            if ("down".equals(str)) {
                if (this.x.a()) {
                    if (FeedAdapter.a.MEDIA.equals(this.p)) {
                        ApiClient.getApiService().media_listing_user("user", this.d, str, j2).enqueue(a(str, "user", 1, z));
                        return;
                    } else if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
                        ApiClient.getApiService().user_profile("" + this.d, i).enqueue(b(str, j2, i, z));
                        return;
                    } else {
                        ApiClient.getApiService().user_profile_with_token(ApiClient.getToken(), "" + this.d, i).enqueue(b(str, j2, i, z));
                        return;
                    }
                } else if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
                    ApiClient.getApiService().user_profile("" + this.d, i).enqueue(b(str, j2, 1, z));
                    return;
                } else {
                    ApiClient.getApiService().user_profile_with_token(ApiClient.getToken(), "" + this.d, i).enqueue(b(str, j2, 1, z));
                    return;
                }
            }
            if (!this.u.isEmpty()) {
                if (this.t != null && this.x.a()) {
                    int size = this.u.size();
                    if (size > 1) {
                        this.u.subList(1, size).clear();
                        this.x.notifyItemRangeRemoved(1, size);
                    }
                } else {
                    this.u.clear();
                    this.x.notifyDataSetChanged();
                }
            }
            this.rvFeed.a();
            if (this.t == null || !this.x.a()) {
                ApiClient.getApiService().user_profile("" + this.d, i).enqueue(b(str, j2, 1, z));
            } else if ((FeedAdapter.a.MEDIA.equals(this.p) && f() < this.t.realmGet$media_count()) || (FeedAdapter.a.COMMENTS.equals(this.p) && g() < this.t.realmGet$comments_count())) {
                this.x.k();
            } else {
                Media media = new Media();
                media.realmSet$type(FeedViewType.EMPTY.name);
                media.realmSet$title(FeedAdapter.a.MEDIA.equals(this.p) ? "Brak dzidek :(" : "Brak komentarzy :(");
                this.u.add(new pl.jbzd.app.view.feed.a.a(media));
                this.x.l();
                this.x.notifyDataSetChanged();
                if (this.swipeContainer != null) {
                    this.swipeContainer.setRefreshing(false);
                    this.k = false;
                }
                this.l = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(l lVar, final List<Media> list, final boolean z, final int i, final boolean z2, final boolean z3) {
        final int size = list != null ? list.size() : 0;
        if (size > 0) {
            lVar.a(new l.a() { // from class: pl.jbzd.app.view.feed.FeedFragment.16
                @Override // io.realm.l.a
                public void a(l lVar2) {
                    v a2 = lVar2.a(Media.class);
                    a2.a("id", Integer.valueOf(((Media) list.get(0)).realmGet$id()));
                    for (int i2 = 1; i2 < size; i2++) {
                        a2.a().a("id", Integer.valueOf(((Media) list.get(i2)).realmGet$id()));
                    }
                    w b2 = a2.b();
                    for (Media media : list) {
                        if (i == 1) {
                            media.realmSet$in_queue(true);
                        } else if (i == -1) {
                            media.realmSet$in_queue(false);
                        }
                        Iterator it = b2.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                Media media2 = (Media) it.next();
                                if (media2.realmGet$id() == media.realmGet$id()) {
                                    if (media2.realmGet$voted() > 0 && media.realmGet$vote_score() > 0) {
                                        media.realmSet$voted(1);
                                    }
                                    if (media2.realmGet$is_favorite()) {
                                        media.realmSet$is_favorite(true);
                                    }
                                }
                            }
                        }
                    }
                    lVar2.a(list);
                }
            }, new l.a.b() { // from class: pl.jbzd.app.view.feed.FeedFragment.2
                @Override // io.realm.l.a.b
                public void a() {
                    if (!z || !z2) {
                        FeedFragment.this.a(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, list), z, z3);
                    } else {
                        FeedFragment.this.a(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, list));
                    }
                }
            }, new l.a.InterfaceC0596a() { // from class: pl.jbzd.app.view.feed.FeedFragment.3
                @Override // io.realm.l.a.InterfaceC0596a
                public void a(Throwable th) {
                    FeedFragment.this.a(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, list), z, z3);
                }
            });
        } else {
            a((List<pl.jbzd.app.view.feed.a.a>) null, z, z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(l lVar, final List<Comment> list, final boolean z, final boolean z2) {
        final int size = list != null ? list.size() : 0;
        if (size > 0) {
            lVar.a(new l.a() { // from class: pl.jbzd.app.view.feed.FeedFragment.4
                @Override // io.realm.l.a
                public void a(l lVar2) {
                    v a2 = lVar2.a(Comment.class);
                    a2.a("id", Integer.valueOf(((Comment) list.get(0)).realmGet$id()));
                    for (int i = 1; i < size; i++) {
                        a2.a().a("id", Integer.valueOf(((Comment) list.get(i)).realmGet$id()));
                    }
                    w b2 = a2.b();
                    for (Comment comment : list) {
                        Iterator it = b2.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                Comment comment2 = (Comment) it.next();
                                if (comment.realmGet$id() == comment2.realmGet$id()) {
                                    comment.realmSet$media_id(comment2.realmGet$media_id());
                                    if (comment2.realmGet$voted() > 0 && comment.realmGet$plus() > 0) {
                                        comment.realmSet$voted(1);
                                    } else if (comment2.realmGet$voted() < 0 && comment.realmGet$minus() > 0) {
                                        comment.realmSet$voted(-1);
                                    }
                                }
                            }
                        }
                    }
                    lVar2.a(list);
                }
            }, new l.a.b() { // from class: pl.jbzd.app.view.feed.FeedFragment.5
                @Override // io.realm.l.a.b
                public void a() {
                    FeedFragment.this.a(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, list), z, z2);
                }
            }, new l.a.InterfaceC0596a() { // from class: pl.jbzd.app.view.feed.FeedFragment.6
                @Override // io.realm.l.a.InterfaceC0596a
                public void a(Throwable th) {
                    FeedFragment.this.a(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, list), z, z2);
                }
            });
        } else {
            a((List<pl.jbzd.app.view.feed.a.a>) null, z, z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<pl.jbzd.app.view.feed.a.a> list, boolean z, boolean z2) {
        boolean z3;
        boolean z4 = true;
        this.r = true;
        if (list == null || list.isEmpty()) {
            list = null;
        } else {
            this.r = false;
            if (this.u == null || this.u.isEmpty()) {
                if (MainActivity.FragmentType.USER_PROFILE.equals(this.h)) {
                    ArrayList arrayList = new ArrayList();
                    for (pl.jbzd.app.view.feed.a.a aVar : list) {
                        if ((aVar.f6023a instanceof Media) && FeedViewType.AD.id != FeedViewType.getIdByName(((Media) aVar.f6023a).realmGet$type())) {
                            arrayList.add(aVar);
                        }
                    }
                    list = arrayList;
                }
            } else {
                ArrayList arrayList2 = new ArrayList();
                if (((list.get(0).f6023a instanceof Media) && !FeedAdapter.a.MEDIA.equals(this.x.b())) || ((list.get(0).f6023a instanceof Comment) && !FeedAdapter.a.COMMENTS.equals(this.x.b()))) {
                    if (this.swipeContainer != null) {
                        this.swipeContainer.setRefreshing(false);
                        this.k = false;
                    }
                    this.l = false;
                    this.x.m();
                    a(true);
                    return;
                }
                for (pl.jbzd.app.view.feed.a.a aVar2 : list) {
                    if (aVar2.f6023a instanceof Media) {
                        Media media = (Media) aVar2.f6023a;
                        if (media.realmGet$id() > 0) {
                            Iterator<pl.jbzd.app.view.feed.a.a> it = this.u.iterator();
                            while (it.hasNext()) {
                                pl.jbzd.app.view.feed.a.a next = it.next();
                                if ((next.f6023a instanceof Media) && ((Media) next.f6023a).realmGet$id() == media.realmGet$id()) {
                                    z3 = false;
                                    break;
                                }
                            }
                            z3 = true;
                        } else if (!MainActivity.FragmentType.USER_PROFILE.equals(this.h) || FeedViewType.AD.id != FeedViewType.getIdByName(media.realmGet$type())) {
                            pl.jbzd.app.view.feed.a.a b2 = this.x.b(this.x.d() - 1);
                            int size = arrayList2.size() - 1;
                            if (size >= 0) {
                                BaseFeedModel baseFeedModel = arrayList2.get(size).f6023a;
                                if (baseFeedModel != null && (baseFeedModel instanceof Media) && FeedViewType.AD.name.equals(((Media) baseFeedModel).realmGet$type())) {
                                    z3 = false;
                                }
                                z3 = true;
                            } else if (z) {
                                if (FeedViewType.AD.id == FeedViewType.getIdByName(media.realmGet$type())) {
                                    z3 = false;
                                }
                                z3 = true;
                            } else {
                                if (FeedViewType.AD.id == FeedViewType.getIdByName(media.realmGet$type()) && b2 != null && (b2.f6023a instanceof Media) && FeedViewType.AD.name.equals(((Media) b2.f6023a).realmGet$type())) {
                                    z3 = false;
                                }
                                z3 = true;
                            }
                        } else {
                            z3 = false;
                        }
                    } else {
                        Comment comment = (Comment) aVar2.f6023a;
                        Iterator<pl.jbzd.app.view.feed.a.a> it2 = this.u.iterator();
                        while (it2.hasNext()) {
                            pl.jbzd.app.view.feed.a.a next2 = it2.next();
                            if ((next2.f6023a instanceof Comment) && ((Comment) next2.f6023a).realmGet$id() == comment.realmGet$id()) {
                                this.r = true;
                                z3 = false;
                                break;
                            }
                        }
                        z3 = true;
                    }
                    if (z3) {
                        arrayList2.add(aVar2);
                    }
                }
                list = arrayList2;
            }
        }
        if (z) {
            if (list != null && list.size() > 0) {
                if (z2) {
                    int findFirstVisibleItemPosition = this.y.findFirstVisibleItemPosition();
                    this.x.a(list);
                    if (findFirstVisibleItemPosition == 0 && this.rvFeed != null) {
                        MyApplication.a((Context) getActivity()).a();
                        this.rvFeed.smoothScrollToPosition(0);
                    }
                } else {
                    this.v = list;
                    if (this.btnAddedNew != null) {
                        this.btnAddedNew.setVisibility(0);
                    }
                }
            }
        } else {
            if ((list != null && !list.isEmpty()) || this.r || this.s >= 25) {
                z4 = false;
            }
            this.r = z4;
            this.x.b(list);
            if (this.r) {
                this.s++;
                this.x.k();
            } else {
                this.s = 0;
            }
        }
        if (this.swipeContainer != null) {
            this.swipeContainer.setRefreshing(false);
            this.k = false;
        }
        this.l = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<pl.jbzd.app.view.feed.a.a> list) {
        this.u.clear();
        this.x.b(list);
        if (this.swipeContainer != null) {
            this.swipeContainer.setRefreshing(false);
            this.k = false;
        }
    }

    protected CachedApiCallback<MediaListResponse> a(final String str, final String str2, final int i, final boolean z) {
        return new CachedApiCallback<MediaListResponse>() { // from class: pl.jbzd.app.view.feed.FeedFragment.7
            @Override // pl.jbzd.api.callback.SimpleApiCallback
            /* renamed from: a */
            public void onSuccess(MediaListResponse mediaListResponse) {
                int i2;
                if (mediaListResponse == null || mediaListResponse.response == null) {
                    FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, true, z);
                    FeedFragment.this.x.k();
                } else if (!mediaListResponse.response.isEmpty()) {
                    if ("queue".equals(str2)) {
                        i2 = 1;
                    } else {
                        i2 = NativeAd.MAIN_IMAGE_ASSET.equals(str2) ? -1 : 0;
                    }
                    if ("up".equals(str)) {
                        FeedFragment.this.a(l.k(), mediaListResponse.response, true, i2, "random".equals(str2), z);
                    } else {
                        FeedFragment.this.a(l.k(), mediaListResponse.response, false, i2, "random".equals(str2), z);
                    }
                } else if ("up".equals(str)) {
                    FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, true, z);
                } else if (FeedFragment.this.t == null || !FeedFragment.this.x.a()) {
                    if (MainActivity.FragmentType.FAVORITE.equals(FeedFragment.this.h)) {
                        FeedFragment.this.g = true;
                        FeedFragment.this.x.l();
                        FeedFragment.this.x.notifyDataSetChanged();
                        return;
                    }
                    FeedFragment.this.x.k();
                } else {
                    Media media = new Media();
                    media.realmSet$type(FeedViewType.EMPTY.name);
                    media.realmSet$title("Brak dzidek :(");
                    FeedFragment.this.u.add(new pl.jbzd.app.view.feed.a.a(media));
                    FeedFragment.this.x.l();
                    FeedFragment.this.x.notifyDataSetChanged();
                }
            }

            @Override // pl.jbzd.api.callback.SimpleApiCallback
            public void onError(ApiException apiException) {
                if ("up".equals(str)) {
                    FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, true, z);
                    return;
                }
                FeedFragment.this.x.m();
                FeedFragment.this.x.k();
            }

            @Override // pl.jbzd.api.callback.CachedApiCallback, pl.jbzd.api.callback.SimpleApiCallback
            public void loadFromCache(Call<MediaListResponse> call, Response<MediaListResponse> response) {
                if ("up".equals(str)) {
                    FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, true, z);
                } else if (NativeAd.MAIN_IMAGE_ASSET.equals(str2)) {
                    List<Media> a2 = pl.jbzd.app.a.b.a(l.k(), i, 10);
                    FeedFragment.this.x.b(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, a2));
                    if (a2 == null || a2.isEmpty()) {
                        FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, false, false);
                    }
                } else if ("queue".equals(str2)) {
                    List<Media> b2 = pl.jbzd.app.a.b.b(l.k(), i, 10);
                    FeedFragment.this.x.b(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, b2));
                    if (b2 == null || b2.isEmpty()) {
                        FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, false, false);
                    }
                } else if ("favorite".equals(str2)) {
                    List<Media> c2 = pl.jbzd.app.a.b.c(l.k(), i, 10);
                    FeedFragment.this.x.b(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, c2));
                    if (c2 == null || c2.isEmpty()) {
                        FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, false, false);
                    }
                } else if (AdCreative.kAlignmentTop.equals(str2)) {
                    List<Media> d = pl.jbzd.app.a.b.d(l.k(), i, 10);
                    FeedFragment.this.x.b(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, d));
                    if (d == null || d.isEmpty()) {
                        FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, false, false);
                    }
                } else if ("user".equals(str2)) {
                    List<Media> a3 = pl.jbzd.app.a.b.a(l.k(), FeedFragment.this.d, i, 10);
                    FeedFragment.this.x.b(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, a3));
                    if (a3 == null || a3.isEmpty()) {
                        FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, false, false);
                    }
                } else {
                    List<Media> e = pl.jbzd.app.a.b.e(l.k(), i, 10);
                    FeedFragment.this.x.b(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, e));
                    if (e == null || e.isEmpty()) {
                        FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, false, false);
                    }
                }
            }
        };
    }

    protected CachedApiCallback<UserMediaResponse> b(final String str, final long j, final int i, final boolean z) {
        return new CachedApiCallback<UserMediaResponse>() { // from class: pl.jbzd.app.view.feed.FeedFragment.8
            @Override // pl.jbzd.api.callback.SimpleApiCallback
            /* renamed from: a */
            public void onSuccess(UserMediaResponse userMediaResponse) {
                if (userMediaResponse != null && userMediaResponse.response != null) {
                    if (userMediaResponse.response.user != null && (FeedFragment.this.t == null || !FeedFragment.this.x.a())) {
                        l.k().b();
                        l.k().b((l) userMediaResponse.response.user);
                        l.k().c();
                        FeedFragment.this.t = userMediaResponse.response.user;
                        FeedFragment.this.x.a(userMediaResponse.response.user);
                    }
                    if (FeedAdapter.a.MEDIA.equals(FeedFragment.this.p)) {
                        if (userMediaResponse.response.media != null && !userMediaResponse.response.media.isEmpty()) {
                            ApiClient.getApiService().media_listing_user("user", FeedFragment.this.d, "down", j).enqueue(FeedFragment.this.a("down", "user", 1, z));
                            return;
                        }
                        Media media = new Media();
                        media.realmSet$type(FeedViewType.EMPTY.name);
                        media.realmSet$title("Brak dzidek");
                        FeedFragment.this.u.add(new pl.jbzd.app.view.feed.a.a(media));
                        FeedFragment.this.x.l();
                        FeedFragment.this.x.notifyDataSetChanged();
                        return;
                    } else if (userMediaResponse.response.comments != null && !userMediaResponse.response.comments.isEmpty()) {
                        if ("up".equals(str)) {
                            FeedFragment.this.a(l.k(), userMediaResponse.response.comments, true, z);
                        } else {
                            FeedFragment.this.a(l.k(), userMediaResponse.response.comments, false, z);
                        }
                        FeedFragment.this.x.b(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, userMediaResponse.response.comments));
                        return;
                    } else if (i != 1) {
                        FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, true, z);
                        return;
                    } else {
                        Media media2 = new Media();
                        media2.realmSet$type(FeedViewType.EMPTY.name);
                        media2.realmSet$title("Brak komentarzy");
                        FeedFragment.this.u.add(new pl.jbzd.app.view.feed.a.a(media2));
                        FeedFragment.this.x.l();
                        FeedFragment.this.x.notifyDataSetChanged();
                        return;
                    }
                }
                Media media3 = new Media();
                media3.realmSet$type(FeedViewType.EMPTY.name);
                media3.realmSet$title("Brak dzidek");
                FeedFragment.this.u.add(new pl.jbzd.app.view.feed.a.a(media3));
                FeedFragment.this.x.l();
                FeedFragment.this.x.notifyDataSetChanged();
            }

            @Override // pl.jbzd.api.callback.SimpleApiCallback
            public void onError(ApiException apiException) {
                if ("up".equals(str)) {
                    FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, true, z);
                    return;
                }
                FeedFragment.this.x.m();
                FeedFragment.this.x.k();
            }

            @Override // pl.jbzd.api.callback.CachedApiCallback, pl.jbzd.api.callback.SimpleApiCallback
            public void loadFromCache(Call<UserMediaResponse> call, Response<UserMediaResponse> response) {
                FeedFragment.this.x.a(pl.jbzd.app.a.b.a(l.k(), FeedFragment.this.d));
                if ("up".equals(str)) {
                    FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, true, z);
                } else if (FeedAdapter.a.COMMENTS.equals(FeedFragment.this.p)) {
                    FeedFragment.this.x.b(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, pl.jbzd.app.a.b.a(l.k(), i, 10)));
                } else {
                    List<Comment> a2 = pl.jbzd.app.a.a.a(l.k(), FeedFragment.this.d);
                    if (a2 != null && !a2.isEmpty()) {
                        FeedFragment.this.x.b(pl.jbzd.app.view.feed.a.a.a(FeedFragment.this.B, a2));
                    } else if (i != 1) {
                        FeedFragment.this.a((List<pl.jbzd.app.view.feed.a.a>) null, true, z);
                    } else {
                        Media media = new Media();
                        media.realmSet$type(FeedViewType.EMPTY.name);
                        media.realmSet$title("Brak komentarzy");
                        FeedFragment.this.u.add(new pl.jbzd.app.view.feed.a.a(media));
                        FeedFragment.this.x.l();
                        FeedFragment.this.x.notifyDataSetChanged();
                    }
                }
            }
        };
    }

    private String k() {
        if (MainActivity.FragmentType.HOME.equals(this.h)) {
            return "Glowna";
        }
        if (MainActivity.FragmentType.RANDOM.equals(this.h)) {
            return "Losowe";
        }
        if (MainActivity.FragmentType.WAITING.equals(this.h)) {
            return "Oczekujace";
        }
        if (MainActivity.FragmentType.FAVORITE.equals(this.h)) {
            return "Ulubione";
        }
        if (MainActivity.FragmentType.TOP.equals(this.h)) {
            return "";
        }
        if (MainActivity.FragmentType.CAMERA.equals(this.h)) {
            return "Aparat";
        }
        if (MainActivity.FragmentType.GALLERY.equals(this.h)) {
            return "Galeria";
        }
        if (MainActivity.FragmentType.SETTINGS.equals(this.h)) {
            return "Ustawienia";
        }
        if (MainActivity.FragmentType.SIGN_IN.equals(this.h)) {
            return "Logowanie";
        }
        if (MainActivity.FragmentType.USER_PROFILE.equals(this.h)) {
            return "Profil uzytkownika";
        }
        return "";
    }

    /* loaded from: classes3.dex */
    private class a extends RecyclerView.g {
        private final int b;
        private final int c;
        private final int d;

        a(int i, int i2, int i3) {
            this.b = i;
            this.c = i2;
            this.d = i3;
        }

        @Override // android.support.v7.widget.RecyclerView.g
        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.r rVar) {
            if (!MainActivity.FragmentType.USER_PROFILE.equals(FeedFragment.this.h) || recyclerView.getChildAdapterPosition(view) > 0) {
                if (FeedAdapter.a.MEDIA.equals(FeedFragment.this.p)) {
                    rect.top = this.b;
                    rect.left = this.c;
                    rect.right = this.c;
                    return;
                }
                rect.top = this.d;
                rect.left = 0;
                rect.right = 0;
            }
        }
    }
}
