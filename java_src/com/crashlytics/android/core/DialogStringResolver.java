package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.settings.o;
/* loaded from: classes.dex */
class DialogStringResolver {
    private static final String PROMPT_MESSAGE_RES_NAME = "com.crashlytics.CrashSubmissionPromptMessage";
    private static final String PROMPT_TITLE_RES_NAME = "com.crashlytics.CrashSubmissionPromptTitle";
    private static final String SUBMISSION_ALWAYS_SEND_RES_NAME = "com.crashlytics.CrashSubmissionAlwaysSendTitle";
    private static final String SUBMISSION_CANCEL_RES_NAME = "com.crashlytics.CrashSubmissionCancelTitle";
    private static final String SUBMISSION_SEND_RES_NAME = "com.crashlytics.CrashSubmissionSendTitle";
    private final Context context;
    private final o promptData;

    public DialogStringResolver(Context context, o oVar) {
        this.context = context;
        this.promptData = oVar;
    }

    public String getTitle() {
        return resourceOrFallbackValue(PROMPT_TITLE_RES_NAME, this.promptData.f5721a);
    }

    public String getMessage() {
        return resourceOrFallbackValue(PROMPT_MESSAGE_RES_NAME, this.promptData.b);
    }

    public String getSendButtonTitle() {
        return resourceOrFallbackValue(SUBMISSION_SEND_RES_NAME, this.promptData.c);
    }

    public String getAlwaysSendButtonTitle() {
        return resourceOrFallbackValue(SUBMISSION_ALWAYS_SEND_RES_NAME, this.promptData.g);
    }

    public String getCancelButtonTitle() {
        return resourceOrFallbackValue(SUBMISSION_CANCEL_RES_NAME, this.promptData.e);
    }

    private String resourceOrFallbackValue(String str, String str2) {
        return stringOrFallback(i.b(this.context, str), str2);
    }

    private String stringOrFallback(String str, String str2) {
        return isNullOrEmpty(str) ? str2 : str;
    }

    private boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }
}
