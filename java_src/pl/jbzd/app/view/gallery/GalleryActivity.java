package pl.jbzd.app.view.gallery;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.t;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.Toast;
import butterknife.BindView;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.callback.SimpleApiCallback;
import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.CommentResponse;
import pl.jbzd.app.MyApplication;
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.model.Picture;
import pl.jbzd.app.ui.view.comment.CommentsAdapter;
import pl.jbzd.app.ui.view.comment.CommentsView;
import pl.jbzd.app.ui.view.dialog.SignInDialog;
import pl.jbzd.app.view.AuthActivity;
import pl.jbzd.app.view.feed.FeedAdapter;
import pl.jbzd.app.view.gallery.GalleryAdapter;
import pl.jbzd.app.view.gallery.GalleryPicturesAdapter;
import pl.jbzd.app.view.user.UserActivity;
import pl.jbzd.core.a.c;
/* loaded from: classes3.dex */
public class GalleryActivity extends AuthActivity implements CommentsAdapter.b, CommentsView.b, CommentsView.c {
    private static int f = 0;
    private static int g = 0;
    private static int h = 0;
    @BindView
    FrameLayout commentLayout;
    @BindView
    CommentsView commentView;
    private GalleryAdapter d;
    private float j;
    private float k;
    @BindView
    FrameLayout layout;
    @BindView
    GalleryMainViewPager viewPager;
    private Media e = null;
    private boolean i = false;
    private float l = BitmapDescriptorFactory.HUE_RED;
    private boolean m = false;
    private boolean n = false;
    private boolean o = false;
    private final List<a> p = new ArrayList();

    @Override // pl.jbzd.app.view.AuthActivity
    public void b() {
    }

    @Override // pl.jbzd.app.view.AuthActivity
    public void c() {
    }

