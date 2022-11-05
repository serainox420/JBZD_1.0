package com.facebook.login.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.a.a.b;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookCallback;
import com.facebook.FacebookSdk;
import com.facebook.Profile;
import com.facebook.R;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.LoginAuthorizationType;
import com.facebook.internal.Utility;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.login.widget.ToolTipPopup;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class LoginButton extends FacebookButtonBase {
    private static final String TAG = LoginButton.class.getName();
    private AccessTokenTracker accessTokenTracker;
    private boolean confirmLogout;
    private String loginLogoutEventName;
    private LoginManager loginManager;
    private String loginText;
    private String logoutText;
    private LoginButtonProperties properties;
    private boolean toolTipChecked;
    private long toolTipDisplayTime;
    private ToolTipMode toolTipMode;
    private ToolTipPopup toolTipPopup;
    private ToolTipPopup.Style toolTipStyle;

    /* loaded from: classes.dex */
    public enum ToolTipMode {
        AUTOMATIC(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC, 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);
        
        public static ToolTipMode DEFAULT = AUTOMATIC;
        private int intValue;
        private String stringValue;

        public static ToolTipMode fromInt(int i) {
            ToolTipMode[] values;
            for (ToolTipMode toolTipMode : values()) {
                if (toolTipMode.getValue() == i) {
                    return toolTipMode;
                }
            }
            return null;
        }

        ToolTipMode(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }

        public int getValue() {
            return this.intValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class LoginButtonProperties {
        private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;
        private List<String> permissions = Collections.emptyList();
        private LoginAuthorizationType authorizationType = null;
        private LoginBehavior loginBehavior = LoginBehavior.NATIVE_WITH_FALLBACK;

        LoginButtonProperties() {
        }

        public void setDefaultAudience(DefaultAudience defaultAudience) {
            this.defaultAudience = defaultAudience;
        }

        public DefaultAudience getDefaultAudience() {
            return this.defaultAudience;
        }

        public void setReadPermissions(List<String> list) {
            if (LoginAuthorizationType.PUBLISH.equals(this.authorizationType)) {
                throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
            }
            this.permissions = list;
            this.authorizationType = LoginAuthorizationType.READ;
        }

        public void setPublishPermissions(List<String> list) {
            if (LoginAuthorizationType.READ.equals(this.authorizationType)) {
                throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
            }
            if (Utility.isNullOrEmpty(list)) {
                throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
            }
            this.permissions = list;
            this.authorizationType = LoginAuthorizationType.PUBLISH;
        }

        List<String> getPermissions() {
            return this.permissions;
        }

        public void clearPermissions() {
            this.permissions = null;
            this.authorizationType = null;
        }

        public void setLoginBehavior(LoginBehavior loginBehavior) {
            this.loginBehavior = loginBehavior;
        }

        public LoginBehavior getLoginBehavior() {
            return this.loginBehavior;
        }
    }

    public LoginButton(Context context) {
        super(context, null, 0, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
        this.properties = new LoginButtonProperties();
        this.loginLogoutEventName = AnalyticsEvents.EVENT_LOGIN_VIEW_USAGE;
        this.toolTipStyle = ToolTipPopup.Style.BLUE;
        this.toolTipDisplayTime = ToolTipPopup.DEFAULT_POPUP_DISPLAY_TIME;
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
        this.properties = new LoginButtonProperties();
        this.loginLogoutEventName = AnalyticsEvents.EVENT_LOGIN_VIEW_USAGE;
        this.toolTipStyle = ToolTipPopup.Style.BLUE;
        this.toolTipDisplayTime = ToolTipPopup.DEFAULT_POPUP_DISPLAY_TIME;
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
        this.properties = new LoginButtonProperties();
        this.loginLogoutEventName = AnalyticsEvents.EVENT_LOGIN_VIEW_USAGE;
        this.toolTipStyle = ToolTipPopup.Style.BLUE;
        this.toolTipDisplayTime = ToolTipPopup.DEFAULT_POPUP_DISPLAY_TIME;
    }

    public void setDefaultAudience(DefaultAudience defaultAudience) {
        this.properties.setDefaultAudience(defaultAudience);
    }

    public DefaultAudience getDefaultAudience() {
        return this.properties.getDefaultAudience();
    }

    public void setReadPermissions(List<String> list) {
        this.properties.setReadPermissions(list);
    }

    public void setReadPermissions(String... strArr) {
        this.properties.setReadPermissions(Arrays.asList(strArr));
    }

    public void setPublishPermissions(List<String> list) {
        this.properties.setPublishPermissions(list);
    }

    public void setPublishPermissions(String... strArr) {
        this.properties.setPublishPermissions(Arrays.asList(strArr));
    }

    public void clearPermissions() {
        this.properties.clearPermissions();
    }

    public void setLoginBehavior(LoginBehavior loginBehavior) {
        this.properties.setLoginBehavior(loginBehavior);
    }

    public LoginBehavior getLoginBehavior() {
        return this.properties.getLoginBehavior();
    }

    public void setToolTipStyle(ToolTipPopup.Style style) {
        this.toolTipStyle = style;
    }

    public void setToolTipMode(ToolTipMode toolTipMode) {
        this.toolTipMode = toolTipMode;
    }

    public ToolTipMode getToolTipMode() {
        return this.toolTipMode;
    }

    public void setToolTipDisplayTime(long j) {
        this.toolTipDisplayTime = j;
    }

    public long getToolTipDisplayTime() {
        return this.toolTipDisplayTime;
    }

    public void dismissToolTip() {
        if (this.toolTipPopup != null) {
            this.toolTipPopup.dismiss();
            this.toolTipPopup = null;
        }
    }

    public void registerCallback(CallbackManager callbackManager, FacebookCallback<LoginResult> facebookCallback) {
        getLoginManager().registerCallback(callbackManager, facebookCallback);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.accessTokenTracker != null && !this.accessTokenTracker.isTracking()) {
            this.accessTokenTracker.startTracking();
            setButtonText();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.toolTipChecked && !isInEditMode()) {
            this.toolTipChecked = true;
            checkToolTipSettings();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showToolTipPerSettings(FetchedAppSettings fetchedAppSettings) {
        if (fetchedAppSettings != null && fetchedAppSettings.getNuxEnabled() && getVisibility() == 0) {
            displayToolTip(fetchedAppSettings.getNuxContent());
        }
    }

    private void displayToolTip(String str) {
        this.toolTipPopup = new ToolTipPopup(str, this);
        this.toolTipPopup.setStyle(this.toolTipStyle);
        this.toolTipPopup.setNuxDisplayTime(this.toolTipDisplayTime);
        this.toolTipPopup.show();
    }

    private void checkToolTipSettings() {
        switch (this.toolTipMode) {
            case AUTOMATIC:
                final String metadataApplicationId = Utility.getMetadataApplicationId(getContext());
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1
                    @Override // java.lang.Runnable
                    public void run() {
                        final FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(metadataApplicationId, false);
                        LoginButton.this.getActivity().runOnUiThread(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                LoginButton.this.showToolTipPerSettings(queryAppSettings);
                            }
                        });
                    }
                });
                return;
            case DISPLAY_ALWAYS:
                displayToolTip(getResources().getString(R.string.com_facebook_tooltip_default));
                return;
            default:
                return;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setButtonText();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.accessTokenTracker != null) {
            this.accessTokenTracker.stopTracking();
        }
        dismissToolTip();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            dismissToolTip();
        }
    }

    List<String> getPermissions() {
        return this.properties.getPermissions();
    }

    void setProperties(LoginButtonProperties loginButtonProperties) {
        this.properties = loginButtonProperties;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public void configureButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super.configureButton(context, attributeSet, i, i2);
        setInternalOnClickListener(getNewLoginClickListener());
        parseLoginButtonAttributes(context, attributeSet, i, i2);
        if (isInEditMode()) {
            setBackgroundColor(getResources().getColor(R.color.com_facebook_blue));
            this.loginText = "Continue with Facebook";
        } else {
            this.accessTokenTracker = new AccessTokenTracker() { // from class: com.facebook.login.widget.LoginButton.2
                @Override // com.facebook.AccessTokenTracker
                protected void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2) {
                    LoginButton.this.setButtonText();
                }
            };
        }
        setButtonText();
        setCompoundDrawablesWithIntrinsicBounds(b.b(getContext(), R.drawable.com_facebook_button_login_logo), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    protected LoginClickListener getNewLoginClickListener() {
        return new LoginClickListener();
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_loginview_default_style;
    }

    private void parseLoginButtonAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        this.toolTipMode = ToolTipMode.DEFAULT;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_login_view, i, i2);
        try {
            this.confirmLogout = obtainStyledAttributes.getBoolean(R.styleable.com_facebook_login_view_com_facebook_confirm_logout, true);
            this.loginText = obtainStyledAttributes.getString(R.styleable.com_facebook_login_view_com_facebook_login_text);
            this.logoutText = obtainStyledAttributes.getString(R.styleable.com_facebook_login_view_com_facebook_logout_text);
            this.toolTipMode = ToolTipMode.fromInt(obtainStyledAttributes.getInt(R.styleable.com_facebook_login_view_com_facebook_tooltip_mode, ToolTipMode.DEFAULT.getValue()));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        int compoundPaddingBottom = getCompoundPaddingBottom() + ((int) Math.ceil(Math.abs(fontMetrics.bottom) + Math.abs(fontMetrics.top))) + getCompoundPaddingTop();
        Resources resources = getResources();
        String str = this.loginText;
        if (str == null) {
            str = resources.getString(R.string.com_facebook_loginview_log_in_button_continue);
            int measureButtonWidth = measureButtonWidth(str);
            if (resolveSize(measureButtonWidth, i) < measureButtonWidth) {
                str = resources.getString(R.string.com_facebook_loginview_log_in_button);
            }
        }
        int measureButtonWidth2 = measureButtonWidth(str);
        String str2 = this.logoutText;
        if (str2 == null) {
            str2 = resources.getString(R.string.com_facebook_loginview_log_out_button);
        }
        setMeasuredDimension(resolveSize(Math.max(measureButtonWidth2, measureButtonWidth(str2)), i), compoundPaddingBottom);
    }

    private int measureButtonWidth(String str) {
        return measureTextWidth(str) + getCompoundPaddingLeft() + getCompoundDrawablePadding() + getCompoundPaddingRight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setButtonText() {
        Resources resources = getResources();
        if (!isInEditMode() && AccessToken.getCurrentAccessToken() != null) {
            setText(this.logoutText != null ? this.logoutText : resources.getString(R.string.com_facebook_loginview_log_out_button));
        } else if (this.loginText != null) {
            setText(this.loginText);
        } else {
            String string = resources.getString(R.string.com_facebook_loginview_log_in_button_continue);
            int width = getWidth();
            if (width != 0 && measureButtonWidth(string) > width) {
                string = resources.getString(R.string.com_facebook_loginview_log_in_button);
            }
            setText(string);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
    }

    LoginManager getLoginManager() {
        if (this.loginManager == null) {
            this.loginManager = LoginManager.getInstance();
        }
        return this.loginManager;
    }

    void setLoginManager(LoginManager loginManager) {
        this.loginManager = loginManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class LoginClickListener implements View.OnClickListener {
        /* JADX INFO: Access modifiers changed from: protected */
        public LoginClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LoginButton.this.callExternalOnClickListener(view);
            AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
            if (currentAccessToken != null) {
                performLogout(LoginButton.this.getContext());
            } else {
                performLogin();
            }
            AppEventsLogger newLogger = AppEventsLogger.newLogger(LoginButton.this.getContext());
            Bundle bundle = new Bundle();
            bundle.putInt("logging_in", currentAccessToken != null ? 0 : 1);
            newLogger.logSdkEvent(LoginButton.this.loginLogoutEventName, null, bundle);
        }

        protected void performLogin() {
            LoginManager loginManager = getLoginManager();
            if (LoginAuthorizationType.PUBLISH.equals(LoginButton.this.properties.authorizationType)) {
                if (LoginButton.this.getFragment() != null) {
                    loginManager.logInWithPublishPermissions(LoginButton.this.getFragment(), LoginButton.this.properties.permissions);
                } else if (LoginButton.this.getNativeFragment() != null) {
                    loginManager.logInWithPublishPermissions(LoginButton.this.getNativeFragment(), LoginButton.this.properties.permissions);
                } else {
                    loginManager.logInWithPublishPermissions(LoginButton.this.getActivity(), LoginButton.this.properties.permissions);
                }
            } else if (LoginButton.this.getFragment() != null) {
                loginManager.logInWithReadPermissions(LoginButton.this.getFragment(), LoginButton.this.properties.permissions);
            } else if (LoginButton.this.getNativeFragment() != null) {
                loginManager.logInWithReadPermissions(LoginButton.this.getNativeFragment(), LoginButton.this.properties.permissions);
            } else {
                loginManager.logInWithReadPermissions(LoginButton.this.getActivity(), LoginButton.this.properties.permissions);
            }
        }

        protected void performLogout(Context context) {
            String string;
            final LoginManager loginManager = getLoginManager();
            if (LoginButton.this.confirmLogout) {
                String string2 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_log_out_action);
                String string3 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_cancel_action);
                Profile currentProfile = Profile.getCurrentProfile();
                if (currentProfile != null && currentProfile.getName() != null) {
                    string = String.format(LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_as), currentProfile.getName());
                } else {
                    string = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_using_facebook);
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setMessage(string).setCancelable(true).setPositiveButton(string2, new DialogInterface.OnClickListener() { // from class: com.facebook.login.widget.LoginButton.LoginClickListener.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        loginManager.logOut();
                    }
                }).setNegativeButton(string3, (DialogInterface.OnClickListener) null);
                builder.create().show();
                return;
            }
            loginManager.logOut();
        }

        protected LoginManager getLoginManager() {
            LoginManager loginManager = LoginManager.getInstance();
            loginManager.setDefaultAudience(LoginButton.this.getDefaultAudience());
            loginManager.setLoginBehavior(LoginButton.this.getLoginBehavior());
            return loginManager;
        }
    }
}
