package pl.jbzd.app.view.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.facebook.login.LoginManager;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.common.Scopes;
import com.loopme.adbrowser.AdBrowserWebViewClient;
import java.util.Arrays;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.auth.LoginCallback;
import pl.jbzd.api.auth.LogoutCallback;
import pl.jbzd.api.response.UserResponse;
import pl.jbzd.app.ui.view.dialog.NotificationDialog;
import pl.jbzd.app.ui.view.dialog.SignInDialog;
import pl.jbzd.app.ui.view.dialog.StatusDialog;
import pl.jbzd.app.view.AuthActivity;
import pl.jbzd.app.view.a;
import pl.jbzd.app.view.main.MainActivity;
import pl.jbzd.app.view.menu.model.Item;
import pl.jbzd.core.a.c;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class SettingsFragment extends a {
    private Unbinder b;
    @BindView
    TextView btnLoginLogout;
    private Item c;

    public static SettingsFragment a(Item item) {
        SettingsFragment settingsFragment = new SettingsFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ARG_MENU_ITEM", item);
        settingsFragment.setArguments(bundle);
        return settingsFragment;
    }

    @Override // pl.jbzd.app.b.a
    public MainActivity.FragmentType a() {
        return MainActivity.FragmentType.SETTINGS;
    }

    @Override // pl.jbzd.app.b.a
    public Item b() {
        return this.c;
    }

    @Override // pl.jbzd.core.a, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.c = (Item) getArguments().getParcelable("ARG_MENU_ITEM");
        ApiClient.getInstance().addLoginCallback(new LoginCallback() { // from class: pl.jbzd.app.view.settings.SettingsFragment.1
            @Override // pl.jbzd.api.auth.LoginCallback
            public void onSuccess(UserResponse userResponse) {
                if (SettingsFragment.this.btnLoginLogout != null) {
                    SettingsFragment.this.btnLoginLogout.setText(R.string.settings_others_logout);
                }
            }
        });
        ApiClient.getInstance().addLogoutCallback(new LogoutCallback() { // from class: pl.jbzd.app.view.settings.SettingsFragment.2
            @Override // pl.jbzd.api.auth.LogoutCallback
            public void onSuccess() {
                if (SettingsFragment.this.btnLoginLogout != null) {
                    SettingsFragment.this.btnLoginLogout.setText(R.string.settings_others_login);
                }
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.settings_fragment, viewGroup, false);
        this.b = ButterKnife.a(this, inflate);
        return inflate;
    }

    @Override // pl.jbzd.core.a, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // pl.jbzd.core.a, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
            this.btnLoginLogout.setText(R.string.settings_others_login);
        } else {
            this.btnLoginLogout.setText(R.string.settings_others_logout);
        }
    }

    @OnClick
    public void connectWithFacebok(View view) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            Toast.makeText(getActivity(), (int) R.string.signin_loading, 0).show();
            LoginManager.getInstance().logInWithReadPermissions(getActivity(), Arrays.asList("public_profile", "user_friends", Scopes.EMAIL, "user_birthday"));
        }
    }

    @OnClick
    public void gotoFanpage(View view) {
        if (d() != null) {
            d().send(new HitBuilders.EventBuilder().setCategory("Menu").setAction("polubienie fanpage").setLabel("ustawienia").build());
        }
        if (getActivity() != null && !getActivity().isFinishing()) {
            startActivity(c.b(getActivity(), "136504313116407", "jebzdzidy"));
        }
    }

    @OnClick
    public void inviteYourFriends(View view) {
        if (d() != null) {
            d().send(new HitBuilders.EventBuilder().setCategory("Menu").setAction("podziel się appką").build());
        }
        if (getActivity() != null && !getActivity().isFinishing()) {
            startActivity(c.a(getActivity(), getString(R.string.settings_commands_friends), AdBrowserWebViewClient.PLAY_STORE_URL + c().getPackageName()));
        }
    }

    @OnClick
    public void gotoGooglePlay(View view) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            startActivity(c.a(getActivity()));
        }
    }

    @OnClick
    public void setNotificationsy(View view) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            NotificationDialog a2 = NotificationDialog.a(getActivity().getSharedPreferences(getActivity().getPackageName(), 0).getBoolean("NOTIFICATIONS_ON", true));
            if (!a2.isAdded()) {
                a2.show(getActivity().getFragmentManager(), NotificationDialog.class.getSimpleName());
            }
        }
    }

    @OnClick
    public void clearMemory(View view) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            MainActivity.d = true;
            StatusDialog a2 = StatusDialog.a(2, getString(R.string.popup_memory_cleared), getString(R.string.popup_ok));
            if (!a2.isAdded()) {
                a2.show(getActivity().getFragmentManager(), StatusDialog.class.getSimpleName());
            }
        }
    }

    @OnClick
    public void login(View view) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
                SignInDialog signInDialog = (SignInDialog) getActivity().getFragmentManager().findFragmentByTag(SignInDialog.class.getSimpleName());
                if (signInDialog == null) {
                    signInDialog = new SignInDialog();
                }
                if (!signInDialog.isAdded()) {
                    signInDialog.show(getActivity().getFragmentManager(), SignInDialog.class.getSimpleName());
                    return;
                }
                return;
            }
            ApiClient.getInstance().setToken(c(), null);
            StatusDialog a2 = StatusDialog.a(1, getString(R.string.popup_logout), getString(R.string.popup_ok));
            if (!a2.isAdded()) {
                a2.show(getActivity().getFragmentManager(), StatusDialog.class.getSimpleName());
            }
            if (getActivity() != null && (getActivity() instanceof AuthActivity)) {
                ((AuthActivity) getActivity()).d();
            }
        }
    }
}
