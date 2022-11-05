package pl.jbzd.app.view.main;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.u;
import android.support.v4.app.y;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Toast;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.google.android.gms.analytics.HitBuilders;
import com.madsdk.AdView;
import io.realm.l;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Random;
import net.gotev.uploadservice.ServerResponse;
import net.gotev.uploadservice.UploadInfo;
import net.gotev.uploadservice.e;
import net.gotev.uploadservice.i;
import org.json.JSONArray;
import org.json.JSONObject;
import pl.aprilapps.easyphotopicker.EasyImage;
import pl.jbzd.R;
import pl.jbzd.a.b;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.auth.LoginCallback;
import pl.jbzd.api.auth.LogoutCallback;
import pl.jbzd.api.callback.EmptyApiCallback;
import pl.jbzd.api.callback.LoginApiCallback;
import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.UserResponse;
import pl.jbzd.app.MyApplication;
import pl.jbzd.app.fcm.MyFirebaseInstanceIDService;
import pl.jbzd.app.fcm.MyFirebaseMessagingService;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.ui.view.dialog.AddKwejkDialog;
import pl.jbzd.app.ui.view.dialog.SignInDialog;
import pl.jbzd.app.view.feed.FeedFragment;
import pl.jbzd.app.view.feed.FeedTopFragment;
import pl.jbzd.app.view.gallery.GalleryActivity;
import pl.jbzd.app.view.menu.MenuActivity;
import pl.jbzd.app.view.menu.MenuAdapter;
import pl.jbzd.app.view.menu.model.Item;
import pl.jbzd.app.view.menu.model.a;
import pl.jbzd.app.view.menu.model.c;
import pl.jbzd.app.view.settings.SettingsActivity;
import pl.jbzd.app.view.settings.SettingsFragment;
import pl.jbzd.app.view.user.UserActivity;
import pl.jbzd.core.a.d;
/* loaded from: classes3.dex */
public class MainActivity extends MenuActivity implements AddKwejkDialog.a {
    public static boolean d;
    public Item g;
    private BroadcastReceiver j;
    private long i = 0;
    public FragmentType e = null;
    public FragmentType f = null;
    private List<a> k = new ArrayList();

    /* loaded from: classes3.dex */
    public enum FragmentType {
        HOME,
        RANDOM,
        WAITING,
        TOP,
        FAVORITE,
        CAMERA,
        GALLERY,
        SETTINGS,
        SIGN_IN,
        USER_PROFILE
    }

