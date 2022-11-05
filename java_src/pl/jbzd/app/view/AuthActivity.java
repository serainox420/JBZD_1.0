package pl.jbzd.app.view;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.support.v4.content.b;
import android.view.View;
import android.widget.Toast;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.common.Scopes;
import java.io.File;
import java.util.Arrays;
import org.json.JSONObject;
import pl.aprilapps.easyphotopicker.EasyImage;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.auth.LogoutCallback;
import pl.jbzd.api.callback.LoginApiCallback;
import pl.jbzd.api.callback.SimpleApiCallback;
import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.UserResponse;
import pl.jbzd.api.response.UserRetrievePasswordResponse;
import pl.jbzd.app.MyApplication;
import pl.jbzd.app.c.b;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.ui.view.dialog.NotificationDialog;
import pl.jbzd.app.ui.view.dialog.RestorePasswordDialog;
import pl.jbzd.app.ui.view.dialog.ShareMenuDialog;
import pl.jbzd.app.ui.view.dialog.SignInDialog;
import pl.jbzd.app.ui.view.dialog.SignUpDialog;
import pl.jbzd.app.ui.view.dialog.StatusDialog;
import pl.jbzd.app.view.feed.FeedViewType;
import pl.jbzd.core.MvpBaseActivity;
import pl.jbzd.core.a.c;
/* loaded from: classes3.dex */
public abstract class AuthActivity extends MvpBaseActivity implements NotificationDialog.a, RestorePasswordDialog.a, ShareMenuDialog.a, SignInDialog.a, SignUpDialog.a, StatusDialog.a {

    /* renamed from: a  reason: collision with root package name */
    protected Tracker f5957a;
    protected pl.jbzd.app.ui.view.dialog.a b;
    protected CallbackManager c;
    private ShareMenuDialog d;
    private View e;
    private Media f;

    public abstract void b();

    public abstract void c();

