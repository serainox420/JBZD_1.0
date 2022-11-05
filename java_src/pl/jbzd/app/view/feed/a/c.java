package pl.jbzd.app.view.feed.a;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import pl.jbzd.R;
import pl.jbzd.app.MyApplication;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.view.feed.FeedAdapter;
import pl.jbzd.app.view.feed.model.BaseFeedModel;
import pl.jbzd.b.b;
/* compiled from: VideoFeedItem.java */
/* loaded from: classes3.dex */
public class c extends a {
    private final FeedAdapter.c d;

    public c(FeedAdapter.c cVar, BaseFeedModel baseFeedModel) {
        super(baseFeedModel);
        this.d = cVar;
    }

    @Override // pl.jbzd.app.view.feed.a.a
    public void a(ViewGroup viewGroup, b.a aVar, View.OnClickListener onClickListener) {
        if (viewGroup != null && this.f6023a != null) {
            if (((Media) this.f6023a).realmGet$movie() != null && !((Media) this.f6023a).realmGet$movie().isEmpty()) {
                MyApplication.a(viewGroup.getContext()).a(viewGroup, onClickListener);
                MyApplication.a(viewGroup.getContext()).a(Uri.parse(((Media) this.f6023a).realmGet$movie()), viewGroup, aVar);
                return;
            } else if (((Media) this.f6023a).realmGet$youtube() != null && !((Media) this.f6023a).realmGet$youtube().isEmpty()) {
                MyApplication.a(viewGroup.getContext()).a(viewGroup, onClickListener);
                MyApplication.a(viewGroup.getContext()).a(((Media) this.f6023a).realmGet$youtube(), viewGroup, aVar);
                return;
            } else {
                c();
                this.d.a(viewGroup.getContext().getString(R.string.error_opening_video));
                return;
            }
        }
        c();
    }

    @Override // pl.jbzd.app.view.feed.a.a
    public void a(Context context) {
        MyApplication.a(context).a();
    }

    @Override // pl.jbzd.app.view.feed.a.a
    public void a() {
        if (!this.b) {
            this.b = true;
            if (this.c != null) {
                this.c.image.setVisibility(0);
                if (this.c.btnShow != null) {
                    this.c.btnShow.setVisibility(0);
                }
                if (this.c.progressView != null) {
                    this.c.progressView.setVisibility(8);
                }
            }
        }
    }

    @Override // pl.jbzd.app.view.feed.a.a
    public void b() {
        if (!this.b) {
            this.b = true;
            if (this.c != null) {
                this.c.image.setVisibility(0);
                if (this.c.btnShow != null) {
                    this.c.btnShow.setVisibility(0);
                }
                if (this.c.progressView != null) {
                    this.c.progressView.setVisibility(0);
                }
            }
        }
    }

    @Override // pl.jbzd.app.view.feed.a.a
    public void c() {
        this.b = false;
        if (this.c != null) {
            this.c.image.setVisibility(0);
            if (this.c.btnShow != null) {
                this.c.btnShow.setVisibility(0);
            }
            if (this.c.progressView != null) {
                this.c.progressView.setVisibility(8);
            }
            a(this.c.itemView.getContext());
        }
    }

    public void d() {
        this.b = false;
        if (this.c != null) {
            this.c.image.setVisibility(0);
            if (this.c.btnShow != null) {
                this.c.btnShow.setVisibility(0);
            }
            if (this.c.progressView != null) {
                this.c.progressView.setVisibility(8);
            }
        }
    }
}
