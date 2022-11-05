package pl.jbzd.app.view.feed.holders;

import android.view.View;
import android.widget.LinearLayout;
import butterknife.BindView;
import pl.jbzd.app.model.Media;
import pl.jbzd.core.a.e;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class GalleryViewHolder extends StandardViewHolder<pl.jbzd.app.view.feed.a.b> {
    @BindView
    public LinearLayout btnShow;
    @BindView
    public TextView txtPhotosCounter;
    @BindView
    public TextView txtPhotosForm;

    public GalleryViewHolder(View view) {
        super(view);
    }

    @Override // pl.jbzd.app.view.feed.holders.StandardViewHolder
    public void a(pl.jbzd.app.view.feed.a.b bVar) {
        super.a((GalleryViewHolder) bVar);
        Media media = (Media) bVar.f6023a;
        this.txtPhotosCounter.setText("" + media.realmGet$pictures().size());
        this.txtPhotosForm.setText(e.a(media.realmGet$pictures().size(), new String[]{"zdjęcie", "zdjęcia", "zdjęć"}));
    }
}
