package android.support.v4.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.app.a;
import android.support.v4.app.c;
import android.support.v4.media.session.MediaControllerCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.games.request.GameRequest;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public class FragmentActivity extends m implements a.InterfaceC0009a, c.b {
    static final String ALLOCATED_REQUEST_INDICIES_TAG = "android:support:request_indicies";
    static final String FRAGMENTS_TAG = "android:support:fragments";
    static final int MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS = 65534;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    static final String NEXT_CANDIDATE_REQUEST_INDEX_TAG = "android:support:next_request_index";
    static final String REQUEST_FRAGMENT_WHO_TAG = "android:support:request_fragment_who";
    private static final String TAG = "FragmentActivity";
    boolean mCreated;
    int mNextCandidateRequestIndex;
    boolean mOptionsMenuInvalidated;
    android.support.v4.f.l<String> mPendingFragmentActivityResults;
    boolean mRequestedPermissionsFromFragment;
    boolean mResumed;
    boolean mRetaining;
    final Handler mHandler = new Handler() { // from class: android.support.v4.app.FragmentActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (FragmentActivity.this.mStopped) {
                        FragmentActivity.this.doReallyStop(false);
                        return;
                    }
                    return;
                case 2:
                    FragmentActivity.this.onResumeFragments();
                    FragmentActivity.this.mFragments.o();
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    };
    final s mFragments = s.a(new a());
    boolean mStopped = true;
    boolean mReallyStopped = true;

    @Override // android.support.v4.app.l, android.app.Activity, android.view.LayoutInflater.Factory2
    public /* bridge */ /* synthetic */ View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.support.v4.app.k, android.app.Activity, android.view.LayoutInflater.Factory
    public /* bridge */ /* synthetic */ View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(str, context, attributeSet);
    }

    @Override // android.support.v4.app.m, android.app.Activity
    public /* bridge */ /* synthetic */ void startActivityForResult(Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.support.v4.app.k, android.app.Activity
    public /* bridge */ /* synthetic */ void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.support.v4.app.m, android.app.Activity
    public /* bridge */ /* synthetic */ void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    /* loaded from: classes.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        Object f207a;
        w b;
        android.support.v4.f.k<String, ac> c;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.c();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a2 = this.mPendingFragmentActivityResults.a(i4);
            this.mPendingFragmentActivityResults.c(i4);
            if (a2 == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a3 = this.mFragments.a(a2);
            if (a3 == null) {
                Log.w(TAG, "Activity result no fragment exists for who: " + a2);
                return;
            } else {
                a3.onActivityResult(65535 & i, i2, intent);
                return;
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.mFragments.a().d()) {
            super.onBackPressed();
        }
    }

    @Deprecated
    public final void setSupportMediaController(MediaControllerCompat mediaControllerCompat) {
        MediaControllerCompat.a(this, mediaControllerCompat);
    }

    @Deprecated
    public final MediaControllerCompat getSupportMediaController() {
        return MediaControllerCompat.a(this);
    }

    public void supportFinishAfterTransition() {
        android.support.v4.app.a.b((Activity) this);
    }

    public void setEnterSharedElementCallback(ay ayVar) {
        android.support.v4.app.a.a(this, ayVar);
    }

    public void setExitSharedElementCallback(ay ayVar) {
        android.support.v4.app.a.b(this, ayVar);
    }

    public void supportPostponeEnterTransition() {
        android.support.v4.app.a.c(this);
    }

    public void supportStartPostponedEnterTransition() {
        android.support.v4.app.a.d(this);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.a(z);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.b(z);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mFragments.a((Fragment) null);
        super.onCreate(bundle);
        b bVar = (b) getLastNonConfigurationInstance();
        if (bVar != null) {
            this.mFragments.a(bVar.c);
        }
        if (bundle != null) {
            this.mFragments.a(bundle.getParcelable(FRAGMENTS_TAG), bVar != null ? bVar.b : null);
            if (bundle.containsKey(NEXT_CANDIDATE_REQUEST_INDEX_TAG)) {
                this.mNextCandidateRequestIndex = bundle.getInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG);
                int[] intArray = bundle.getIntArray(ALLOCATED_REQUEST_INDICIES_TAG);
                String[] stringArray = bundle.getStringArray(REQUEST_FRAGMENT_WHO_TAG);
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w(TAG, "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.mPendingFragmentActivityResults = new android.support.v4.f.l<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.mPendingFragmentActivityResults.b(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.mPendingFragmentActivityResults == null) {
            this.mPendingFragmentActivityResults = new android.support.v4.f.l<>();
            this.mNextCandidateRequestIndex = 0;
        }
        this.mFragments.f();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            boolean onCreatePanelMenu = super.onCreatePanelMenu(i, menu) | this.mFragments.a(menu, getMenuInflater());
            if (Build.VERSION.SDK_INT < 11) {
                return true;
            }
            return onCreatePanelMenu;
        }
        return super.onCreatePanelMenu(i, menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.v4.app.k
    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.a(view, str, context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        doReallyStop(false);
        this.mFragments.m();
        this.mFragments.q();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.n();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        switch (i) {
            case 0:
                return this.mFragments.a(menuItem);
            case 6:
                return this.mFragments.b(menuItem);
            default:
                return false;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        switch (i) {
            case 0:
                this.mFragments.b(menu);
                break;
        }
        super.onPanelClosed(i, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
            onResumeFragments();
        }
        this.mFragments.j();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.c();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.mResumed = true;
        this.mFragments.o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        onResumeFragments();
        this.mFragments.o();
    }

    protected void onResumeFragments() {
        this.mFragments.i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0 || menu == null) {
            return super.onPreparePanel(i, view, menu);
        }
        if (this.mOptionsMenuInvalidated) {
            this.mOptionsMenuInvalidated = false;
            menu.clear();
            onCreatePanelMenu(i, menu);
        }
        return onPrepareOptionsPanel(view, menu) | this.mFragments.a(menu);
    }

    @RestrictTo
    protected boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        if (this.mStopped) {
            doReallyStop(true);
        }
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        w e = this.mFragments.e();
        android.support.v4.f.k<String, ac> s = this.mFragments.s();
        if (e == null && s == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        b bVar = new b();
        bVar.f207a = onRetainCustomNonConfigurationInstance;
        bVar.b = e;
        bVar.c = s;
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable d = this.mFragments.d();
        if (d != null) {
            bundle.putParcelable(FRAGMENTS_TAG, d);
        }
        if (this.mPendingFragmentActivityResults.b() > 0) {
            bundle.putInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG, this.mNextCandidateRequestIndex);
            int[] iArr = new int[this.mPendingFragmentActivityResults.b()];
            String[] strArr = new String[this.mPendingFragmentActivityResults.b()];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mPendingFragmentActivityResults.b()) {
                    iArr[i2] = this.mPendingFragmentActivityResults.d(i2);
                    strArr[i2] = this.mPendingFragmentActivityResults.e(i2);
                    i = i2 + 1;
                } else {
                    bundle.putIntArray(ALLOCATED_REQUEST_INDICIES_TAG, iArr);
                    bundle.putStringArray(REQUEST_FRAGMENT_WHO_TAG, strArr);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.mStopped = false;
        this.mReallyStopped = false;
        this.mHandler.removeMessages(1);
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.g();
        }
        this.mFragments.c();
        this.mFragments.o();
        this.mFragments.p();
        this.mFragments.h();
        this.mFragments.r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        this.mHandler.sendEmptyMessage(1);
        this.mFragments.k();
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    public Object getLastCustomNonConfigurationInstance() {
        b bVar = (b) getLastNonConfigurationInstance();
        if (bVar != null) {
            return bVar.f207a;
        }
        return null;
    }

    public void supportInvalidateOptionsMenu() {
        if (Build.VERSION.SDK_INT >= 11) {
            d.a(this);
        } else {
            this.mOptionsMenuInvalidated = true;
        }
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (Build.VERSION.SDK_INT >= 11) {
        }
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print("mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.mReallyStopped);
        this.mFragments.a(str2, fileDescriptor, printWriter, strArr);
        this.mFragments.a().a(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.println("View Hierarchy:");
        dumpViewHierarchy(str + "  ", printWriter, getWindow().getDecorView());
    }

    private static String viewToString(View view) {
        String resourcePackageName;
        char c = 'F';
        char c2 = '.';
        StringBuilder sb = new StringBuilder(128);
        sb.append(view.getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(view)));
        sb.append(' ');
        switch (view.getVisibility()) {
            case 0:
                sb.append('V');
                break;
            case 4:
                sb.append('I');
                break;
            case 8:
                sb.append('G');
                break;
            default:
                sb.append('.');
                break;
        }
        sb.append(view.isFocusable() ? 'F' : '.');
        sb.append(view.isEnabled() ? 'E' : '.');
        sb.append(view.willNotDraw() ? '.' : 'D');
        sb.append(view.isHorizontalScrollBarEnabled() ? 'H' : '.');
        sb.append(view.isVerticalScrollBarEnabled() ? 'V' : '.');
        sb.append(view.isClickable() ? 'C' : '.');
        sb.append(view.isLongClickable() ? 'L' : '.');
        sb.append(' ');
        if (!view.isFocused()) {
            c = '.';
        }
        sb.append(c);
        sb.append(view.isSelected() ? 'S' : '.');
        if (view.isPressed()) {
            c2 = 'P';
        }
        sb.append(c2);
        sb.append(' ');
        sb.append(view.getLeft());
        sb.append(',');
        sb.append(view.getTop());
        sb.append('-');
        sb.append(view.getRight());
        sb.append(',');
        sb.append(view.getBottom());
        int id = view.getId();
        if (id != -1) {
            sb.append(" #");
            sb.append(Integer.toHexString(id));
            Resources resources = view.getResources();
            if (id != 0 && resources != null) {
                switch ((-16777216) & id) {
                    case 16777216:
                        resourcePackageName = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
                        String resourceTypeName = resources.getResourceTypeName(id);
                        String resourceEntryName = resources.getResourceEntryName(id);
                        sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                        sb.append(resourcePackageName);
                        sb.append(":");
                        sb.append(resourceTypeName);
                        sb.append("/");
                        sb.append(resourceEntryName);
                        break;
                    case 2130706432:
                        resourcePackageName = "app";
                        String resourceTypeName2 = resources.getResourceTypeName(id);
                        String resourceEntryName2 = resources.getResourceEntryName(id);
                        sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                        sb.append(resourcePackageName);
                        sb.append(":");
                        sb.append(resourceTypeName2);
                        sb.append("/");
                        sb.append(resourceEntryName2);
                        break;
                    default:
                        try {
                            resourcePackageName = resources.getResourcePackageName(id);
                            String resourceTypeName22 = resources.getResourceTypeName(id);
                            String resourceEntryName22 = resources.getResourceEntryName(id);
                            sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                            sb.append(resourcePackageName);
                            sb.append(":");
                            sb.append(resourceTypeName22);
                            sb.append("/");
                            sb.append(resourceEntryName22);
                            break;
                        } catch (Resources.NotFoundException e) {
                            break;
                        }
                }
            }
        }
        sb.append("}");
        return sb.toString();
    }

    private void dumpViewHierarchy(String str, PrintWriter printWriter, View view) {
        ViewGroup viewGroup;
        int childCount;
        printWriter.print(str);
        if (view == null) {
            printWriter.println("null");
            return;
        }
        printWriter.println(viewToString(view));
        if ((view instanceof ViewGroup) && (childCount = (viewGroup = (ViewGroup) view).getChildCount()) > 0) {
            String str2 = str + "  ";
            for (int i = 0; i < childCount; i++) {
                dumpViewHierarchy(str2, printWriter, viewGroup.getChildAt(i));
            }
        }
    }

    void doReallyStop(boolean z) {
        if (!this.mReallyStopped) {
            this.mReallyStopped = true;
            this.mRetaining = z;
            this.mHandler.removeMessages(1);
            onReallyStop();
        } else if (z) {
            this.mFragments.p();
            this.mFragments.c(true);
        }
    }

    void onReallyStop() {
        this.mFragments.c(this.mRetaining);
        this.mFragments.l();
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public u getSupportFragmentManager() {
        return this.mFragments.a();
    }

    public ac getSupportLoaderManager() {
        return this.mFragments.b();
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (!this.mStartedActivityFromFragment && i != -1) {
            checkForValidRequestCode(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.support.v4.app.c.b
    public final void validateRequestPermissionsRequestCode(int i) {
        if (!this.mRequestedPermissionsFromFragment && i != -1) {
            checkForValidRequestCode(i);
        }
    }

    @Override // android.app.Activity, android.support.v4.app.a.InterfaceC0009a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        int i2 = (i >> 16) & GameRequest.TYPE_ALL;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String a2 = this.mPendingFragmentActivityResults.a(i3);
            this.mPendingFragmentActivityResults.c(i3);
            if (a2 == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a3 = this.mFragments.a(a2);
            if (a3 == null) {
                Log.w(TAG, "Activity result no fragment exists for who: " + a2);
            } else {
                a3.onRequestPermissionsResult(i & GameRequest.TYPE_ALL, strArr, iArr);
            }
        }
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (Bundle) null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        this.mStartedActivityFromFragment = true;
        try {
            if (i == -1) {
                android.support.v4.app.a.a(this, intent, -1, bundle);
                this.mStartedActivityFromFragment = false;
                return;
            }
            checkForValidRequestCode(i);
            android.support.v4.app.a.a(this, intent, ((allocateRequestIndex(fragment) + 1) << 16) + (65535 & i), bundle);
        } finally {
            this.mStartedActivityFromFragment = false;
        }
    }

    public void startIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        this.mStartedIntentSenderFromFragment = true;
        try {
            if (i == -1) {
                android.support.v4.app.a.a(this, intentSender, i, intent, i2, i3, i4, bundle);
                this.mStartedIntentSenderFromFragment = false;
                return;
            }
            checkForValidRequestCode(i);
            android.support.v4.app.a.a(this, intentSender, ((allocateRequestIndex(fragment) + 1) << 16) + (65535 & i), intent, i2, i3, i4, bundle);
        } finally {
            this.mStartedIntentSenderFromFragment = false;
        }
    }

    private int allocateRequestIndex(Fragment fragment) {
        if (this.mPendingFragmentActivityResults.b() >= MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.mPendingFragmentActivityResults.f(this.mNextCandidateRequestIndex) >= 0) {
            this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
        }
        int i = this.mNextCandidateRequestIndex;
        this.mPendingFragmentActivityResults.b(i, fragment.mWho);
        this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
        return i;
    }

    void requestPermissionsFromFragment(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            android.support.v4.app.a.a(this, strArr, i);
            return;
        }
        checkForValidRequestCode(i);
        try {
            this.mRequestedPermissionsFromFragment = true;
            android.support.v4.app.a.a(this, strArr, ((allocateRequestIndex(fragment) + 1) << 16) + (65535 & i));
        } finally {
            this.mRequestedPermissionsFromFragment = false;
        }
    }

    /* loaded from: classes.dex */
    class a extends t<FragmentActivity> {
        public a() {
            super(FragmentActivity.this);
        }

        @Override // android.support.v4.app.t
        @SuppressLint({"NewApi"})
        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // android.support.v4.app.t
        public boolean a(Fragment fragment) {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // android.support.v4.app.t
        public LayoutInflater b() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // android.support.v4.app.t
        /* renamed from: c */
        public FragmentActivity g() {
            return FragmentActivity.this;
        }

        @Override // android.support.v4.app.t
        public void d() {
            FragmentActivity.this.supportInvalidateOptionsMenu();
        }

        @Override // android.support.v4.app.t
        public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
            FragmentActivity.this.startActivityFromFragment(fragment, intent, i, bundle);
        }

        @Override // android.support.v4.app.t
        public void a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
            FragmentActivity.this.startIntentSenderFromFragment(fragment, intentSender, i, intent, i2, i3, i4, bundle);
        }

        @Override // android.support.v4.app.t
        public void a(Fragment fragment, String[] strArr, int i) {
            FragmentActivity.this.requestPermissionsFromFragment(fragment, strArr, i);
        }

        @Override // android.support.v4.app.t
        public boolean a(String str) {
            return android.support.v4.app.a.a((Activity) FragmentActivity.this, str);
        }

        @Override // android.support.v4.app.t
        public boolean e() {
            return FragmentActivity.this.getWindow() != null;
        }

        @Override // android.support.v4.app.t
        public int f() {
            Window window = FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // android.support.v4.app.t
        public void b(Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // android.support.v4.app.t, android.support.v4.app.r
        public View a(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // android.support.v4.app.t, android.support.v4.app.r
        public boolean a() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }
}
