package pl.jbzd.app.ui.view.dialog;

import android.view.View;
import android.widget.ImageView;
import butterknife.Unbinder;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.app.ui.view.TagGroup;
import pl.jbzd.core.ui.view.EditText;
import pl.jbzd.core.ui.view.LoaderLayout;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class AddKwejkDialog_ViewBinding implements Unbinder {
    private AddKwejkDialog b;

    public AddKwejkDialog_ViewBinding(AddKwejkDialog addKwejkDialog, View view) {
        this.b = addKwejkDialog;
        addKwejkDialog.title = (EditText) b.b(view, R.id.title, "field 'title'", EditText.class);
        addKwejkDialog.tags = (EditText) b.b(view, R.id.tags, "field 'tags'", EditText.class);
        addKwejkDialog.tagList = (TagGroup) b.b(view, R.id.tagList, "field 'tagList'", TagGroup.class);
        addKwejkDialog.button = (TextView) b.b(view, R.id.button, "field 'button'", TextView.class);
        addKwejkDialog.image = (ImageView) b.b(view, R.id.image, "field 'image'", ImageView.class);
        addKwejkDialog.close = (ImageView) b.b(view, R.id.close, "field 'close'", ImageView.class);
        addKwejkDialog.loader = (LoaderLayout) b.b(view, R.id.loader, "field 'loader'", LoaderLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        AddKwejkDialog addKwejkDialog = this.b;
        if (addKwejkDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        addKwejkDialog.title = null;
        addKwejkDialog.tags = null;
        addKwejkDialog.tagList = null;
        addKwejkDialog.button = null;
        addKwejkDialog.image = null;
        addKwejkDialog.close = null;
        addKwejkDialog.loader = null;
    }
}
