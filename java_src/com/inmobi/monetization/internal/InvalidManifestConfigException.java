package com.inmobi.monetization.internal;
/* loaded from: classes2.dex */
public final class InvalidManifestConfigException extends Exception {
    public static final int MISSING_ACCESS_NETWORK_STATE_PERMISSION = -9;
    public static final int MISSING_ACTIVITY_DECLARATION = -2;
    public static final int MISSING_CONFIG_CHANGES = -3;
    public static final int MISSING_CONFIG_KEYBOARD = -4;
    public static final int MISSING_CONFIG_KEYBOARDHIDDEN = -5;
    public static final int MISSING_CONFIG_ORIENTATION = -6;
    public static final int MISSING_CONFIG_SCREENSIZE = -7;
    public static final int MISSING_CONFIG_SMALLEST_SCREENSIZE = -8;
    public static final int MISSING_INTERNET_PERMISSION = -1;
    private static final long serialVersionUID = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f3856a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InvalidManifestConfigException(int i) {
        this.f3856a = i;
    }

    public int getExceptionCode() {
        return this.f3856a;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("IMConfigException : ");
        switch (this.f3856a) {
            case MISSING_ACCESS_NETWORK_STATE_PERMISSION /* -9 */:
                stringBuffer.append(InvalidManifestErrorMessages.MSG_MISSING_ACCESS_NETWORK_PERMISSION);
                break;
            case MISSING_CONFIG_SMALLEST_SCREENSIZE /* -8 */:
                stringBuffer.append(InvalidManifestErrorMessages.MSG_MISSING_CONFIG_SMALLEST_SCREENSIZE);
                break;
            case MISSING_CONFIG_SCREENSIZE /* -7 */:
                stringBuffer.append(InvalidManifestErrorMessages.MSG_MISSING_CONFIG_SCREENSIZE);
                break;
            case -6:
                stringBuffer.append(InvalidManifestErrorMessages.MSG_MISSING_CONFIG_ORIENTATION);
                break;
            case MISSING_CONFIG_KEYBOARDHIDDEN /* -5 */:
                stringBuffer.append(InvalidManifestErrorMessages.MSG_MISSING_CONFIG_KEYBOARDHIDDEN);
                break;
            case -4:
                stringBuffer.append(InvalidManifestErrorMessages.MSG_MISSING_CONFIG_KEYBOARD);
                break;
            case -3:
                stringBuffer.append(InvalidManifestErrorMessages.MSG_MISSING_CONFIG_CHANGES);
                break;
            case -2:
                stringBuffer.append(InvalidManifestErrorMessages.MSG_MISSING_ACTIVITY_DECLARATION);
                break;
            case -1:
                stringBuffer.append(InvalidManifestErrorMessages.MSG_MISSING_INTERNET_PERMISSION);
                break;
        }
        return stringBuffer.toString();
    }
}