    @Override // pl.jbzd.core.MvpBaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f5957a = ((MyApplication) getApplication()).a();
        this.c = CallbackManager.Factory.create();
        LoginManager.getInstance().registerCallback(this.c, new FacebookCallback<LoginResult>() { // from class: pl.jbzd.app.view.AuthActivity.1
            @Override // com.facebook.FacebookCallback
            /* renamed from: a */
            public void onSuccess(LoginResult loginResult) {
                GraphRequest newMeRequest = GraphRequest.newMeRequest(AccessToken.getCurrentAccessToken(), new GraphRequest.GraphJSONObjectCallback() { // from class: pl.jbzd.app.view.AuthActivity.1.1
                    @Override // com.facebook.GraphRequest.GraphJSONObjectCallback
                    public void onCompleted(JSONObject jSONObject, GraphResponse graphResponse) {
                    }
                });
                Bundle bundle2 = new Bundle();
                bundle2.putString(GraphRequest.FIELDS_PARAM, "id, first_name, last_name, email, gender, birthday");
                newMeRequest.setParameters(bundle2);
                newMeRequest.executeAsync();
                ApiClient.getApiService().user_auth_facebook(AccessToken.getCurrentAccessToken().getToken()).enqueue(new LoginApiCallback(AuthActivity.this) { // from class: pl.jbzd.app.view.AuthActivity.1.2
                    @Override // pl.jbzd.api.callback.SimpleApiCallback
                    /* renamed from: a */
                    public void onSuccess(UserResponse userResponse) {
                        if (!AuthActivity.this.isFinishing()) {
                            int i = -1;
                            if (AuthActivity.this.b != null && AuthActivity.this.b.isAdded() && AuthActivity.this.b.getShowsDialog()) {
                                AuthActivity.this.b.a(false);
                                i = AuthActivity.this.b.a();
                                AuthActivity.this.b.dismissAllowingStateLoss();
                            }
                            if (i == 1001) {
                                AuthActivity.this.b();
                            } else if (i == 1002) {
                                AuthActivity.this.c();
                            }
                            Toast.makeText(AuthActivity.this.getApplicationContext(), (int) R.string.signin_success, 1).show();
                        }
                    }

                    @Override // pl.jbzd.api.callback.SimpleApiCallback
                    public void onError(ApiException apiException) {
                        if (!AuthActivity.this.isFinishing()) {
                            if (AuthActivity.this.b != null && AuthActivity.this.b.isAdded() && AuthActivity.this.b.getShowsDialog()) {
                                AuthActivity.this.b.a(false);
                            }
                            Toast.makeText(AuthActivity.this.getApplicationContext(), apiException.message(), 1).show();
                        }
                    }
                });
            }

            @Override // com.facebook.FacebookCallback
            public void onCancel() {
            }

            @Override // com.facebook.FacebookCallback
            public void onError(FacebookException facebookException) {
                if (!AuthActivity.this.isFinishing()) {
                    Toast.makeText(AuthActivity.this, facebookException.getMessage(), 0).show();
                }
            }
        });
        ApiClient.getInstance().addLogoutCallback(new LogoutCallback() { // from class: pl.jbzd.app.view.AuthActivity.3
            @Override // pl.jbzd.api.auth.LogoutCallback
            public void onSuccess() {
                LoginManager.getInstance().logOut();
            }
        });
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.c.onActivityResult(i, i2, intent);
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignInDialog.a
    public boolean a(final SignInDialog signInDialog, View view, String str, String str2) {
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
            return false;
        }
        signInDialog.a(true);
        ApiClient.getApiService().user_sign_in(str, str2).enqueue(new LoginApiCallback(this) { // from class: pl.jbzd.app.view.AuthActivity.4
            @Override // pl.jbzd.api.callback.SimpleApiCallback
            /* renamed from: a */
            public void onSuccess(UserResponse userResponse) {
                if (!AuthActivity.this.isFinishing()) {
                    int i = -1;
                    if (signInDialog != null && signInDialog.isAdded() && signInDialog.getShowsDialog()) {
                        signInDialog.a(false);
                        i = signInDialog.a();
                        signInDialog.dismissAllowingStateLoss();
                    }
                    if (i == 1001) {
                        AuthActivity.this.b();
                    } else if (i == 1002) {
                        AuthActivity.this.c();
                    }
                    Toast.makeText(AuthActivity.this.getApplicationContext(), (int) R.string.signin_success, 1).show();
                }
            }

            @Override // pl.jbzd.api.callback.SimpleApiCallback
            public void onError(ApiException apiException) {
                if (!AuthActivity.this.isFinishing()) {
                    if (signInDialog != null && signInDialog.isAdded() && signInDialog.getShowsDialog()) {
                        signInDialog.a(false);
                    }
                    Toast.makeText(AuthActivity.this.getApplicationContext(), apiException.message(), 1).show();
                }
            }
        });
        return true;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignInDialog.a
    public boolean a(SignInDialog signInDialog, View view) {
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
            return false;
        }
        signInDialog.a(true);
        this.b = signInDialog;
        LoginManager.getInstance().logInWithReadPermissions(this, Arrays.asList("public_profile", "user_friends", Scopes.EMAIL, "user_birthday"));
        return true;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignInDialog.a
    public boolean b(SignInDialog signInDialog, View view) {
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
            return false;
        }
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://jbzdy.pl/polityka-prywatnosci")));
        return true;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignInDialog.a
    public boolean c(SignInDialog signInDialog, View view) {
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
        } else {
            RestorePasswordDialog restorePasswordDialog = (RestorePasswordDialog) getFragmentManager().findFragmentByTag(RestorePasswordDialog.class.getSimpleName());
            if (restorePasswordDialog == null) {
                restorePasswordDialog = new RestorePasswordDialog();
            }
            if (!restorePasswordDialog.isAdded()) {
                restorePasswordDialog.show(getFragmentManager(), RestorePasswordDialog.class.getSimpleName());
            }
        }
        return false;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignInDialog.a
    public boolean d(SignInDialog signInDialog, View view) {
        if (this.f5957a != null) {
            this.f5957a.send(new HitBuilders.EventBuilder().setCategory("Menu").setAction("rejestracja").build());
        }
        SignUpDialog signUpDialog = (SignUpDialog) getFragmentManager().findFragmentByTag(SignUpDialog.class.getSimpleName());
        if (signUpDialog == null) {
            signUpDialog = new SignUpDialog();
        }
        if (!signUpDialog.isAdded()) {
            signUpDialog.a(signInDialog.a());
            signUpDialog.show(getFragmentManager(), SignUpDialog.class.getSimpleName());
            return false;
        }
        return false;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignUpDialog.a
    public boolean a(final SignUpDialog signUpDialog, View view, String str, String str2, String str3, String str4) {
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
            return false;
        }
        signUpDialog.a(true);
        ApiClient.getApiService().user_sign_up(str, str2, str3, str4).enqueue(new LoginApiCallback(this) { // from class: pl.jbzd.app.view.AuthActivity.5
            @Override // pl.jbzd.api.callback.SimpleApiCallback
            /* renamed from: a */
            public void onSuccess(UserResponse userResponse) {
                if (!AuthActivity.this.isFinishing()) {
                    int i = -1;
                    if (signUpDialog != null && signUpDialog.isAdded() && signUpDialog.getShowsDialog()) {
                        signUpDialog.a(false);
                        i = signUpDialog.a();
                        signUpDialog.dismissAllowingStateLoss();
                    }
                    if (i == 1001) {
                        AuthActivity.this.b();
                    } else if (i == 1002) {
                        AuthActivity.this.c();
                    }
                    Toast.makeText(AuthActivity.this.getApplicationContext(), (int) R.string.signup_success, 1).show();
                }
            }

            @Override // pl.jbzd.api.callback.SimpleApiCallback
            public void onError(ApiException apiException) {
                if (!AuthActivity.this.isFinishing()) {
                    if (signUpDialog != null && signUpDialog.isAdded() && signUpDialog.getShowsDialog()) {
                        signUpDialog.a(false);
                    }
                    Toast.makeText(AuthActivity.this.getApplicationContext(), apiException.message(), 1).show();
                }
            }
        });
        return true;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignUpDialog.a
    public boolean a(SignUpDialog signUpDialog, View view) {
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
            return false;
        }
        signUpDialog.a(true);
        this.b = signUpDialog;
        LoginManager.getInstance().logInWithReadPermissions(this, Arrays.asList("public_profile", "user_friends", Scopes.EMAIL, "user_birthday"));
        return true;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignUpDialog.a
    public boolean b(SignUpDialog signUpDialog, View view) {
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
        } else {
            SignInDialog signInDialog = (SignInDialog) getFragmentManager().findFragmentByTag(SignInDialog.class.getSimpleName());
            if (signInDialog == null) {
                signInDialog = new SignInDialog();
            }
            if (!signInDialog.isAdded()) {
                signInDialog.a(signUpDialog.a());
                signInDialog.show(getFragmentManager(), SignInDialog.class.getSimpleName());
            }
        }
        return false;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignUpDialog.a
    public boolean c(SignUpDialog signUpDialog, View view) {
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
            return false;
        }
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://jbzdy.pl/polityka-prywatnosci")));
        return true;
    }

