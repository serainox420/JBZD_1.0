package pl.jbzd.app.view.gallery;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import pl.jbzd.R;
import pl.jbzd.app.MyApplication;
import pl.jbzd.app.model.Picture;
import pl.jbzd.app.view.feed.FeedAdapter;
import pl.jbzd.app.view.gallery.GalleryPicturesAdapter;
import pl.jbzd.b.b;
/* compiled from: GalleryItem.java */
/* loaded from: classes3.dex */
public class a {
    public int b;
    public final Picture f;
    public GalleryPicturesAdapter.VideoGifViewHolder g;
    private b.a h;
    private View.OnClickListener i;
    private final FeedAdapter.c j;
    public boolean c = false;
    public float d = BitmapDescriptorFactory.HUE_RED;
    public boolean e = false;

    /* renamed from: a  reason: collision with root package name */
    public boolean f6053a = false;

    public a(FeedAdapter.c cVar, Picture picture, int i) {
        this.j = cVar;
        this.f = picture;
        this.b = i;
    }

    public void a(b.a aVar, View.OnClickListener onClickListener) {
        this.h = aVar;
        this.i = onClickListener;
    }

    public void a(ViewGroup viewGroup, b.a aVar, View.OnClickListener onClickListener) {
        if (viewGroup != null && this.f != null) {
            if (this.f.realmGet$mp4() != null && !this.f.realmGet$mp4().isEmpty()) {
                MyApplication.a(viewGroup.getContext()).a(viewGroup, onClickListener);
                MyApplication.a(viewGroup.getContext()).a(Uri.parse(this.f.realmGet$mp4()), viewGroup, aVar);
                return;
            } else if (this.f.realmGet$youtube() != null && !this.f.realmGet$youtube().isEmpty()) {
                MyApplication.a(viewGroup.getContext()).a(viewGroup, onClickListener);
                MyApplication.a(viewGroup.getContext()).a(this.f.realmGet$youtube(), viewGroup, aVar);
                return;
            } else {
                b();
                this.j.a(viewGroup.getContext().getString(R.string.error_opening_video));
                return;
            }
        }
        b();
    }

    public void a(Context context) {
        MyApplication.a(context).a();
    }

    public void a() {
        if (!this.f6053a) {
            this.f6053a = true;
            if (this.g != null) {
                this.g.image.setVisibility(0);
                this.g.btnShow.setVisibility(0);
                this.g.progressView.setVisibility(0);
                a(this.g.ytVideoPlayerContainer, this.h, this.i);
            }
        }
    }

    public void b() {
        this.f6053a = false;
        if (this.g != null) {
            this.g.image.setVisibility(0);
            if (this.g.btnPlay != null) {
                this.g.btnPlay.setVisibility(0);
                if (this.g.btnShow != null) {
                    this.g.btnShow.setVisibility(8);
                }
            } else if (this.g.btnShow != null) {
                this.g.btnShow.setVisibility(0);
            }
            if (this.g.progressView != null) {
                this.g.progressView.setVisibility(8);
            }
            a(this.g.image.getContext());
            this.e = false;
            this.c = false;
        }
    }
}
