package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.common.j;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import java.io.File;
/* loaded from: classes.dex */
public class Answers extends h<Boolean> {
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    public static final String TAG = "Answers";
    SessionAnalyticsManager analyticsManager;

    public static Answers getInstance() {
        return (Answers) c.a(Answers.class);
    }

    public void logCustom(CustomEvent customEvent) {
        if (customEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onCustom(customEvent);
        }
    }

    public void logPurchase(PurchaseEvent purchaseEvent) {
        if (purchaseEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(purchaseEvent);
        }
    }

    public void logLogin(LoginEvent loginEvent) {
        if (loginEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(loginEvent);
        }
    }

    public void logShare(ShareEvent shareEvent) {
        if (shareEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(shareEvent);
        }
    }

    public void logInvite(InviteEvent inviteEvent) {
        if (inviteEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(inviteEvent);
        }
    }

    public void logSignUp(SignUpEvent signUpEvent) {
        if (signUpEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(signUpEvent);
        }
    }

    public void logLevelStart(LevelStartEvent levelStartEvent) {
        if (levelStartEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(levelStartEvent);
        }
    }

    public void logLevelEnd(LevelEndEvent levelEndEvent) {
        if (levelEndEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(levelEndEvent);
        }
    }

    public void logAddToCart(AddToCartEvent addToCartEvent) {
        if (addToCartEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(addToCartEvent);
        }
    }

    public void logStartCheckout(StartCheckoutEvent startCheckoutEvent) {
        if (startCheckoutEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(startCheckoutEvent);
        }
    }

    public void logRating(RatingEvent ratingEvent) {
        if (ratingEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(ratingEvent);
        }
    }

    public void logContentView(ContentViewEvent contentViewEvent) {
        if (contentViewEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(contentViewEvent);
        }
    }

    public void logSearch(SearchEvent searchEvent) {
        if (searchEvent == null) {
            throw new NullPointerException("event must not be null");
        }
        if (this.analyticsManager != null) {
            this.analyticsManager.onPredefined(searchEvent);
        }
    }

    public void onException(j.b bVar) {
        if (this.analyticsManager != null) {
            this.analyticsManager.onError(bVar.a());
        }
    }

    public void onException(j.a aVar) {
        if (this.analyticsManager != null) {
            this.analyticsManager.onCrash(aVar.a(), aVar.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.h
    @SuppressLint({"NewApi"})
    public boolean onPreExecute() {
        long lastModified;
        boolean z = false;
        try {
            Context context = getContext();
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            String num = Integer.toString(packageInfo.versionCode);
            String str = packageInfo.versionName == null ? "0.0" : packageInfo.versionName;
            if (Build.VERSION.SDK_INT >= 9) {
                lastModified = packageInfo.firstInstallTime;
            } else {
                lastModified = new File(packageManager.getApplicationInfo(packageName, 0).sourceDir).lastModified();
            }
            this.analyticsManager = SessionAnalyticsManager.build(this, context, getIdManager(), num, str, lastModified);
            this.analyticsManager.enable();
            z = true;
            return true;
        } catch (Exception e) {
            c.h().e(TAG, "Error retrieving app properties", e);
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.fabric.sdk.android.h
    /* renamed from: doInBackground */
    public Boolean mo38doInBackground() {
        boolean z;
        try {
            s b = q.a().b();
            if (b == null) {
                c.h().e(TAG, "Failed to retrieve settings");
                z = false;
            } else if (b.d.d) {
                c.h().a(TAG, "Analytics collection enabled");
                this.analyticsManager.setAnalyticsSettingsData(b.e, getOverridenSpiEndpoint());
                z = true;
            } else {
                c.h().a(TAG, "Analytics collection disabled");
                this.analyticsManager.disable();
                z = false;
            }
            return z;
        } catch (Exception e) {
            c.h().e(TAG, "Error dealing with settings", e);
            return false;
        }
    }

    @Override // io.fabric.sdk.android.h
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:answers";
    }

    @Override // io.fabric.sdk.android.h
    public String getVersion() {
        return "1.3.12.dev";
    }

    String getOverridenSpiEndpoint() {
        return i.b(getContext(), CRASHLYTICS_API_ENDPOINT);
    }
}
