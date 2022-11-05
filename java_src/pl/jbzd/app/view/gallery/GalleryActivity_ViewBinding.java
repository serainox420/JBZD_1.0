package pl.jbzd.app.view.gallery;

import android.view.View;
import android.widget.FrameLayout;
import butterknife.Unbinder;
import pl.jbzd.R;
import pl.jbzd.app.ui.view.comment.CommentsView;
/* loaded from: classes3.dex */
public class GalleryActivity_ViewBinding implements Unbinder {
    private GalleryActivity b;

    public GalleryActivity_ViewBinding(GalleryActivity galleryActivity, View view) {
        this.b = galleryActivity;
        galleryActivity.layout = (FrameLayout) butterknife.internal.b.b(view, R.id.layout, "field 'layout'", FrameLayout.class);
        galleryActivity.commentLayout = (FrameLayout) butterknife.internal.b.b(view, R.id.commentLayout, "field 'commentLayout'", FrameLayout.class);
        galleryActivity.commentView = (CommentsView) butterknife.internal.b.b(view, R.id.commentView, "field 'commentView'", CommentsView.class);
        galleryActivity.viewPager = (GalleryMainViewPager) butterknife.internal.b.b(view, R.id.viewPager, "field 'viewPager'", GalleryMainViewPager.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        GalleryActivity galleryActivity = this.b;
        if (galleryActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        galleryActivity.layout = null;
        galleryActivity.commentLayout = null;
        galleryActivity.commentView = null;
        galleryActivity.viewPager = null;
    }
}
