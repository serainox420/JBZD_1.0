package com.mopub.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mopub.common.Constants;
import com.mopub.volley.AuthFailureError;
/* loaded from: classes3.dex */
public class AndroidAuthenticator implements Authenticator {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4684a;
    private final Account b;
    private final String c;
    private final boolean d;

    public AndroidAuthenticator(Context context, Account account, String str) {
        this(context, account, str, false);
    }

    public AndroidAuthenticator(Context context, Account account, String str, boolean z) {
        this.f4684a = context;
        this.b = account;
        this.c = str;
        this.d = z;
    }

    public Account getAccount() {
        return this.b;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public String getAuthToken() throws AuthFailureError {
        String str = null;
        AccountManagerFuture<Bundle> authToken = AccountManager.get(this.f4684a).getAuthToken(this.b, this.c, this.d, null, null);
        try {
            Bundle result = authToken.getResult();
            if (authToken.isDone() && !authToken.isCancelled()) {
                if (result.containsKey(Constants.INTENT_SCHEME)) {
                    throw new AuthFailureError((Intent) result.getParcelable(Constants.INTENT_SCHEME));
                }
                str = result.getString("authtoken");
            }
            if (str == null) {
                throw new AuthFailureError("Got null auth token for type: " + this.c);
            }
            return str;
        } catch (Exception e) {
            throw new AuthFailureError("Error while retrieving auth token", e);
        }
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public void invalidateAuthToken(String str) {
        AccountManager.get(this.f4684a).invalidateAuthToken(this.b.type, str);
    }
}