    @Override // pl.jbzd.app.ui.view.dialog.RestorePasswordDialog.a
    public boolean a(final RestorePasswordDialog restorePasswordDialog, View view, String str) {
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
            return false;
        }
        restorePasswordDialog.a(true);
        ApiClient.getApiService().user_retrieve_password(str).enqueue(new SimpleApiCallback<UserRetrievePasswordResponse>() { // from class: pl.jbzd.app.view.AuthActivity.6
            @Override // pl.jbzd.api.callback.SimpleApiCallback
            /* renamed from: a */
            public void onSuccess(UserRetrievePasswordResponse userRetrievePasswordResponse) {
                if (!AuthActivity.this.isFinishing()) {
                    if (restorePasswordDialog != null && restorePasswordDialog.isAdded() && restorePasswordDialog.getShowsDialog()) {
                        restorePasswordDialog.a(false);
                        restorePasswordDialog.dismissAllowingStateLoss();
                    }
                    Toast.makeText(AuthActivity.this.getApplicationContext(), (int) R.string.restore_password_success, 1).show();
                }
            }

            @Override // pl.jbzd.api.callback.SimpleApiCallback
            public void onError(ApiException apiException) {
                if (!AuthActivity.this.isFinishing()) {
                    if (restorePasswordDialog != null && restorePasswordDialog.isAdded() && restorePasswordDialog.getShowsDialog()) {
                        restorePasswordDialog.a(false);
                    }
                    Toast.makeText(AuthActivity.this.getApplicationContext(), apiException.message(), 1).show();
                }
            }
        });
        return true;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignInDialog.a
    public boolean e(SignInDialog signInDialog, View view) {
        return false;
    }

    @Override // pl.jbzd.app.ui.view.dialog.SignUpDialog.a
    public boolean d(SignUpDialog signUpDialog, View view) {
        return false;
    }

