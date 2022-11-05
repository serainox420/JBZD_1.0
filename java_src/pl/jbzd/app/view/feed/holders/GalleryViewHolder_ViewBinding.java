package pl.jbzd.app.view.feed.holders;

import android.view.View;
import android.widget.LinearLayout;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class GalleryViewHolder_ViewBinding extends StandardViewHolder_ViewBinding {
    private GalleryViewHolder b;

    public GalleryViewHolder_ViewBinding(GalleryViewHolder galleryViewHolder, View view) {
        super(galleryViewHolder, view);
        this.b = galleryViewHolder;
        galleryViewHolder.txtPhotosCounter = (TextView) butterknife.internal.b.b(view, R.id.txtPhotosCounter, "field 'txtPhotosCounter'", TextView.class);
        galleryViewHolder.txtPhotosForm = (TextView) butterknife.internal.b.b(view, R.id.txtPhotosForm, "field 'txtPhotosForm'", TextView.class);
        galleryViewHolder.btnShow = (LinearLayout) butterknife.internal.b.b(view, R.id.btnShow, "field 'btnShow'", LinearLayout.class);
    }

    @Override // pl.jbzd.app.view.feed.holders.StandardViewHolder_ViewBinding, butterknife.Unbinder
    public void a() {
        GalleryViewHolder galleryViewHolder = this.b;
        if (galleryViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        galleryViewHolder.txtPhotosCounter = null;
        galleryViewHolder.txtPhotosForm = null;
        galleryViewHolder.btnShow = null;
        super.a();
    }
}
