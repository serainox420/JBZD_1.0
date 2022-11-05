package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.R;
import com.facebook.login.LoginClient;
/* loaded from: classes.dex */
public class LoginFragment extends Fragment {
    static final String EXTRA_REQUEST = "request";
    private static final String NULL_CALLING_PKG_ERROR_MSG = "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.";
    static final String REQUEST_KEY = "com.facebook.LoginFragment:Request";
    static final String RESULT_KEY = "com.facebook.LoginFragment:Result";
    private static final String SAVED_LOGIN_CLIENT = "loginClient";
    private static final String TAG = "LoginFragment";
    private String callingPackage;
    private LoginClient loginClient;
    private LoginClient.Request request;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.loginClient = (LoginClient) bundle.getParcelable(SAVED_LOGIN_CLIENT);
            this.loginClient.setFragment(this);
        } else {
            this.loginClient = createLoginClient();
        }
        this.loginClient.setOnCompletedListener(new LoginClient.OnCompletedListener() { // from class: com.facebook.login.LoginFragment.1
            @Override // com.facebook.login.LoginClient.OnCompletedListener
            public void onCompleted(LoginClient.Result result) {
                LoginFragment.this.onLoginClientCompleted(result);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity != null) {
            initializeCallingPackage(activity);
            if (activity.getIntent() != null) {
                this.request = (LoginClient.Request) activity.getIntent().getBundleExtra(REQUEST_KEY).getParcelable("request");
            }
        }
    }

    protected LoginClient createLoginClient() {
        return new LoginClient(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.loginClient.cancelCurrentHandler();
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final View inflate = layoutInflater.inflate(R.layout.com_facebook_login_fragment, viewGroup, false);
        this.loginClient.setBackgroundProcessingListener(new LoginClient.BackgroundProcessingListener() { // from class: com.facebook.login.LoginFragment.2
            @Override // com.facebook.login.LoginClient.BackgroundProcessingListener
            public void onBackgroundProcessingStarted() {
                inflate.findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(0);
            }

            @Override // com.facebook.login.LoginClient.BackgroundProcessingListener
            public void onBackgroundProcessingStopped() {
                inflate.findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(8);
            }
        });
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLoginClientCompleted(LoginClient.Result result) {
        this.request = null;
        int i = result.code == LoginClient.Result.Code.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable(RESULT_KEY, result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (isAdded()) {
            getActivity().setResult(i, intent);
            getActivity().finish();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.callingPackage == null) {
            Log.e(TAG, NULL_CALLING_PKG_ERROR_MSG);
            getActivity().finish();
            return;
        }
        this.loginClient.startOrContinueAuth(this.request);
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        getActivity().findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(8);
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.loginClient.onActivityResult(i, i2, intent);
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(SAVED_LOGIN_CLIENT, this.loginClient);
    }

    private void initializeCallingPackage(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            this.callingPackage = callingActivity.getPackageName();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoginClient getLoginClient() {
        return this.loginClient;
    }
}
