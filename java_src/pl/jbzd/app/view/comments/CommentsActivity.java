package pl.jbzd.app.view.comments;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import butterknife.BindView;
import com.google.android.gms.analytics.HitBuilders;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.callback.SimpleApiCallback;
import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.CommentResponse;
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.ui.view.comment.CommentsAdapter;
import pl.jbzd.app.ui.view.comment.CommentsView;
import pl.jbzd.app.ui.view.dialog.SignInDialog;
import pl.jbzd.app.view.AuthActivity;
import pl.jbzd.app.view.user.UserActivity;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class CommentsActivity extends AuthActivity implements CommentsAdapter.b, CommentsView.b, CommentsView.c {
    @BindView
    CommentsView commentView;
    private Media d = null;
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
        setContentView(R.layout.comments_activity);
        overridePendingTransition(R.anim.trans_left_in, R.anim.trans_left_out);
        if (getIntent() != null) {
            try {
                this.d = (Media) getIntent().getParcelableExtra("ARG_MEDIA");
            } catch (Exception e) {
            }
        }
        if (this.d == null || this.d.realmGet$type() == null) {
            Toast.makeText(getApplicationContext(), (int) R.string.error_open_comments, 0).show();
            finish();
        }
        setSupportActionBar(this.toolbar);
        getSupportActionBar().c(false);
        ((Toolbar.LayoutParams) this.txtToolbarTitle.getLayoutParams()).f530a = 17;
        this.txtToolbarTitle.setText(getString(R.string.comments_toolbar, new Object[]{Integer.valueOf(this.d.realmGet$comments_counter())}));
        this.commentView.a(this, this, this);
        this.commentView.setMedia(this.d);
        new Handler().post(new Runnable() { // from class: pl.jbzd.app.view.comments.CommentsActivity.1
            @Override // java.lang.Runnable
            public void run() {
                CommentsActivity.this.getSupportActionBar().b(true);
                CommentsActivity.this.getSupportActionBar().a(true);
            }
        });
        this.toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.comments.CommentsActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommentsActivity.this.onBackPressed();
            }
        });
    }

    @Override // pl.jbzd.app.view.AuthActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (e() != null) {
            e().setScreenName("Komentarze");
            e().send(new HitBuilders.ScreenViewBuilder().build());
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.commentView.a()) {
            a(true);
        }
    }

    private void a(boolean z) {
        Intent intent = new Intent();
        intent.putExtra("ARG_COMMENTS_COUNTER", this.d.realmGet$comments_counter());
        setResult(-1, intent);
        finish();
        overridePendingTransition(0, z ? R.anim.from_left_to_right : 0);
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsView.b
    public void onLatestClick(View view) {
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsView.b
    public void onPopularClick(View view) {
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsView.b
    public void a(View view, EditText editText, Media media, boolean z) {
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsView.b
    public void a() {
        if (e() != null) {
            e().send(new HitBuilders.EventBuilder().setCategory("Komentarze").setAction("Dodanie komentarza").build());
        }
        Media media = this.d;
        media.realmSet$comments_counter(media.realmGet$comments_counter() + 1);
        this.txtToolbarTitle.setText(getString(R.string.comments_toolbar, new Object[]{Integer.valueOf(this.d.realmGet$comments_counter())}));
        if (!isFinishing()) {
            Toast.makeText(this, (int) R.string.comment_has_been_added, 0).show();
        }
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsView.b
    public void a(View view, boolean z) {
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsView.b
    public void a(String str) {
        if (!isFinishing()) {
            if (str == null) {
                str = getString(R.string.error_while_adding_comment);
            }
            Toast.makeText(this, str, 0).show();
        }
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsAdapter.b
    public void a(View view, Comment comment, int i) {
        if (comment != null && comment.realmGet$user() != null && comment.realmGet$user().realmGet$id() > 0) {
            Intent intent = new Intent(this, UserActivity.class);
            intent.putExtra("ARG_USER_ID", comment.realmGet$user().realmGet$id());
            startActivity(intent);
            overridePendingTransition(0, 0);
        }
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsAdapter.b
    public void b(View view, Comment comment, int i) {
        if (comment != null && comment.realmGet$user() != null && comment.realmGet$user().realmGet$id() > 0) {
            Intent intent = new Intent(this, UserActivity.class);
            intent.putExtra("ARG_USER_ID", comment.realmGet$user().realmGet$id());
            startActivity(intent);
            overridePendingTransition(0, 0);
        }
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsAdapter.b
    public void a(View view, Comment comment, int i, int i2) {
        if (e() != null) {
            e().send(new HitBuilders.EventBuilder().setCategory("Vote").setAction("Komentarze").setLabel(i2 == 1 ? "plus" : "minus").build());
        }
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsAdapter.b
    public void a(CommentResponse commentResponse, int i, int i2) {
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsAdapter.b
    public void c(View view, Comment comment, int i) {
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsAdapter.b
    public void d(View view, Comment comment, int i) {
        if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
            SignInDialog signInDialog = (SignInDialog) getFragmentManager().findFragmentByTag(SignInDialog.class.getSimpleName());
            if (signInDialog == null) {
                signInDialog = new SignInDialog();
            }
            if (!signInDialog.isAdded()) {
                signInDialog.show(getFragmentManager(), SignInDialog.class.getSimpleName());
                return;
            }
            return;
        }
        ApiClient.getApiService().comment_report(comment.realmGet$id(), ApiClient.getToken()).enqueue(new SimpleApiCallback<CommentResponse>() { // from class: pl.jbzd.app.view.comments.CommentsActivity.3
            @Override // pl.jbzd.api.callback.SimpleApiCallback
            /* renamed from: a */
            public void onSuccess(CommentResponse commentResponse) {
                if (!CommentsActivity.this.isFinishing()) {
                    Toast.makeText(CommentsActivity.this, (int) R.string.popup_comment_noticed, 0).show();
                }
            }

            @Override // pl.jbzd.api.callback.SimpleApiCallback
            public void onError(ApiException apiException) {
                if (!CommentsActivity.this.isFinishing()) {
                    Toast.makeText(CommentsActivity.this, apiException.message(), 0).show();
                }
            }
        });
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsView.c
    public void a(Media media, List<Comment> list) {
    }
}
