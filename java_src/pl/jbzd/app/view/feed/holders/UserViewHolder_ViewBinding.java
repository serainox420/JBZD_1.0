package pl.jbzd.app.view.feed.holders;

import android.view.View;
import butterknife.Unbinder;
import com.facebook.drawee.view.SimpleDraweeView;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class UserViewHolder_ViewBinding implements Unbinder {
    private UserViewHolder b;

    public UserViewHolder_ViewBinding(UserViewHolder userViewHolder, View view) {
        this.b = userViewHolder;
        userViewHolder.avatar = (SimpleDraweeView) butterknife.internal.b.b(view, R.id.avatar, "field 'avatar'", SimpleDraweeView.class);
        userViewHolder.txtUsername = (TextView) butterknife.internal.b.b(view, R.id.txtUsername, "field 'txtUsername'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        UserViewHolder userViewHolder = this.b;
        if (userViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        userViewHolder.avatar = null;
        userViewHolder.txtUsername = null;
    }
}
