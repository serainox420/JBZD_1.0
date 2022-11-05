package pl.jbzd.app.view.feed.holders;

import android.view.View;
import butterknife.Unbinder;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class EmptyViewHolder_ViewBinding implements Unbinder {
    private EmptyViewHolder b;

    public EmptyViewHolder_ViewBinding(EmptyViewHolder emptyViewHolder, View view) {
        this.b = emptyViewHolder;
        emptyViewHolder.txt = (TextView) butterknife.internal.b.b(view, R.id.txt, "field 'txt'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        EmptyViewHolder emptyViewHolder = this.b;
        if (emptyViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        emptyViewHolder.txt = null;
    }
}
