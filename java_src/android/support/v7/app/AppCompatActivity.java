package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.ae;
import android.support.v4.app.ba;
import android.support.v7.app.a;
import android.support.v7.view.b;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.ax;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public class AppCompatActivity extends FragmentActivity implements ba.a, a.b, d {
    private e mDelegate;
    private boolean mEatKeyUpEvent;
    private Resources mResources;
    private int mThemeId = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        e delegate = getDelegate();
        delegate.i();
        delegate.a(bundle);
        if (delegate.j() && this.mThemeId != 0) {
            if (Build.VERSION.SDK_INT >= 23) {
                onApplyThemeResource(getTheme(), this.mThemeId, false);
            } else {
                setTheme(this.mThemeId);
            }
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        this.mThemeId = i;
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().b(bundle);
    }

    public ActionBar getSupportActionBar() {
        return getDelegate().a();
    }

    public void setSupportActionBar(Toolbar toolbar) {
        getDelegate().a(toolbar);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return getDelegate().b();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        getDelegate().b(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        getDelegate().a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().a(view, layoutParams);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().b(view, layoutParams);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getDelegate().a(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        getDelegate().e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        getDelegate().c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        getDelegate().d();
    }

    @Override // android.app.Activity
    public View findViewById(int i) {
        return getDelegate().a(i);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() == 16908332 && supportActionBar != null && (supportActionBar.a() & 4) != 0) {
            return onSupportNavigateUp();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().g();
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        getDelegate().a(charSequence);
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().c(i);
    }

    @Override // android.support.v4.app.FragmentActivity
    public void supportInvalidateOptionsMenu() {
        getDelegate().f();
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().f();
    }

    @Override // android.support.v7.app.d
    public void onSupportActionModeStarted(android.support.v7.view.b bVar) {
    }

    @Override // android.support.v7.app.d
    public void onSupportActionModeFinished(android.support.v7.view.b bVar) {
    }

    @Override // android.support.v7.app.d
    public android.support.v7.view.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    public android.support.v7.view.b startSupportActionMode(b.a aVar) {
        return getDelegate().a(aVar);
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z) {
    }

    @Deprecated
    public void setSupportProgress(int i) {
    }

    public void onCreateSupportNavigateUpTaskStack(ba baVar) {
        baVar.a((Activity) this);
    }

    public void onPrepareSupportNavigateUpTaskStack(ba baVar) {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent != null) {
            if (supportShouldUpRecreateTask(supportParentActivityIntent)) {
                ba a2 = ba.a((Context) this);
                onCreateSupportNavigateUpTaskStack(a2);
                onPrepareSupportNavigateUpTaskStack(a2);
                a2.a();
                try {
                    android.support.v4.app.a.a((Activity) this);
                } catch (IllegalStateException e) {
                    finish();
                }
            } else {
                supportNavigateUpTo(supportParentActivityIntent);
            }
            return true;
        }
        return false;
    }

    @Override // android.support.v4.app.ba.a
    public Intent getSupportParentActivityIntent() {
        return ae.a(this);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return ae.a(this, intent);
    }

    public void supportNavigateUpTo(Intent intent) {
        ae.b(this, intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    @Override // android.support.v7.app.a.b
    public a.InterfaceC0036a getDrawerToggleDelegate() {
        return getDelegate().h();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        getDelegate().c(bundle);
    }

    public e getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = e.a(this, this);
        }
        return this.mDelegate;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (android.support.v4.view.h.b(keyEvent) && keyEvent.getUnicodeChar(keyEvent.getMetaState() & (-28673)) == 60) {
            int action = keyEvent.getAction();
            if (action == 0) {
                ActionBar supportActionBar = getSupportActionBar();
                if (supportActionBar != null && supportActionBar.b() && supportActionBar.g()) {
                    this.mEatKeyUpEvent = true;
                    return true;
                }
            } else if (action == 1 && this.mEatKeyUpEvent) {
                this.mEatKeyUpEvent = false;
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.mResources == null && ax.a()) {
            this.mResources = new ax(this, super.getResources());
        }
        return this.mResources == null ? super.getResources() : this.mResources;
    }
}