    @Override // pl.jbzd.app.view.AuthActivity, pl.jbzd.core.MvpBaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        int i;
        boolean z = false;
        super.onCreate(bundle);
        setContentView(R.layout.gallery_activity);
        overridePendingTransition(R.anim.trans_top_in, R.anim.trans_left_out);
        if (getIntent() != null) {
            try {
                this.e = (Media) getIntent().getParcelableExtra("ARG_MEDIA");
            } catch (Exception e) {
            }
        }
        if (this.e == null || this.e.realmGet$type() == null) {
            Toast.makeText(getApplicationContext(), (int) R.string.error_open_gallery, 0).show();
            finish();
        }
        FeedAdapter.c cVar = new FeedAdapter.c() { // from class: pl.jbzd.app.view.gallery.GalleryActivity.1
            @Override // pl.jbzd.app.view.feed.FeedAdapter.c
            public void a(String str) {
                Toast.makeText(GalleryActivity.this.getApplicationContext(), str, 0).show();
            }
        };
        if ("gallery".equals(this.e.realmGet$type())) {
            if (this.e.realmGet$pictures() == null || this.e.realmGet$pictures().isEmpty()) {
                Toast.makeText(getApplicationContext(), (int) R.string.error_open_gallery, 0).show();
                finish();
            }
            Iterator it = this.e.realmGet$pictures().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                Picture picture = (Picture) it.next();
                if (picture.realmGet$width() < 1 || picture.realmGet$height() < 1) {
                    picture.realmSet$width(this.e.realmGet$width());
                    picture.realmSet$height(this.e.realmGet$height());
                }
                if (picture.realmGet$image() == null || picture.realmGet$image().isEmpty()) {
                    i = i2;
                } else {
                    this.p.add(new a(cVar, picture, i2));
                    i = i2 + 1;
                }
                i2 = i;
            }
        } else {
            if (this.e.realmGet$image() == null || this.e.realmGet$image().isEmpty()) {
                Toast.makeText(getApplicationContext(), (int) R.string.error_open_gallery, 0).show();
                finish();
            }
            Picture picture2 = new Picture();
            picture2.realmSet$image(this.e.realmGet$image());
            picture2.realmSet$youtube(this.e.realmGet$youtube());
            picture2.realmSet$mp4(this.e.realmGet$movie());
            picture2.realmSet$width(this.e.realmGet$width());
            picture2.realmSet$height(this.e.realmGet$height());
            this.p.add(new a(cVar, picture2, 0));
        }
        if (this.p.isEmpty()) {
            Toast.makeText(getApplicationContext(), (int) R.string.error_open_gallery, 0).show();
            finish();
        }
        this.d = new GalleryAdapter(getApplicationContext(), this.viewPager, this.e, getIntent().getFloatExtra("ARG_POSITION", -1.0f), this.p, new GalleryPicturesAdapter.a() { // from class: pl.jbzd.app.view.gallery.GalleryActivity.2
            @Override // pl.jbzd.app.view.gallery.GalleryPicturesAdapter.a
            public void a(View view) {
                GalleryActivity.this.a(true);
            }

            @Override // pl.jbzd.app.view.gallery.GalleryPicturesAdapter.a
            public void a(View view, Media media) {
                if (GalleryActivity.this.e() != null) {
                    GalleryActivity.this.e().send(new HitBuilders.EventBuilder().setCategory("Komentarze").setAction("klik w button z treści").build());
                }
                GalleryActivity.this.h();
            }

            @Override // pl.jbzd.app.view.gallery.GalleryPicturesAdapter.a
            public void b(View view, Media media) {
                if (GalleryActivity.this.e() != null) {
                    GalleryActivity.this.e().send(new HitBuilders.EventBuilder().setCategory("Social").setAction("Share obrazka").build());
                }
                GalleryActivity.this.startActivity(Intent.createChooser(c.a(GalleryActivity.this, media.realmGet$title(), media.realmGet$share_url()), GalleryActivity.this.getString(R.string.share_title)));
            }

            @Override // pl.jbzd.app.view.gallery.GalleryPicturesAdapter.a
            public void b(View view) {
                GalleryActivity.this.d.a(false);
            }

            @Override // pl.jbzd.app.view.gallery.GalleryPicturesAdapter.a
            public void a(int i3) {
                if (GalleryActivity.this.f5957a != null) {
                    GalleryActivity.this.e().setScreenName("Galeria");
                    GalleryActivity.this.e().send(new HitBuilders.ScreenViewBuilder().build());
                }
            }
        }, bundle);
        this.viewPager.setAdapter(this.d);
        this.viewPager.addOnPageChangeListener(new ViewPager.e() { // from class: pl.jbzd.app.view.gallery.GalleryActivity.3

            /* renamed from: a  reason: collision with root package name */
            int f6028a;
            int b;

            @Override // android.support.v4.view.ViewPager.e
            public void a(int i3, float f2, int i4) {
            }

            @Override // android.support.v4.view.ViewPager.e
            public void b(int i3) {
                this.f6028a = i3;
                if (i3 == 1 && this.b == 0) {
                    GalleryActivity.this.a(false);
                }
            }

            @Override // android.support.v4.view.ViewPager.e
            public void a(int i3) {
                this.b = i3;
                if (this.f6028a == 1 && i3 == 0) {
                    GalleryActivity.this.a(false);
                }
            }
        });
        if (bundle != null && bundle.getBoolean("ARG_SHOW_COMMENTS", false)) {
            z = true;
        }
        this.i = z;
        this.layout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: pl.jbzd.app.view.gallery.GalleryActivity.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int unused = GalleryActivity.f = GalleryActivity.this.layout.getHeight();
                int unused2 = GalleryActivity.g = (int) (GalleryActivity.this.layout.getHeight() * 0.2f);
                int unused3 = GalleryActivity.h = GalleryActivity.g + pl.jbzd.core.a.a.a(80);
                GalleryActivity.this.commentView.getLayoutParams().height = GalleryActivity.this.layout.getHeight() - GalleryActivity.g;
                if (GalleryActivity.this.i) {
                    GalleryActivity.this.commentView.setTranslationY(GalleryActivity.g);
                    GalleryActivity.this.commentLayout.setVisibility(0);
                } else {
                    GalleryActivity.this.commentView.setTranslationY(GalleryActivity.f);
                    GalleryActivity.this.commentLayout.setVisibility(8);
                }
                GalleryActivity.this.layout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
        this.commentView.a(this, this, this);
        this.commentView.setMedia(this.e);
    }

    @Override // pl.jbzd.app.view.AuthActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        int currentItem;
        super.onResume();
        if (this.d != null && this.d.b.get(0) != null && (this.d.b.get(0) instanceof GalleryAdapter.PicturesViewHolder) && (currentItem = ((GalleryAdapter.PicturesViewHolder) this.d.b.get(0)).viewPagerPictures.getCurrentItem()) >= 0 && currentItem < this.p.size()) {
            this.p.get(currentItem).a();
        }
        if (this.f5957a != null) {
            e().setScreenName("Galeria");
            e().send(new HitBuilders.ScreenViewBuilder().build());
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MyApplication.a((Context) this).a(this);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MyApplication.a((Context) this).b(this);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.d.a(bundle);
        bundle.putBoolean("ARG_SHOW_COMMENTS", this.i);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.commentView.a()) {
            if (this.commentLayout.getVisibility() == 0) {
                i();
            } else if (!this.d.b()) {
                a(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        a(z, false);
    }

    private void a(boolean z, boolean z2) {
        int i;
        if (e() != null) {
            e().send(new HitBuilders.EventBuilder().setCategory("Galeria").setAction("wyjście z galerii").build());
        }
        Intent intent = new Intent();
        intent.putExtra("ARG_COMMENTS_COUNTER", this.e.realmGet$comments_counter());
        setResult(-1, intent);
        finish();
        if (z) {
            i = (!this.e.realmGet$type().equals("gallery") || z2) ? R.anim.from_top_to_bottom : R.anim.from_right_to_left;
        } else {
            i = 0;
        }
        overridePendingTransition(0, i);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i;
        boolean z;
        boolean z2 = true;
        if (this.d != null && this.d.a()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        try {
            i = t.b(motionEvent);
        } catch (Exception e) {
            i = -1;
        }
        if (i > -1) {
            if (!this.o) {
                this.o = motionEvent.getPointerCount() > 1;
            }
            if (this.o) {
                if (motionEvent.getPointerCount() == 1) {
                    float y = motionEvent.getY(i);
                    this.k = y;
                    this.j = y;
                    if (this.commentLayout.getVisibility() != 0 && this.k >= h) {
                        z2 = false;
                    }
                    this.m = z2;
                    this.o = false;
                    this.n = false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
            boolean z3 = this.commentLayout.getVisibility() == 0;
            float y2 = motionEvent.getY(i);
            switch (t.a(motionEvent)) {
                case 0:
                    this.k = y2;
                    this.j = y2;
                    this.m = !z3 || this.k < ((float) h);
                    break;
                case 1:
                case 3:
                    float abs = Math.abs(motionEvent.getY(i) - this.k);
                    if (y2 > this.k) {
                        z = z3 ? true : false;
                    } else {
                        z = !z3;
                    }
                    if (this.m && abs >= pl.jbzd.core.a.a.a((int) DrawableConstants.CtaButton.WIDTH_DIPS)) {
                        if (!z3 && y2 > this.k) {
                            a(true, true);
                        }
                        if (z) {
                            this.n = true;
                            if (z) {
                                i();
                                break;
                            } else {
                                if (e() != null) {
                                    e().send(new HitBuilders.EventBuilder().setCategory("Komentarze").setAction("Wysunięcie komentarzy").build());
                                }
                                h();
                                break;
                            }
                        }
                    }
                    break;
                case 2:
                    if (this.m && Math.abs(this.j - y2) >= 20.0f) {
                        int i2 = this.j > y2 ? 1 : -1;
                        this.j = y2;
                        if (this.l == BitmapDescriptorFactory.HUE_RED) {
                            this.l = i2;
                            break;
                        } else if (this.l != i2) {
                            this.l = i2;
                            this.k = this.j;
                            break;
                        }
                    }
                    break;
            }
        }
        return this.n || super.dispatchTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        this.i = true;
        this.commentLayout.setVisibility(0);
        this.commentLayout.setAlpha(0.7f);
        this.commentLayout.animate().alpha(1.0f).setDuration(250L).start();
        this.commentView.animate().withEndAction(new Runnable() { // from class: pl.jbzd.app.view.gallery.GalleryActivity.5
            @Override // java.lang.Runnable
            public void run() {
                GalleryActivity.this.n = false;
            }
        }).translationY(g).setInterpolator(new AccelerateInterpolator(2.0f)).setDuration(250L).start();
    }

    private void i() {
        this.i = false;
        this.commentLayout.setAlpha(1.0f);
        this.commentLayout.animate().alpha(0.7f).setDuration(250L).start();
        this.commentView.animate().withEndAction(new Runnable() { // from class: pl.jbzd.app.view.gallery.GalleryActivity.6
            @Override // java.lang.Runnable
            public void run() {
                GalleryActivity.this.commentLayout.setVisibility(8);
                GalleryActivity.this.n = false;
            }
        }).translationY(f).setInterpolator(new DecelerateInterpolator(2.0f)).setDuration(250L).start();
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.commentView.getWindowToken(), 2);
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
    @SuppressLint({"SetTextI18n"})
    public void a() {
        if (e() != null) {
            e().send(new HitBuilders.EventBuilder().setCategory("Komentarze").setAction("Dodanie komentarza").build());
        }
        Media media = this.e;
        media.realmSet$comments_counter(media.realmGet$comments_counter() + 1);
        if (this.d.b.get(0) != null && (this.d.b.get(0) instanceof GalleryAdapter.PicturesViewHolder)) {
            ((GalleryAdapter.PicturesViewHolder) this.d.b.get(0)).txtComments.setText("" + this.e.realmGet$comments_counter());
        }
        if (!isFinishing()) {
            Toast.makeText(this, (int) R.string.comment_has_been_added, 0).show();
        }
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsView.b
    public void a(View view, boolean z) {
        if (z) {
            this.commentView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.commentView.getLayoutParams().height = -1;
            return;
        }
        this.commentView.setTranslationY(g);
        this.commentView.getLayoutParams().height = this.layout.getHeight() - g;
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
        ApiClient.getApiService().comment_report(comment.realmGet$id(), ApiClient.getToken()).enqueue(new SimpleApiCallback<CommentResponse>() { // from class: pl.jbzd.app.view.gallery.GalleryActivity.7
            @Override // pl.jbzd.api.callback.SimpleApiCallback
            /* renamed from: a */
            public void onSuccess(CommentResponse commentResponse) {
                if (!GalleryActivity.this.isFinishing()) {
                    Toast.makeText(GalleryActivity.this, (int) R.string.popup_comment_noticed, 0).show();
                }
            }

            @Override // pl.jbzd.api.callback.SimpleApiCallback
            public void onError(ApiException apiException) {
                if (!GalleryActivity.this.isFinishing()) {
                    Toast.makeText(GalleryActivity.this, apiException.message(), 0).show();
                }
            }
        });
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsView.c
    public void a(Media media, List<Comment> list) {
    }
}
