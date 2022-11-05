package pl.jbzd.app.view.user;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.y;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Toast;
import butterknife.BindView;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.callback.SimpleApiCallback;
import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.CommentResponse;
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.ui.view.dialog.SignInDialog;
import pl.jbzd.app.ui.view.dialog.StatusDialog;
import pl.jbzd.app.view.BaseActivity;
import pl.jbzd.app.view.feed.FeedFragment;
import pl.jbzd.app.view.main.MainActivity;
import pl.jbzd.app.view.menu.model.Item;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class UserActivity extends BaseActivity implements StatusDialog.a, FeedFragment.b {
    private int d;
    @BindView
    public Toolbar toolbar;
    @BindView
    public TextView txtToolbarTitle;

    @Override // pl.jbzd.app.view.AuthActivity
    public void b() {
    }

    @Override // pl.jbzd.app.view.AuthActivity
    public void c() {
    }

    @Override // pl.jbzd.app.view.AuthActivity, pl.jbzd.core.MvpBaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.user_activity);
        this.d = -1;
        if (getIntent() != null) {
            this.d = getIntent().getIntExtra("ARG_USER_ID", -1);
        }
        if (this.d < 1) {
            Toast.makeText(getApplicationContext(), (int) R.string.error_open_user_profile, 0).show();
            finish();
        }
        if (this.d != ApiClient.getUserId()) {
            overridePendingTransition(R.anim.trans_left_in, R.anim.trans_left_out);
        }
        setSupportActionBar(this.toolbar);
        getSupportActionBar().c(false);
        ((Toolbar.LayoutParams) this.txtToolbarTitle.getLayoutParams()).f530a = 17;
        if (this.d == ApiClient.getUserId()) {
            this.txtToolbarTitle.setText(R.string.menu_my_profile);
        } else {
            this.txtToolbarTitle.setText(R.string.menu_user_profile);
        }
        new Handler().post(new Runnable() { // from class: pl.jbzd.app.view.user.UserActivity.1
            @Override // java.lang.Runnable
            public void run() {
                UserActivity.this.getSupportActionBar().b(true);
                UserActivity.this.getSupportActionBar().a(true);
            }
        });
        this.toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.user.UserActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserActivity.this.onBackPressed();
            }
        });
        if (bundle == null) {
            FeedFragment feedFragment = (FeedFragment) getSupportFragmentManager().a(MainActivity.FragmentType.USER_PROFILE.name());
            if (feedFragment == null) {
                feedFragment = FeedFragment.a(MainActivity.FragmentType.USER_PROFILE, this.d, (Item) null);
            }
            y a2 = getSupportFragmentManager().a();
            if (feedFragment.isAdded()) {
                a2.c(feedFragment);
            } else {
                a2.a(R.id.fragmentContainer, feedFragment, MainActivity.FragmentType.USER_PROFILE.name());
            }
            a2.b();
        }
    }

    @Override // pl.jbzd.app.view.AuthActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        a(true);
    }

    private void a(boolean z) {
        finish();
        if (this.d == ApiClient.getUserId()) {
            overridePendingTransition(0, z ? R.anim.from_right_to_left : 0);
        } else {
            overridePendingTransition(0, z ? R.anim.from_left_to_right : 0);
        }
    }

    @Override // pl.jbzd.app.view.feed.FeedFragment.b
    public boolean a(View view, Comment comment) {
        if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
            SignInDialog signInDialog = (SignInDialog) getFragmentManager().findFragmentByTag(SignInDialog.class.getSimpleName());
            if (signInDialog == null) {
                signInDialog = new SignInDialog();
            }
            if (!signInDialog.isAdded()) {
                signInDialog.show(getFragmentManager(), SignInDialog.class.getSimpleName());
            }
            return false;
        }
        ApiClient.getApiService().comment_report(comment.realmGet$id(), ApiClient.getToken()).enqueue(new SimpleApiCallback<CommentResponse>() { // from class: pl.jbzd.app.view.user.UserActivity.3
            @Override // pl.jbzd.api.callback.SimpleApiCallback
            /* renamed from: a */
            public void onSuccess(CommentResponse commentResponse) {
                if (!UserActivity.this.isFinishing()) {
                    StatusDialog a2 = StatusDialog.a(3, UserActivity.this.getString(R.string.popup_comment_noticed), UserActivity.this.getString(R.string.popup_ok));
                    if (!a2.isAdded()) {
                        a2.show(UserActivity.this.getFragmentManager(), StatusDialog.class.getSimpleName());
                    }
                }
            }

            @Override // pl.jbzd.api.callback.SimpleApiCallback
            public void onError(ApiException apiException) {
                if (!UserActivity.this.isFinishing()) {
                    Toast.makeText(UserActivity.this, apiException.message(), 0).show();
                }
            }
        });
        return true;
    }

    @Override // pl.jbzd.app.view.AuthActivity, pl.jbzd.app.ui.view.dialog.StatusDialog.a
    public boolean a(View view, int i) {
        return false;
    }
}
