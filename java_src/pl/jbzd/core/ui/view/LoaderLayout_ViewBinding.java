package pl.jbzd.core.ui.view;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.b;
import com.github.rahatarmanahmed.cpv.CircularProgressView;
import pl.jbzd.R;
/* loaded from: classes3.dex */
public class LoaderLayout_ViewBinding implements Unbinder {
    private LoaderLayout b;

    public LoaderLayout_ViewBinding(LoaderLayout loaderLayout, View view) {
        this.b = loaderLayout;
        loaderLayout.progressWheel = (CircularProgressView) b.b(view, R.id.progressWheel, "field 'progressWheel'", CircularProgressView.class);
        loaderLayout.text = (TextView) b.b(view, R.id.text, "field 'text'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        LoaderLayout loaderLayout = this.b;
        if (loaderLayout == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        loaderLayout.progressWheel = null;
        loaderLayout.text = null;
    }
}
