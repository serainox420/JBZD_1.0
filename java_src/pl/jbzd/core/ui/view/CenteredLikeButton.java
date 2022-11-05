package pl.jbzd.core.ui.view;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.l;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.facebook.FacebookException;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.Utility;
import com.facebook.share.internal.LikeActionController;
import com.facebook.share.internal.LikeButton;
import com.facebook.share.widget.LikeView;
/* loaded from: classes3.dex */
public class CenteredLikeButton extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private String f6106a;
    private LikeView.ObjectType b;
    private LikeButton c;
    private LikeActionController d;
    private a e;
    private c f;
    private FragmentWrapper g;
    private BroadcastReceiver h;
    private boolean i;

    /* loaded from: classes3.dex */
    public interface c {
        void a(View view, boolean z);
    }

    public CenteredLikeButton(Context context) {
        super(context);
        a(context, (AttributeSet) null, 0);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        this.i = !z;
        b();
    }

    public CenteredLikeButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public CenteredLikeButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    public void setFragment(Fragment fragment) {
        this.g = new FragmentWrapper(fragment);
    }

    public void setFragment(android.app.Fragment fragment) {
        this.g = new FragmentWrapper(fragment);
    }

    public void setOnLikeClickListener(c cVar) {
        this.f = cVar;
    }

    protected void a(Context context, AttributeSet attributeSet, int i) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setGravity(17);
        this.c = new LikeButton(context, this.d != null && this.d.isObjectLiked());
        this.c.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        addView(this.c);
        this.c.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.core.ui.view.CenteredLikeButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CenteredLikeButton.this.a();
            }
        });
        setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.core.ui.view.CenteredLikeButton.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CenteredLikeButton.this.a();
            }
        });
        this.c.setBackgroundColor(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.d != null) {
            Activity activity = null;
            if (this.g == null) {
                activity = getActivity();
            }
            this.d.toggleLike(activity, this.g, getAnalyticsParameters());
            if (this.f != null) {
                this.f.a(this, this.d.isObjectLiked());
            }
        }
    }

    private Activity getActivity() {
        Context context = getContext();
        while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        throw new FacebookException("Unable to get Activity.");
    }

    public void a(String str, LikeView.ObjectType objectType) {
        String coerceValueIfNullOrEmpty = Utility.coerceValueIfNullOrEmpty(str, null);
        if (objectType == null) {
            objectType = LikeView.ObjectType.DEFAULT;
        }
        if (!Utility.areObjectsEqual(coerceValueIfNullOrEmpty, this.f6106a) || objectType != this.b) {
            b(coerceValueIfNullOrEmpty, objectType);
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z = !this.i;
        if (this.d == null) {
            this.c.setSelected(false);
        } else {
            this.c.setSelected(this.d.isObjectLiked());
            z &= this.d.shouldEnableView();
        }
        super.setEnabled(z);
        this.c.setEnabled(z);
        c();
    }

    private void c() {
        this.c.setBackgroundColor(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, LikeView.ObjectType objectType) {
        d();
        this.f6106a = str;
        this.b = objectType;
        if (!Utility.isNullOrEmpty(str)) {
            this.e = new a();
            if (!isInEditMode()) {
                LikeActionController.getControllerForObjectId(str, objectType, this.e);
            }
        }
    }

    private void d() {
        if (this.h != null) {
            l.a(getContext()).a(this.h);
            this.h = null;
        }
        if (this.e != null) {
            this.e.a();
            this.e = null;
        }
        this.d = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = true;
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (extras != null) {
                String string = extras.getString(LikeActionController.ACTION_OBJECT_ID_KEY);
                if (!Utility.isNullOrEmpty(string) && !Utility.areObjectsEqual(CenteredLikeButton.this.f6106a, string)) {
                    z = false;
                }
            }
            if (z) {
                if (LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_UPDATED.equals(action)) {
                    CenteredLikeButton.this.b();
                } else if (LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_RESET.equals(action)) {
                    CenteredLikeButton.this.b(CenteredLikeButton.this.f6106a, CenteredLikeButton.this.b);
                    CenteredLikeButton.this.b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(LikeActionController likeActionController) {
        this.d = likeActionController;
        this.h = new b();
        l a2 = l.a(getContext());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_UPDATED);
        intentFilter.addAction(LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR);
        intentFilter.addAction(LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_RESET);
        a2.a(this.h, intentFilter);
    }

    private Bundle getAnalyticsParameters() {
        Bundle bundle = new Bundle();
        bundle.putString("object_id", Utility.coerceValueIfNullOrEmpty(this.f6106a, ""));
        bundle.putString("object_type", this.b.toString());
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a implements LikeActionController.CreationCallback {
        private boolean b;

        private a() {
        }

        public void a() {
            this.b = true;
        }

        @Override // com.facebook.share.internal.LikeActionController.CreationCallback
        public void onComplete(LikeActionController likeActionController, FacebookException facebookException) {
            if (!this.b) {
                if (likeActionController != null) {
                    CenteredLikeButton.this.a(likeActionController);
                    CenteredLikeButton.this.b();
                }
                CenteredLikeButton.this.e = null;
            }
        }
    }
}