    @Override // pl.jbzd.app.ui.view.dialog.RestorePasswordDialog.a
    public boolean a(RestorePasswordDialog restorePasswordDialog, View view) {
        return false;
    }

    @Override // pl.jbzd.app.ui.view.dialog.StatusDialog.a
    public boolean a(View view, int i) {
        if (1 == i) {
            d();
            return false;
        }
        return false;
    }

    public void d() {
        for (LogoutCallback logoutCallback : ApiClient.getInstance().getLogoutCallbacks()) {
            if (logoutCallback != null) {
                logoutCallback.onSuccess();
            }
        }
    }

    public void a(View view, Media media) {
        ShareMenuDialog shareMenuDialog = (ShareMenuDialog) getFragmentManager().findFragmentByTag(ShareMenuDialog.class.getSimpleName());
        if (shareMenuDialog == null) {
            shareMenuDialog = new ShareMenuDialog();
        }
        if (shareMenuDialog.isAdded()) {
            shareMenuDialog.dismissAllowingStateLoss();
        }
        shareMenuDialog.a(media);
        shareMenuDialog.show(getFragmentManager(), SignInDialog.class.getSimpleName());
    }

    @Override // pl.jbzd.app.ui.view.dialog.ShareMenuDialog.a
    public boolean a(ShareMenuDialog shareMenuDialog, View view, Media media) {
        if (this.f5957a != null) {
            this.f5957a.send(new HitBuilders.EventBuilder().setCategory("Social").setAction("Share obrazka").build());
        }
        startActivity(Intent.createChooser(c.a(this, media.realmGet$title(), media.realmGet$share_url()), getString(R.string.share_title)));
        return false;
    }

