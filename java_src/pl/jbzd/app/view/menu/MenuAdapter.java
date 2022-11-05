package pl.jbzd.app.view.menu;

import android.net.Uri;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import butterknife.BindView;
import butterknife.Unbinder;
import com.facebook.drawee.view.SimpleDraweeView;
import java.util.Iterator;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.app.view.menu.model.Item;
import pl.jbzd.core.b;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class MenuAdapter extends RecyclerView.a<b> {

    /* renamed from: a  reason: collision with root package name */
    private final List<pl.jbzd.app.view.menu.model.a> f6070a;
    private final a b;

    /* loaded from: classes3.dex */
    public enum MenuItemType {
        MENU_HEADER,
        MENU_FOOTER,
        ITEM_HEADER,
        ITEM
    }

    /* loaded from: classes3.dex */
    public interface a {
        void a(View view);

        void a(View view, Item item, int i);

        void b(View view);

        void c(View view);

        void d(View view);

        void e(View view);
    }

    /* loaded from: classes3.dex */
    public class MenuFooterViewHolder_ViewBinding implements Unbinder {
        private MenuFooterViewHolder b;

        public MenuFooterViewHolder_ViewBinding(MenuFooterViewHolder menuFooterViewHolder, View view) {
            this.b = menuFooterViewHolder;
            menuFooterViewHolder.btnFacebook = (TextView) butterknife.internal.b.b(view, R.id.btnFacebook, "field 'btnFacebook'", TextView.class);
            menuFooterViewHolder.btnInstagram = (TextView) butterknife.internal.b.b(view, R.id.btnInstagram, "field 'btnInstagram'", TextView.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            MenuFooterViewHolder menuFooterViewHolder = this.b;
            if (menuFooterViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            menuFooterViewHolder.btnFacebook = null;
            menuFooterViewHolder.btnInstagram = null;
        }
    }

    /* loaded from: classes3.dex */
    public class MenuItemHeaderViewHolder_ViewBinding implements Unbinder {
        private MenuItemHeaderViewHolder b;

        public MenuItemHeaderViewHolder_ViewBinding(MenuItemHeaderViewHolder menuItemHeaderViewHolder, View view) {
            this.b = menuItemHeaderViewHolder;
            menuItemHeaderViewHolder.item = (TextView) butterknife.internal.b.b(view, R.id.item, "field 'item'", TextView.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            MenuItemHeaderViewHolder menuItemHeaderViewHolder = this.b;
            if (menuItemHeaderViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            menuItemHeaderViewHolder.item = null;
        }
    }

    /* loaded from: classes3.dex */
    public class MenuItemViewHolder_ViewBinding implements Unbinder {
        private MenuItemViewHolder b;

        public MenuItemViewHolder_ViewBinding(MenuItemViewHolder menuItemViewHolder, View view) {
            this.b = menuItemViewHolder;
            menuItemViewHolder.item = (TextView) butterknife.internal.b.b(view, R.id.item, "field 'item'", TextView.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            MenuItemViewHolder menuItemViewHolder = this.b;
            if (menuItemViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            menuItemViewHolder.item = null;
        }
    }

    /* loaded from: classes3.dex */
    public class MenuHeaderViewHolder_ViewBinding implements Unbinder {
        private MenuHeaderViewHolder b;

        public MenuHeaderViewHolder_ViewBinding(MenuHeaderViewHolder menuHeaderViewHolder, View view) {
            this.b = menuHeaderViewHolder;
            menuHeaderViewHolder.btnSettings = (TextView) butterknife.internal.b.b(view, R.id.btnSettings, "field 'btnSettings'", TextView.class);
            menuHeaderViewHolder.btnSignIn = (RelativeLayout) butterknife.internal.b.b(view, R.id.btnSignIn, "field 'btnSignIn'", RelativeLayout.class);
            menuHeaderViewHolder.username = (TextView) butterknife.internal.b.b(view, R.id.username, "field 'username'", TextView.class);
            menuHeaderViewHolder.avatar = (ImageView) butterknife.internal.b.b(view, R.id.avatar, "field 'avatar'", ImageView.class);
            menuHeaderViewHolder.avatarUrl = (SimpleDraweeView) butterknife.internal.b.b(view, R.id.avatarUrl, "field 'avatarUrl'", SimpleDraweeView.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            MenuHeaderViewHolder menuHeaderViewHolder = this.b;
            if (menuHeaderViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            menuHeaderViewHolder.btnSettings = null;
            menuHeaderViewHolder.btnSignIn = null;
            menuHeaderViewHolder.username = null;
            menuHeaderViewHolder.avatar = null;
            menuHeaderViewHolder.avatarUrl = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class MenuItemViewHolder extends b {
        @BindView
        TextView item;

        MenuItemViewHolder(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class MenuItemHeaderViewHolder extends b {
        @BindView
        TextView item;

        MenuItemHeaderViewHolder(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class MenuHeaderViewHolder extends b {
        @BindView
        ImageView avatar;
        @BindView
        SimpleDraweeView avatarUrl;
        @BindView
        TextView btnSettings;
        @BindView
        RelativeLayout btnSignIn;
        @BindView
        TextView username;

        MenuHeaderViewHolder(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class MenuFooterViewHolder extends b {
        @BindView
        TextView btnFacebook;
        @BindView
        TextView btnInstagram;

        MenuFooterViewHolder(View view) {
            super(view);
        }
    }

    public MenuAdapter(List<pl.jbzd.app.view.menu.model.a> list, a aVar) {
        this.f6070a = list;
        this.b = aVar;
        setHasStableIds(true);
    }

    public int a(int i) {
        int i2;
        int i3 = 0;
        Iterator<pl.jbzd.app.view.menu.model.a> it = this.f6070a.iterator();
        while (true) {
            i2 = i3;
            if (!it.hasNext()) {
                break;
            }
            pl.jbzd.app.view.menu.model.a next = it.next();
            if ((next instanceof Item) && ((Item) next).b == i) {
                break;
            }
            i3 = i2 + 1;
        }
        if (i2 >= this.f6070a.size()) {
            return -1;
        }
        return i2;
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int getItemViewType(int i) {
        return this.f6070a.get(i).f6077a.ordinal();
    }

    @Override // android.support.v7.widget.RecyclerView.a
    /* renamed from: a */
    public b onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == MenuItemType.ITEM.ordinal()) {
            final MenuItemViewHolder menuItemViewHolder = new MenuItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.menu_item, viewGroup, false));
            menuItemViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.menu.MenuAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (MenuAdapter.this.b != null) {
                        MenuAdapter.this.b.a(view, (Item) MenuAdapter.this.f6070a.get(menuItemViewHolder.getAdapterPosition()), menuItemViewHolder.getAdapterPosition());
                    }
                }
            });
            return menuItemViewHolder;
        } else if (i == MenuItemType.ITEM_HEADER.ordinal()) {
            return new MenuItemHeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.menu_item_header, viewGroup, false));
        } else {
            if (i == MenuItemType.MENU_HEADER.ordinal()) {
                MenuHeaderViewHolder menuHeaderViewHolder = new MenuHeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.menu_header, viewGroup, false));
                menuHeaderViewHolder.btnSettings.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.menu.MenuAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MenuAdapter.this.b != null) {
                            MenuAdapter.this.b.a(view);
                        }
                    }
                });
                menuHeaderViewHolder.btnSignIn.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.menu.MenuAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MenuAdapter.this.b != null) {
                            if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
                                MenuAdapter.this.b.b(view);
                            } else {
                                MenuAdapter.this.b.c(view);
                            }
                        }
                    }
                });
                return menuHeaderViewHolder;
            } else if (i != MenuItemType.MENU_FOOTER.ordinal()) {
                return null;
            } else {
                MenuFooterViewHolder menuFooterViewHolder = new MenuFooterViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.menu_footer, viewGroup, false));
                menuFooterViewHolder.btnFacebook.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.menu.MenuAdapter.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MenuAdapter.this.b != null) {
                            MenuAdapter.this.b.d(view);
                        }
                    }
                });
                menuFooterViewHolder.btnInstagram.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.menu.MenuAdapter.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MenuAdapter.this.b != null) {
                            MenuAdapter.this.b.e(view);
                        }
                    }
                });
                return menuFooterViewHolder;
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    /* renamed from: a */
    public void onBindViewHolder(b bVar, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == MenuItemType.ITEM.ordinal()) {
            MenuItemViewHolder menuItemViewHolder = (MenuItemViewHolder) bVar;
            Item item = (Item) this.f6070a.get(i);
            menuItemViewHolder.item.setText(item.d);
            menuItemViewHolder.item.setCompoundDrawablesWithIntrinsicBounds(item.c, 0, 0, 0);
        } else if (itemViewType == MenuItemType.ITEM_HEADER.ordinal()) {
            ((MenuItemHeaderViewHolder) bVar).item.setText(((pl.jbzd.app.view.menu.model.b) this.f6070a.get(i)).b);
        } else if (itemViewType == MenuItemType.MENU_HEADER.ordinal()) {
            MenuHeaderViewHolder menuHeaderViewHolder = (MenuHeaderViewHolder) bVar;
            if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
                menuHeaderViewHolder.avatarUrl.setVisibility(8);
                menuHeaderViewHolder.avatar.setVisibility(0);
                menuHeaderViewHolder.username.setPadding(menuHeaderViewHolder.username.getPaddingLeft(), pl.jbzd.core.a.a.a(6), menuHeaderViewHolder.username.getPaddingRight(), menuHeaderViewHolder.username.getPaddingBottom());
                menuHeaderViewHolder.username.setText(R.string.menu_sign_in);
                menuHeaderViewHolder.avatar.setImageDrawable(pl.jbzd.core.a.a.a(R.drawable.menu_item_signin, menuHeaderViewHolder.avatar.getContext()));
                return;
            }
            menuHeaderViewHolder.username.setText(ApiClient.getUsername());
            if (ApiClient.getAvatar() != null && !ApiClient.getAvatar().isEmpty()) {
                menuHeaderViewHolder.avatar.setVisibility(8);
                menuHeaderViewHolder.avatarUrl.setVisibility(0);
                menuHeaderViewHolder.avatarUrl.setImageURI(Uri.parse(ApiClient.getAvatar()));
                return;
            }
            menuHeaderViewHolder.avatarUrl.setVisibility(8);
            menuHeaderViewHolder.avatar.setVisibility(0);
            menuHeaderViewHolder.avatar.setImageDrawable(pl.jbzd.core.a.a.a(R.drawable.avatar, menuHeaderViewHolder.avatar.getContext()));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int getItemCount() {
        if (this.f6070a != null) {
            return this.f6070a.size();
        }
        return 0;
    }
}
