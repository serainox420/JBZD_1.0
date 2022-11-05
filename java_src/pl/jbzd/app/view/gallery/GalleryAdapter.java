package pl.jbzd.app.view.gallery;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import butterknife.BindView;
import butterknife.Unbinder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.view.gallery.GalleryPicturesAdapter;
import pl.jbzd.core.ui.adapter.a;
import pl.jbzd.core.ui.indicator.LinePageIndicator;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class GalleryAdapter extends pl.jbzd.core.ui.adapter.a<pl.jbzd.app.view.gallery.a> {

    /* renamed from: a  reason: collision with root package name */
    public final GalleryPicturesAdapter f6033a;
    private final b e;
    private final GalleryMainViewPager f;
    private final GalleryPicturesAdapter.a g;
    private final Bundle h;
    private final Media i;
    private final int j;
    private pl.jbzd.app.view.gallery.a k;
    private boolean l;
    private int m;

    /* loaded from: classes3.dex */
    public class PicturesViewHolder_ViewBinding implements Unbinder {
        private PicturesViewHolder b;

        public PicturesViewHolder_ViewBinding(PicturesViewHolder picturesViewHolder, View view) {
            this.b = picturesViewHolder;
            picturesViewHolder.imgToolbarIcon = (ImageView) butterknife.internal.b.b(view, R.id.imgToolbarIcon, "field 'imgToolbarIcon'", ImageView.class);
            picturesViewHolder.txtToolbarTitle = (TextView) butterknife.internal.b.b(view, R.id.txtToolbarTitle, "field 'txtToolbarTitle'", TextView.class);
            picturesViewHolder.txtComments = (TextView) butterknife.internal.b.b(view, R.id.txtComments, "field 'txtComments'", TextView.class);
            picturesViewHolder.pageIndicator = (LinePageIndicator) butterknife.internal.b.b(view, R.id.pageIndicator, "field 'pageIndicator'", LinePageIndicator.class);
            picturesViewHolder.viewPagerPictures = (GalleryViewPager) butterknife.internal.b.b(view, R.id.viewPagerPictures, "field 'viewPagerPictures'", GalleryViewPager.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            PicturesViewHolder picturesViewHolder = this.b;
            if (picturesViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            picturesViewHolder.imgToolbarIcon = null;
            picturesViewHolder.txtToolbarTitle = null;
            picturesViewHolder.txtComments = null;
            picturesViewHolder.pageIndicator = null;
            picturesViewHolder.viewPagerPictures = null;
        }
    }

    /* loaded from: classes3.dex */
    public class PicturesViewHolder extends a.AbstractC0604a<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GalleryAdapter f6034a;
        @BindView
        ImageView imgToolbarIcon;
        @BindView
        LinePageIndicator pageIndicator;
        @BindView
        TextView txtComments;
        @BindView
        TextView txtToolbarTitle;
        @BindView
        GalleryViewPager viewPagerPictures;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        @SuppressLint({"SetTextI18n"})
        public PicturesViewHolder(final GalleryAdapter galleryAdapter, View view) {
            super(view);
            int i = 0;
            this.f6034a = galleryAdapter;
            galleryAdapter.f.setInnerViewPager(this.viewPagerPictures);
            this.txtToolbarTitle.setAllCaps(true);
            this.txtToolbarTitle.setFont(TextView.Font.BitterBold);
            this.txtToolbarTitle.setText(galleryAdapter.i.realmGet$title());
            this.txtComments.setText("" + galleryAdapter.i.realmGet$comments_counter());
            this.viewPagerPictures.setOffscreenPageLimit(1);
            this.viewPagerPictures.setAdapter(galleryAdapter.f6033a);
            this.viewPagerPictures.setPageTransformer(true, galleryAdapter.e);
            if (galleryAdapter.f6033a.getCount() > 1) {
                this.pageIndicator.setViewPager(this.viewPagerPictures);
            } else {
                this.pageIndicator.setVisibility(8);
            }
            galleryAdapter.m = galleryAdapter.h != null ? galleryAdapter.h.getInt("ARG_SHOWN_PAGES", 0) : 0;
            this.viewPagerPictures.addOnPageChangeListener(new ViewPager.e() { // from class: pl.jbzd.app.view.gallery.GalleryAdapter.PicturesViewHolder.1
                private int c = 0;
                private int d = 0;

                @Override // android.support.v4.view.ViewPager.e
                public void a(int i2, float f, int i3) {
                    int i4 = this.c;
                    if (i2 == this.d) {
                        if (f > BitmapDescriptorFactory.HUE_RED) {
                            this.c = i2 + 1;
                        } else {
                            this.c = i2;
                        }
                    } else {
                        this.c = i2;
                    }
                    if (this.c != i4) {
                        PicturesViewHolder.this.f6034a.e.b(this.c);
                    }
                }

                @Override // android.support.v4.view.ViewPager.e
                public void b(int i2) {
                    if (PicturesViewHolder.this.f6034a.k != null) {
                        PicturesViewHolder.this.f6034a.k.b();
                        PicturesViewHolder.this.f6034a.k = null;
                    }
                    if (i2 < PicturesViewHolder.this.f6034a.d.size() && PicturesViewHolder.this.f6034a.d.get(i2) != null && ((pl.jbzd.app.view.gallery.a) PicturesViewHolder.this.f6034a.d.get(i2)).g != null && (((pl.jbzd.app.view.gallery.a) PicturesViewHolder.this.f6034a.d.get(i2)).g instanceof GalleryPicturesAdapter.VideoGifViewHolder)) {
                        PicturesViewHolder.this.f6034a.k = (pl.jbzd.app.view.gallery.a) PicturesViewHolder.this.f6034a.d.get(i2);
                        PicturesViewHolder.this.f6034a.k.a();
                    }
                    PicturesViewHolder.this.f6034a.e.a(i2);
                    this.d = i2;
                    this.c = i2;
                    if (PicturesViewHolder.this.f6034a.m < i2) {
                        PicturesViewHolder.this.f6034a.m = i2;
                        if (PicturesViewHolder.this.f6034a.g != null) {
                            PicturesViewHolder.this.f6034a.g.a(i2);
                        }
                    }
                }

                @Override // android.support.v4.view.ViewPager.e
                public void a(int i2) {
                    if (i2 != 0) {
                        if (PicturesViewHolder.this.f6034a.l) {
                            if (PicturesViewHolder.this.f6034a.f6033a.b(PicturesViewHolder.this.viewPagerPictures.getCurrentItem() - 1) != null) {
                                ((GalleryPicturesAdapter.b) PicturesViewHolder.this.f6034a.f6033a.b(PicturesViewHolder.this.viewPagerPictures.getCurrentItem() - 1)).a(true);
                            }
                            PicturesViewHolder.this.viewPagerPictures.f6051a = PicturesViewHolder.this.f6034a.l = false;
                        }
                    } else if (PicturesViewHolder.this.viewPagerPictures.getCurrentItem() >= PicturesViewHolder.this.f6034a.d.size() && !PicturesViewHolder.this.f6034a.l) {
                        if (PicturesViewHolder.this.f6034a.f6033a.b(PicturesViewHolder.this.viewPagerPictures.getCurrentItem() - 1) != null) {
                            ((GalleryPicturesAdapter.b) PicturesViewHolder.this.f6034a.f6033a.b(PicturesViewHolder.this.viewPagerPictures.getCurrentItem() - 1)).a(false);
                        }
                        PicturesViewHolder.this.viewPagerPictures.f6051a = PicturesViewHolder.this.f6034a.l = true;
                    }
                }
            });
            this.viewPagerPictures.setCurrentItem(galleryAdapter.h != null ? galleryAdapter.h.getInt("ARG_VIEWPAGER_POSITION", 0) : i);
            this.imgToolbarIcon.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.gallery.GalleryAdapter.PicturesViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PicturesViewHolder.this.f6034a.g.a(view2);
                }
            });
            this.txtComments.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.gallery.GalleryAdapter.PicturesViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PicturesViewHolder.this.f6034a.g.a(view2, PicturesViewHolder.this.f6034a.i);
                }
            });
        }

        @Override // pl.jbzd.core.ui.adapter.a.AbstractC0604a
        public void a(Object obj, int i) {
        }
    }

    public boolean a() {
        return this.l;
    }

    /* loaded from: classes3.dex */
    public class a extends a.AbstractC0604a<pl.jbzd.app.view.gallery.a> {
        public a(View view) {
            super(view);
        }

        @Override // pl.jbzd.core.ui.adapter.a.AbstractC0604a
        public void a(pl.jbzd.app.view.gallery.a aVar, int i) {
        }
    }

    public GalleryAdapter(Context context, GalleryMainViewPager galleryMainViewPager, Media media, float f, List<pl.jbzd.app.view.gallery.a> list, GalleryPicturesAdapter.a aVar, Bundle bundle) {
        super(context, list);
        this.l = false;
        this.m = 0;
        this.i = media;
        this.f = galleryMainViewPager;
        this.g = aVar;
        this.h = bundle;
        this.f6033a = new GalleryPicturesAdapter(context, media, list, aVar);
        this.e = new b(this.f6033a);
        this.j = media.realmGet$type().equals("gallery") ? 2 : 1;
        this.k = list.get(0);
        this.k.d = f;
    }

    public void a(Bundle bundle) {
        GalleryViewPager galleryViewPager;
        if (this.b.get(0) != null && (this.b.get(0) instanceof PicturesViewHolder) && (galleryViewPager = ((PicturesViewHolder) this.b.get(0)).viewPagerPictures) != null) {
            bundle.putInt("ARG_VIEWPAGER_POSITION", galleryViewPager.getCurrentItem());
        }
        bundle.putInt("ARG_SHOWN_PAGES", this.m);
    }

    @Override // pl.jbzd.core.ui.adapter.a
    public a.AbstractC0604a a(ViewGroup viewGroup, int i, int i2) {
        if (i2 == 0) {
            if (this.i.realmGet$type().equals("gallery")) {
                return new PicturesViewHolder(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gallery_viewpager, viewGroup, false));
            }
            return new PicturesViewHolder(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gallery_viewpager_image, viewGroup, false));
        }
        return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gallery_item_empty, viewGroup, false));
    }

    @Override // pl.jbzd.core.ui.adapter.a
    public int a(int i) {
        return i;
    }

    @Override // pl.jbzd.core.ui.adapter.a, android.support.v4.view.aa
    public int getCount() {
        return this.j;
    }

    public boolean b() {
        return a(true);
    }

    public boolean a(boolean z) {
        GalleryViewPager galleryViewPager;
        if (z || this.b.get(0) == null || !(this.b.get(0) instanceof PicturesViewHolder) || (galleryViewPager = ((PicturesViewHolder) this.b.get(0)).viewPagerPictures) == null || galleryViewPager.getCurrentItem() <= 0) {
            return false;
        }
        galleryViewPager.setCurrentItem(galleryViewPager.getCurrentItem() - 1, true);
        return true;
    }
}
