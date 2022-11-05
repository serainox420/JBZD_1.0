package com.google.android.gms.internal;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
/* loaded from: classes.dex */
public enum zzvv {
    CLIENT_LOGIN_DISABLED("ClientLoginDisabled"),
    DEVICE_MANAGEMENT_REQUIRED("DeviceManagementRequiredOrSyncDisabled"),
    SOCKET_TIMEOUT("SocketTimeout"),
    SUCCESS("Ok"),
    UNKNOWN_ERROR("UNKNOWN_ERR"),
    NETWORK_ERROR(NativeProtocol.ERROR_NETWORK_ERROR),
    SERVICE_UNAVAILABLE("ServiceUnavailable"),
    INTNERNAL_ERROR("InternalError"),
    BAD_AUTHENTICATION("BadAuthentication"),
    EMPTY_CONSUMER_PKG_OR_SIG("EmptyConsumerPackageOrSig"),
    NEEDS_2F("InvalidSecondFactor"),
    NEEDS_POST_SIGN_IN_FLOW("PostSignInFlowRequired"),
    NEEDS_BROWSER("NeedsBrowser"),
    UNKNOWN(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN),
    NOT_VERIFIED("NotVerified"),
    TERMS_NOT_AGREED("TermsNotAgreed"),
    ACCOUNT_DISABLED("AccountDisabled"),
    CAPTCHA("CaptchaRequired"),
    ACCOUNT_DELETED("AccountDeleted"),
    SERVICE_DISABLED(NativeProtocol.ERROR_SERVICE_DISABLED),
    NEED_PERMISSION("NeedPermission"),
    NEED_REMOTE_CONSENT("NeedRemoteConsent"),
    INVALID_SCOPE("INVALID_SCOPE"),
    USER_CANCEL("UserCancel"),
    PERMISSION_DENIED(NativeProtocol.ERROR_PERMISSION_DENIED),
    INVALID_AUDIENCE("INVALID_AUDIENCE"),
    UNREGISTERED_ON_API_CONSOLE("UNREGISTERED_ON_API_CONSOLE"),
    THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED("ThirdPartyDeviceManagementRequired"),
    DM_INTERNAL_ERROR("DeviceManagementInternalError"),
    DM_SYNC_DISABLED("DeviceManagementSyncDisabled"),
    DM_ADMIN_BLOCKED("DeviceManagementAdminBlocked"),
    DM_ADMIN_PENDING_APPROVAL("DeviceManagementAdminPendingApproval"),
    DM_STALE_SYNC_REQUIRED("DeviceManagementStaleSyncRequired"),
    DM_DEACTIVATED("DeviceManagementDeactivated"),
    DM_SCREENLOCK_REQUIRED("DeviceManagementScreenlockRequired"),
    DM_REQUIRED("DeviceManagementRequired"),
    ALREADY_HAS_GMAIL("ALREADY_HAS_GMAIL"),
    BAD_PASSWORD("WeakPassword"),
    BAD_REQUEST("BadRequest"),
    BAD_USERNAME("BadUsername"),
    DELETED_GMAIL("DeletedGmail"),
    EXISTING_USERNAME("ExistingUsername"),
    LOGIN_FAIL("LoginFail"),
    NOT_LOGGED_IN("NotLoggedIn"),
    NO_GMAIL("NoGmail"),
    REQUEST_DENIED("RequestDenied"),
    SERVER_ERROR("ServerError"),
    USERNAME_UNAVAILABLE("UsernameUnavailable"),
    GPLUS_OTHER("GPlusOther"),
    GPLUS_NICKNAME("GPlusNickname"),
    GPLUS_INVALID_CHAR("GPlusInvalidChar"),
    GPLUS_INTERSTITIAL("GPlusInterstitial"),
    GPLUS_PROFILE_ERROR("ProfileUpgradeError");
    
    private final String zzalT;

    zzvv(String str) {
        this.zzalT = str;
    }

    public static boolean zza(zzvv zzvvVar) {
        return BAD_AUTHENTICATION.equals(zzvvVar) || CAPTCHA.equals(zzvvVar) || NEED_PERMISSION.equals(zzvvVar) || NEED_REMOTE_CONSENT.equals(zzvvVar) || NEEDS_BROWSER.equals(zzvvVar) || USER_CANCEL.equals(zzvvVar) || DEVICE_MANAGEMENT_REQUIRED.equals(zzvvVar) || DM_INTERNAL_ERROR.equals(zzvvVar) || DM_SYNC_DISABLED.equals(zzvvVar) || DM_ADMIN_BLOCKED.equals(zzvvVar) || DM_ADMIN_PENDING_APPROVAL.equals(zzvvVar) || DM_STALE_SYNC_REQUIRED.equals(zzvvVar) || DM_DEACTIVATED.equals(zzvvVar) || DM_REQUIRED.equals(zzvvVar) || THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(zzvvVar) || DM_SCREENLOCK_REQUIRED.equals(zzvvVar);
    }

    public static boolean zzb(zzvv zzvvVar) {
        return NETWORK_ERROR.equals(zzvvVar) || SERVICE_UNAVAILABLE.equals(zzvvVar);
    }

    public static final zzvv zzcE(String str) {
        zzvv zzvvVar = null;
        zzvv[] values = values();
        int length = values.length;
        int i = 0;
        while (i < length) {
            zzvv zzvvVar2 = values[i];
            if (!zzvvVar2.zzalT.equals(str)) {
                zzvvVar2 = zzvvVar;
            }
            i++;
            zzvvVar = zzvvVar2;
        }
        return zzvvVar;
    }
}
