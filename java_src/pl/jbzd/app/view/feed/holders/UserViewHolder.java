package pl.jbzd.app.view.feed.holders;

import android.net.Uri;
import android.view.View;
import butterknife.BindView;
import com.facebook.drawee.view.SimpleDraweeView;
import pl.jbzd.R;
import pl.jbzd.app.model.User;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class UserViewHolder extends pl.jbzd.core.ui.view.a<User> {
    @BindView
    public SimpleDraweeView avatar;
    @BindView
    public TextView txtUsername;

    public UserViewHolder(View view) {
        super(view);
    }

    public void a(User user) {
        this.txtUsername.setText(user.realmGet$username());
        if (user.realmGet$avatar() != null && !user.realmGet$avatar().isEmpty()) {
            this.avatar.setImageURI(Uri.parse(user.realmGet$avatar()));
        } else {
            this.avatar.getHierarchy().setPlaceholderImage(R.drawable.avatar);
        }
    }
}