    @Override // pl.jbzd.app.ui.view.dialog.ShareMenuDialog.a
    public boolean b(ShareMenuDialog shareMenuDialog, View view, Media media) {
        ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("jbzd", media.realmGet$share_url()));
        Toast.makeText(getApplicationContext(), (int) R.string.copied_to_clipboard, 0).show();
        return false;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.a.InterfaceC0009a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 112:
                if (iArr.length == 0 || iArr[0] != 0) {
                    Toast.makeText(getApplicationContext(), getString(R.string.permission_download), 0).show();
                } else {
                    c(this.d, this.e, this.f);
                }
                break;
            case 113:
                if (iArr.length < 2 || iArr[0] != 0 || iArr[1] != 0) {
                    Toast.makeText(getApplicationContext(), getString(R.string.permission_camera), 0).show();
                    break;
                } else {
                    new Handler().postDelayed(new Runnable() { // from class: pl.jbzd.app.view.AuthActivity.7
                        @Override // java.lang.Runnable
                        public void run() {
                            EasyImage.b((Activity) AuthActivity.this, 101);
                        }
                    }, 250L);
                    break;
                }
            case 114:
                break;
            default:
                return;
        }
        if (iArr.length < 2 || iArr[0] != 0 || iArr[1] != 0) {
            Toast.makeText(getApplicationContext(), getString(R.string.permission_camera), 0).show();
        } else {
            new Handler().postDelayed(new Runnable() { // from class: pl.jbzd.app.view.AuthActivity.8
                @Override // java.lang.Runnable
                public void run() {
                    EasyImage.a((Activity) AuthActivity.this, 102);
                }
            }, 250L);
        }
    }

    @Override // pl.jbzd.app.ui.view.dialog.ShareMenuDialog.a
    public boolean c(ShareMenuDialog shareMenuDialog, View view, Media media) {
        boolean z = true;
        if (!pl.jbzd.core.a.a.c(this)) {
            Toast.makeText(this, (int) R.string.error_online, 0).show();
        } else {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    if (b.b(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                        z = false;
                    }
                    if (!z) {
                        this.d = shareMenuDialog;
                        this.e = view;
                        this.f = media;
                        android.support.v4.app.a.a(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 112);
                    }
                }
                if (media == null) {
                    Toast.makeText(getApplicationContext(), (int) R.string.error_save_while_downloading, 0).show();
                }
                this.d = null;
                this.e = null;
                this.f = null;
                File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "JBZD");
                if (!file.exists()) {
                    file.mkdirs();
                }
                if (FeedViewType.GIF.name.equals(media.realmGet$type()) || FeedViewType.VIDEO.name.equals(media.realmGet$type())) {
                    if (media.realmGet$movie() != null && !media.realmGet$movie().isEmpty()) {
                        Toast.makeText(getApplicationContext(), (int) R.string.movie_downloading, 0).show();
                        pl.jbzd.app.c.b.c(getApplicationContext(), media.realmGet$movie(), file, new b.a() { // from class: pl.jbzd.app.view.AuthActivity.9
                            @Override // pl.jbzd.app.c.b.a
                            public void a(File file2) {
                                if (!AuthActivity.this.isFinishing()) {
                                    AuthActivity.this.runOnUiThread(new Runnable() { // from class: pl.jbzd.app.view.AuthActivity.9.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Toast.makeText(AuthActivity.this.getApplicationContext(), (int) R.string.movie_has_been_saved, 0).show();
                                        }
                                    });
                                }
                            }

                            @Override // pl.jbzd.app.c.b.a
                            public void a(final String str) {
                                if (!AuthActivity.this.isFinishing()) {
                                    AuthActivity.this.runOnUiThread(new Runnable() { // from class: pl.jbzd.app.view.AuthActivity.9.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Toast.makeText(AuthActivity.this.getApplicationContext(), str, 0).show();
                                        }
                                    });
                                }
                            }
                        });
                    } else if (media.realmGet$youtube() != null && !media.realmGet$youtube().isEmpty()) {
                        Toast.makeText(getApplicationContext(), (int) R.string.movie_downloading, 0).show();
                        pl.jbzd.app.c.b.b(getApplicationContext(), media.realmGet$youtube(), file, new b.a() { // from class: pl.jbzd.app.view.AuthActivity.10
                            @Override // pl.jbzd.app.c.b.a
                            public void a(File file2) {
                                if (!AuthActivity.this.isFinishing()) {
                                    AuthActivity.this.runOnUiThread(new Runnable() { // from class: pl.jbzd.app.view.AuthActivity.10.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Toast.makeText(AuthActivity.this.getApplicationContext(), (int) R.string.movie_has_been_saved, 0).show();
                                        }
                                    });
                                }
                            }

                            @Override // pl.jbzd.app.c.b.a
                            public void a(final String str) {
                                if (!AuthActivity.this.isFinishing()) {
                                    AuthActivity.this.runOnUiThread(new Runnable() { // from class: pl.jbzd.app.view.AuthActivity.10.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Toast.makeText(AuthActivity.this.getApplicationContext(), str, 0).show();
                                        }
                                    });
                                }
                            }
                        });
                    } else {
                        Toast.makeText(getApplicationContext(), (int) R.string.error_save_while_downloading, 0).show();
                    }
                } else {
                    pl.jbzd.app.c.b.a(getApplicationContext(), media.realmGet$image(), file, new b.a() { // from class: pl.jbzd.app.view.AuthActivity.2
                        @Override // pl.jbzd.app.c.b.a
                        public void a(File file2) {
                            if (!AuthActivity.this.isFinishing()) {
                                AuthActivity.this.runOnUiThread(new Runnable() { // from class: pl.jbzd.app.view.AuthActivity.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Toast.makeText(AuthActivity.this.getApplicationContext(), (int) R.string.image_has_been_saved, 0).show();
                                    }
                                });
                            }
                        }

                        @Override // pl.jbzd.app.c.b.a
                        public void a(final String str) {
                            if (!AuthActivity.this.isFinishing()) {
                                AuthActivity.this.runOnUiThread(new Runnable() { // from class: pl.jbzd.app.view.AuthActivity.2.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Toast.makeText(AuthActivity.this.getApplicationContext(), str, 0).show();
                                    }
                                });
                            }
                        }
                    });
                }
            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(getApplicationContext(), (int) R.string.error_save_while_downloading, 0).show();
            }
        }
        return false;
    }

    @Override // pl.jbzd.app.ui.view.dialog.ShareMenuDialog.a
    public boolean d(ShareMenuDialog shareMenuDialog, View view, Media media) {
        return false;
    }

    @Override // pl.jbzd.app.ui.view.dialog.NotificationDialog.a
    public boolean b(View view, boolean z) {
        if (this.f5957a != null) {
            this.f5957a.send(new HitBuilders.EventBuilder().setCategory("Menu").setAction("notyfikacje").setLabel(z ? "on" : "off").build());
        }
        getSharedPreferences(getPackageName(), 0).edit().putBoolean("NOTIFICATIONS_ON", z).apply();
        return true;
    }

    public Tracker e() {
        return this.f5957a;
    }
}