    @Override // pl.jbzd.app.view.menu.MenuActivity, pl.jbzd.app.view.AuthActivity, pl.jbzd.core.MvpBaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        Media media;
        super.onCreate(bundle);
        b.a().a(this);
        setContentView(R.layout.main_activity);
        l.k();
        d = false;
        if (bundle == null && getIntent() != null) {
            try {
                media = (Media) getIntent().getParcelableExtra("ARG_MEDIA");
            } catch (Exception e) {
                media = null;
            }
            if (media != null) {
                Intent intent = new Intent(this, GalleryActivity.class);
                intent.putExtra("ARG_MEDIA", media);
                startActivityForResult(intent, 321);
                overridePendingTransition(0, 0);
            }
        }
        a();
        f();
        g();
        this.j = new BroadcastReceiver() { // from class: pl.jbzd.app.view.main.MainActivity.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent2) {
                if (intent2.getAction().equals(MyFirebaseInstanceIDService.REGISTRATION_COMPLETE)) {
                    com.google.firebase.messaging.a.a().a("global");
                    String string = MainActivity.this.getApplicationContext().getSharedPreferences(MainActivity.this.getPackageName(), 0).getString("firebase_token", null);
                    if (string != null) {
                        ApiClient.getApiService().token_create(io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE, string).enqueue(new EmptyApiCallback());
                    }
                }
            }
        };
        if (bundle != null) {
            this.e = (FragmentType) bundle.getSerializable("ARG_CURRENT_FRAGMENT");
            this.f = (FragmentType) bundle.getSerializable("ARG_PREVIOUS_FRAGMENT");
            this.g = (Item) bundle.getParcelable("ARG_ITEM");
        } else {
            this.e = FragmentType.HOME;
            this.f = FragmentType.HOME;
            this.g = null;
        }
        b(this.e, this.g);
        i();
        if (ApiClient.getToken() != null && !ApiClient.getToken().isEmpty()) {
            ApiClient.getApiService().user_sign_in(ApiClient.getToken()).enqueue(new LoginApiCallback(this) { // from class: pl.jbzd.app.view.main.MainActivity.6
                @Override // pl.jbzd.api.callback.SimpleApiCallback
                /* renamed from: a */
                public void onSuccess(UserResponse userResponse) {
                }

                @Override // pl.jbzd.api.callback.SimpleApiCallback
                public void onError(ApiException apiException) {
                    ApiClient.getInstance().logout(MainActivity.this);
                }
            });
        }
    }

    @Override // pl.jbzd.app.view.AuthActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        b.a().b(this);
        android.support.v4.content.l.a(this).a(this.j, new IntentFilter(MyFirebaseInstanceIDService.REGISTRATION_COMPLETE));
        android.support.v4.content.l.a(this).a(this.j, new IntentFilter(MyFirebaseMessagingService.PUSH_NOTIFICATION));
        d.b(getApplicationContext());
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        b.a().c(this);
        android.support.v4.content.l.a(this).a(this.j);
        super.onPause();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        b.a().d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pl.jbzd.app.view.AuthActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        EasyImage.a(i, i2, intent, this, new pl.aprilapps.easyphotopicker.a() { // from class: pl.jbzd.app.view.main.MainActivity.7
            @Override // pl.aprilapps.easyphotopicker.a, pl.aprilapps.easyphotopicker.EasyImage.a
            public void a(Exception exc, EasyImage.ImageSource imageSource, int i3) {
                Toast.makeText(MainActivity.this, (int) R.string.error_select_image, 1).show();
            }

            @Override // pl.aprilapps.easyphotopicker.EasyImage.a
            public void a(List<File> list, EasyImage.ImageSource imageSource, int i3) {
                if (list.size() > 0 && list.get(0) != null) {
                    File file = list.get(0);
                    AddKwejkDialog addKwejkDialog = (AddKwejkDialog) MainActivity.this.getFragmentManager().findFragmentByTag(AddKwejkDialog.class.getSimpleName());
                    if (addKwejkDialog == null) {
                        addKwejkDialog = new AddKwejkDialog();
                    }
                    if (addKwejkDialog.isAdded()) {
                        addKwejkDialog.dismissAllowingStateLoss();
                    }
                    addKwejkDialog.a(file);
                    addKwejkDialog.show(MainActivity.this.getFragmentManager(), AddKwejkDialog.class.getSimpleName());
                }
            }

            @Override // pl.aprilapps.easyphotopicker.a, pl.aprilapps.easyphotopicker.EasyImage.a
            public void a(EasyImage.ImageSource imageSource, int i3) {
                File a2;
                if (imageSource == EasyImage.ImageSource.CAMERA && (a2 = EasyImage.a(MainActivity.this)) != null) {
                    a2.delete();
                }
            }
        });
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        MyApplication.a((Context) this).c(this);
        b.a().e(this);
        if (d) {
            Fresco.getImagePipeline().clearCaches();
        }
        if (!l.k().j()) {
            l.k().close();
        }
        super.onDestroy();
        if (d) {
            d = false;
            pl.jbzd.core.a.a.d(getApplicationContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        try {
            bundle.putSerializable("ARG_CURRENT_FRAGMENT", this.e);
            bundle.putSerializable("ARG_PREVIOUS_FRAGMENT", this.f);
            bundle.putParcelable("ARG_ITEM", this.g);
        } catch (Exception e) {
            bundle.putSerializable("ARG_CURRENT_FRAGMENT", FragmentType.HOME);
            bundle.putSerializable("ARG_PREVIOUS_FRAGMENT", FragmentType.HOME);
            bundle.putParcelable("ARG_ITEM", null);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.layDrawer.g(8388611)) {
            this.layDrawer.f(8388611);
        } else if (getSupportFragmentManager().e() > 1 && FragmentType.SETTINGS.equals(this.e)) {
            getSupportFragmentManager().c();
            this.layDrawer.setDrawerLockMode(0);
            Fragment a2 = getSupportFragmentManager().a(this.f.name());
            if (a2 != null && (a2 instanceof pl.jbzd.app.b.a)) {
                pl.jbzd.app.b.a aVar = (pl.jbzd.app.b.a) a2;
                b(aVar.a(), aVar.b());
            }
        } else if (this.i + 3000 < System.currentTimeMillis()) {
            this.i = System.currentTimeMillis();
            Toast.makeText(this, (int) R.string.info_tap_again_to_close, 0).show();
        } else {
            finish();
        }
    }

    public pl.jbzd.app.view.a a(FragmentType fragmentType, Item item) {
        pl.jbzd.app.view.a aVar = (pl.jbzd.app.view.a) getSupportFragmentManager().a(fragmentType.name());
        if (aVar == null) {
            if (FragmentType.HOME.equals(fragmentType) || FragmentType.RANDOM.equals(fragmentType) || FragmentType.WAITING.equals(fragmentType) || FragmentType.FAVORITE.equals(fragmentType)) {
                return FeedFragment.a(fragmentType, item);
            }
            if (FragmentType.TOP.equals(fragmentType)) {
                return FeedTopFragment.a(item);
            }
            if (FragmentType.USER_PROFILE.equals(fragmentType)) {
                return FeedFragment.a(fragmentType, item.c, (Item) null);
            }
            if (fragmentType == FragmentType.SETTINGS) {
                return SettingsFragment.a(item);
            }
            return aVar;
        }
        return aVar;
    }

    public void b(FragmentType fragmentType, Item item) {
        pl.jbzd.app.view.a a2 = a(fragmentType, item);
        if (FragmentType.HOME.equals(fragmentType) || FragmentType.RANDOM.equals(fragmentType) || FragmentType.WAITING.equals(fragmentType) || FragmentType.FAVORITE.equals(fragmentType) || FragmentType.TOP.equals(fragmentType)) {
            if (item != null) {
                this.txtToolbarTitle.setText(item.d);
            } else {
                this.txtToolbarTitle.setText(R.string.menu_main_home);
            }
        } else if (FragmentType.USER_PROFILE.equals(fragmentType)) {
            this.txtToolbarTitle.setText(R.string.menu_user_profile);
        } else if (FragmentType.SETTINGS.equals(fragmentType)) {
            this.txtToolbarTitle.setText(getString(R.string.menu_settings));
        }
        if (a2 != null) {
            this.layDrawer.f(8388611);
            y a3 = getSupportFragmentManager().a();
            if (!FragmentType.SETTINGS.equals(this.e)) {
                this.f = this.e;
            } else {
                a3.a(R.anim.from_bottom_to_top, R.anim.from_left_to_right);
            }
            if (this.e != fragmentType) {
            }
            this.e = fragmentType;
            this.g = item;
            List<Fragment> f = getSupportFragmentManager().f();
            a3.b(R.id.fragmentContainer, a2, fragmentType.name());
            if (a2 instanceof SettingsFragment) {
                this.layDrawer.setDrawerLockMode(1);
            } else {
                this.layDrawer.setDrawerLockMode(0);
            }
            if (f != null) {
                for (Fragment fragment : f) {
                    if (fragment != null && fragment.isAdded() && !fragment.equals(a2)) {
                        a3.b(fragment);
                        if (fragment instanceof FeedFragment) {
                            ((FeedFragment) fragment).h();
                        } else if (fragment instanceof FeedTopFragment) {
                            ((FeedTopFragment) fragment).e();
                        }
                    }
                }
            }
            a3.b();
        }
    }

    public void a() {
        ((Toolbar.LayoutParams) this.txtToolbarTitle.getLayoutParams()).f530a = 17;
        this.txtToolbarTitle.setText(R.string.menu_main_home);
        this.txtToolbarTitle.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.main.MainActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Fragment h = MainActivity.this.h();
                if (h != null && (h instanceof FeedFragment)) {
                    ((FeedFragment) h).e();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment h() {
        return getSupportFragmentManager().a(this.e.name());
    }

    public void f() {
        this.k.add(new pl.jbzd.app.view.menu.model.d());
        this.k.add(new pl.jbzd.app.view.menu.model.b(getString(R.string.menu_main_header)));
        this.k.add(new Item(FragmentType.HOME.ordinal(), R.drawable.menu_item_home, getString(R.string.menu_main_home)));
        if (ApiClient.getToken() != null && !ApiClient.getToken().isEmpty()) {
            this.k.add(new Item(FragmentType.FAVORITE.ordinal(), R.drawable.menu_item_favorite, getString(R.string.menu_main_favorite)));
        }
        this.k.add(new Item(FragmentType.WAITING.ordinal(), R.drawable.menu_item_waiting, getString(R.string.menu_main_waiting)));
        this.k.add(new Item(FragmentType.RANDOM.ordinal(), R.drawable.menu_item_random, getString(R.string.menu_main_random)));
        this.k.add(new Item(FragmentType.TOP.ordinal(), R.drawable.menu_item_top, getString(R.string.menu_main_top)));
        this.k.add(new pl.jbzd.app.view.menu.model.b(getString(R.string.menu_header_add)));
        this.k.add(new Item(FragmentType.CAMERA.ordinal(), R.drawable.menu_item_camera, getString(R.string.menu_add_cammera)));
        this.k.add(new Item(FragmentType.GALLERY.ordinal(), R.drawable.menu_item_select_image, getString(R.string.menu_add_gallery)));
        this.k.add(new pl.jbzd.app.view.menu.model.b(getString(R.string.menu_header_social)));
        this.k.add(new c());
        final MenuAdapter menuAdapter = new MenuAdapter(this.k, new MenuAdapter.a() { // from class: pl.jbzd.app.view.main.MainActivity.9
            @Override // pl.jbzd.app.view.menu.MenuAdapter.a
            public void a(View view, Item item, int i) {
                if (item.b == FragmentType.HOME.ordinal()) {
                    MainActivity.this.b(FragmentType.HOME, item);
                } else if (item.b == FragmentType.RANDOM.ordinal()) {
                    MainActivity.this.b(FragmentType.RANDOM, item);
                } else if (item.b == FragmentType.WAITING.ordinal()) {
                    MainActivity.this.b(FragmentType.WAITING, item);
                } else if (item.b == FragmentType.TOP.ordinal()) {
                    MainActivity.this.b(FragmentType.TOP, item);
                } else if (item.b == FragmentType.FAVORITE.ordinal()) {
                    if (ApiClient.getToken() != null && !ApiClient.getToken().isEmpty()) {
                        MainActivity.this.b(FragmentType.FAVORITE, item);
                        return;
                    }
                    SignInDialog signInDialog = (SignInDialog) MainActivity.this.getFragmentManager().findFragmentByTag(SignInDialog.class.getSimpleName());
                    if (signInDialog == null) {
                        signInDialog = new SignInDialog();
                    }
                    if (!signInDialog.isAdded()) {
                        signInDialog.show(MainActivity.this.getFragmentManager(), SignInDialog.class.getSimpleName());
                    }
                } else if (item.b == FragmentType.CAMERA.ordinal()) {
                    MainActivity.this.b();
                } else if (item.b == FragmentType.GALLERY.ordinal()) {
                    MainActivity.this.c();
                }
            }

            @Override // pl.jbzd.app.view.menu.MenuAdapter.a
            public void a(View view) {
                if (MainActivity.this.e() != null) {
                    MainActivity.this.e().send(new HitBuilders.EventBuilder().setCategory("Menu").setAction("ustawienia").build());
                }
                if (MainActivity.this.layDrawer.g(8388611)) {
                    MainActivity.this.layDrawer.f(8388611);
                }
                MainActivity.this.startActivity(new Intent(MainActivity.this, SettingsActivity.class));
                MainActivity.this.overridePendingTransition(R.anim.fade_in, 0);
            }

            @Override // pl.jbzd.app.view.menu.MenuAdapter.a
            public void b(View view) {
                if (MainActivity.this.f5957a != null) {
                    MainActivity.this.f5957a.send(new HitBuilders.EventBuilder().setCategory("Menu").setAction("logowanie").build());
                }
                SignInDialog signInDialog = (SignInDialog) MainActivity.this.getFragmentManager().findFragmentByTag(SignInDialog.class.getSimpleName());
                if (signInDialog == null) {
                    signInDialog = new SignInDialog();
                }
                if (!signInDialog.isAdded()) {
                    signInDialog.show(MainActivity.this.getFragmentManager(), SignInDialog.class.getSimpleName());
                }
            }

            @Override // pl.jbzd.app.view.menu.MenuAdapter.a
            public void c(View view) {
                if (MainActivity.this.layDrawer.g(8388611)) {
                    MainActivity.this.layDrawer.f(8388611);
                }
                Intent intent = new Intent(MainActivity.this, UserActivity.class);
                intent.putExtra("ARG_USER_ID", ApiClient.getUserId());
                MainActivity.this.startActivity(intent);
                MainActivity.this.overridePendingTransition(R.anim.fade_in, 0);
            }

            @Override // pl.jbzd.app.view.menu.MenuAdapter.a
            public void d(View view) {
                if (MainActivity.this.e() != null) {
                    MainActivity.this.e().send(new HitBuilders.EventBuilder().setCategory("Menu").setAction("polubienie fanpage").setLabel("menu").build());
                }
                MainActivity.this.startActivity(pl.jbzd.core.a.c.b(MainActivity.this, "136504313116407", "jebzdzidy"));
            }

            @Override // pl.jbzd.app.view.menu.MenuAdapter.a
            public void e(View view) {
                if (MainActivity.this.e() != null) {
                    MainActivity.this.e().send(new HitBuilders.EventBuilder().setCategory("Menu").setAction("Instagram").build());
                }
                MainActivity.this.startActivity(pl.jbzd.core.a.c.a(MainActivity.this, "jbzd.pl"));
            }
        });
        ApiClient.getInstance().addLoginCallback(new LoginCallback() { // from class: pl.jbzd.app.view.main.MainActivity.10
            @Override // pl.jbzd.api.auth.LoginCallback
            public void onSuccess(UserResponse userResponse) {
                if (menuAdapter != null) {
                    if (menuAdapter.a(FragmentType.FAVORITE.ordinal()) == -1) {
                        int a2 = menuAdapter.a(FragmentType.HOME.ordinal());
                        MainActivity.this.k.add(a2 == -1 ? 3 : a2 + 1, new Item(FragmentType.FAVORITE.ordinal(), R.drawable.menu_item_favorite, MainActivity.this.getString(R.string.menu_main_favorite)));
                    }
                    menuAdapter.notifyDataSetChanged();
                }
            }
        });
        ApiClient.getInstance().addLogoutCallback(new LogoutCallback() { // from class: pl.jbzd.app.view.main.MainActivity.11
            @Override // pl.jbzd.api.auth.LogoutCallback
            public void onSuccess() {
                if (menuAdapter != null) {
                    menuAdapter.notifyItemChanged(0);
                    int a2 = menuAdapter.a(FragmentType.FAVORITE.ordinal());
                    if (a2 != -1) {
                        MainActivity.this.k.remove(a2);
                        menuAdapter.notifyItemRemoved(a2);
                    }
                }
            }
        });
        this.rvMenu.setAdapter(menuAdapter);
    }

    @Override // pl.jbzd.app.view.AuthActivity
    public void b() {
        if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
            SignInDialog signInDialog = (SignInDialog) getFragmentManager().findFragmentByTag(SignInDialog.class.getSimpleName());
            if (signInDialog == null) {
                signInDialog = new SignInDialog();
            }
            if (!signInDialog.isAdded()) {
                signInDialog.a(1001);
                signInDialog.show(getFragmentManager(), SignInDialog.class.getSimpleName());
                return;
            }
            return;
        }
        if (this.layDrawer.g(8388611)) {
            this.layDrawer.f(8388611);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (!(android.support.v4.content.b.b(this, "android.permission.CAMERA") == 0 && android.support.v4.content.b.b(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0)) {
                android.support.v4.app.a.a(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.CAMERA"}, 113);
                return;
            }
        }
        new Handler().postDelayed(new Runnable() { // from class: pl.jbzd.app.view.main.MainActivity.12
            @Override // java.lang.Runnable
            public void run() {
                EasyImage.b((Activity) MainActivity.this, 101);
            }
        }, 250L);
    }

    @Override // pl.jbzd.app.view.AuthActivity
    public void c() {
        if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
            SignInDialog signInDialog = (SignInDialog) getFragmentManager().findFragmentByTag(SignInDialog.class.getSimpleName());
            if (signInDialog == null) {
                signInDialog = new SignInDialog();
            }
            if (!signInDialog.isAdded()) {
                signInDialog.a(1002);
                signInDialog.show(getFragmentManager(), SignInDialog.class.getSimpleName());
                return;
            }
            return;
        }
        if (this.layDrawer.g(8388611)) {
            this.layDrawer.f(8388611);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (!(android.support.v4.content.b.b(this, "android.permission.READ_EXTERNAL_STORAGE") == 0 && android.support.v4.content.b.b(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0)) {
                android.support.v4.app.a.a(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 114);
                return;
            }
        }
        new Handler().postDelayed(new Runnable() { // from class: pl.jbzd.app.view.main.MainActivity.13
            @Override // java.lang.Runnable
            public void run() {
                EasyImage.a((Activity) MainActivity.this, 102);
            }
        }, 250L);
    }

    public void g() {
        getSupportFragmentManager().a(new u.b() { // from class: pl.jbzd.app.view.main.MainActivity.2
            @Override // android.support.v4.app.u.b
            public void a() {
                MainActivity.this.i();
            }
        });
        this.toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.main.MainActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.layDrawer.a(8388611) != 0) {
                    MainActivity.this.onBackPressed();
                } else {
                    MainActivity.this.layDrawer.e(8388611);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.layDrawer.a(8388611) == 0) {
            this.h.a(true);
            getSupportActionBar().b(false);
            getSupportActionBar().a(true);
            this.h.a();
            return;
        }
        new Handler().post(new Runnable() { // from class: pl.jbzd.app.view.main.MainActivity.4
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.h.a(false);
                MainActivity.this.getSupportActionBar().b(true);
                MainActivity.this.getSupportActionBar().a(true);
            }
        });
    }

    @Override // pl.jbzd.app.ui.view.dialog.AddKwejkDialog.a
    public boolean a(final AddKwejkDialog addKwejkDialog, View view, String str, List<String> list, File file) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", ApiClient.getToken());
            jSONObject.put("tags", new JSONArray((Collection) list));
            jSONObject.put("type", AdView.DEFAULT_IMAGE_NAME);
            jSONObject.put("title", str);
            String jSONObject2 = jSONObject.toString();
            int nextInt = new Random().nextInt(99999999);
            if (addKwejkDialog != null) {
                addKwejkDialog.a(true);
            }
            ((e) ((e) new e(this, "http://api.jbzd.pl/api/media/create").b(file.getAbsolutePath(), AdView.DEFAULT_IMAGE_NAME).a("data", jSONObject2).a("build", "8").a("hash", pl.jbzd.core.a.a.a(jSONObject2 + nextInt + ApiClient.API_KEY)).a("salt", "" + nextInt).a(5)).a(new i() { // from class: pl.jbzd.app.view.main.MainActivity.5
                @Override // net.gotev.uploadservice.i
                public void a(Context context, UploadInfo uploadInfo) {
                }

                @Override // net.gotev.uploadservice.i
                public void a(Context context, UploadInfo uploadInfo, Exception exc) {
                    if (!MainActivity.this.isFinishing()) {
                        Toast.makeText(MainActivity.this.getApplicationContext(), MainActivity.this.getString(R.string.error_upload_image), 1).show();
                    }
                }

                @Override // net.gotev.uploadservice.i
                public void a(Context context, UploadInfo uploadInfo, ServerResponse serverResponse) {
                    boolean z = false;
                    if (!MainActivity.this.isFinishing()) {
                        if (addKwejkDialog != null && addKwejkDialog.isAdded() && addKwejkDialog.getShowsDialog()) {
                            addKwejkDialog.a(false);
                        }
                        if (serverResponse == null) {
                            z = true;
                        } else {
                            String b = serverResponse.b();
                            if (b == null || !b.contains("\"ok\"")) {
                                z = true;
                            }
                        }
                        if (z) {
                            if (serverResponse != null) {
                            }
                            Toast.makeText(MainActivity.this.getApplicationContext(), MainActivity.this.getString(R.string.error_upload_image), 1).show();
                            return;
                        }
                        if (addKwejkDialog != null && addKwejkDialog.isAdded() && addKwejkDialog.getShowsDialog()) {
                            addKwejkDialog.dismissAllowingStateLoss();
                        }
                        Toast.makeText(MainActivity.this.getApplicationContext(), (int) R.string.add_media_success, 1).show();
                    }
                }

                @Override // net.gotev.uploadservice.i
                public void b(Context context, UploadInfo uploadInfo) {
                }
            })).b();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override // pl.jbzd.app.ui.view.dialog.AddKwejkDialog.a
    public boolean a(AddKwejkDialog addKwejkDialog, View view) {
        return false;
    }
}
