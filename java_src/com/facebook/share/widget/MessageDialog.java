package com.facebook.share.widget;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookCallback;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.share.Sharer;
import com.facebook.share.internal.LegacyNativeDialogParameters;
import com.facebook.share.internal.MessageDialogFeature;
import com.facebook.share.internal.NativeDialogParameters;
import com.facebook.share.internal.OpenGraphMessageDialogFeature;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class MessageDialog extends FacebookDialogBase<ShareContent, Sharer.Result> implements Sharer {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();
    private boolean shouldFailOnDataError;

    public static void show(Activity activity, ShareContent shareContent) {
        new MessageDialog(activity).show(shareContent);
    }

    public static void show(Fragment fragment, ShareContent shareContent) {
        show(new FragmentWrapper(fragment), shareContent);
    }

    public static void show(android.app.Fragment fragment, ShareContent shareContent) {
        show(new FragmentWrapper(fragment), shareContent);
    }

    private static void show(FragmentWrapper fragmentWrapper, ShareContent shareContent) {
        new MessageDialog(fragmentWrapper).show(shareContent);
    }

    public static boolean canShow(Class<? extends ShareContent> cls) {
        DialogFeature feature = getFeature(cls);
        return feature != null && DialogPresenter.canPresentNativeDialogWithFeature(feature);
    }

    public MessageDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
        this.shouldFailOnDataError = false;
        ShareInternalUtility.registerStaticShareCallback(DEFAULT_REQUEST_CODE);
    }

    public MessageDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    public MessageDialog(android.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    private MessageDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, DEFAULT_REQUEST_CODE);
        this.shouldFailOnDataError = false;
        ShareInternalUtility.registerStaticShareCallback(DEFAULT_REQUEST_CODE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageDialog(Activity activity, int i) {
        super(activity, i);
        this.shouldFailOnDataError = false;
        ShareInternalUtility.registerStaticShareCallback(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageDialog(Fragment fragment, int i) {
        this(new FragmentWrapper(fragment), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageDialog(android.app.Fragment fragment, int i) {
        this(new FragmentWrapper(fragment), i);
    }

    private MessageDialog(FragmentWrapper fragmentWrapper, int i) {
        super(fragmentWrapper, i);
        this.shouldFailOnDataError = false;
        ShareInternalUtility.registerStaticShareCallback(i);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<Sharer.Result> facebookCallback) {
        ShareInternalUtility.registerSharerCallback(getRequestCode(), callbackManagerImpl, facebookCallback);
    }

    @Override // com.facebook.share.Sharer
    public boolean getShouldFailOnDataError() {
        return this.shouldFailOnDataError;
    }

    @Override // com.facebook.share.Sharer
    public void setShouldFailOnDataError(boolean z) {
        this.shouldFailOnDataError = z;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode());
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler> getOrderedModeHandlers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NativeHandler());
        return arrayList;
    }

    /* loaded from: classes.dex */
    private class NativeHandler extends FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler {
        private NativeHandler() {
            super();
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(ShareContent shareContent, boolean z) {
            return shareContent != null && MessageDialog.canShow((Class<? extends ShareContent>) shareContent.getClass());
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(final ShareContent shareContent) {
            ShareContentValidation.validateForMessage(shareContent);
            final AppCall createBaseAppCall = MessageDialog.this.createBaseAppCall();
            final boolean shouldFailOnDataError = MessageDialog.this.getShouldFailOnDataError();
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new DialogPresenter.ParameterProvider() { // from class: com.facebook.share.widget.MessageDialog.NativeHandler.1
                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getParameters() {
                    return NativeDialogParameters.create(createBaseAppCall.getCallId(), shareContent, shouldFailOnDataError);
                }

                @Override // com.facebook.internal.DialogPresenter.ParameterProvider
                public Bundle getLegacyParameters() {
                    return LegacyNativeDialogParameters.create(createBaseAppCall.getCallId(), shareContent, shouldFailOnDataError);
                }
            }, MessageDialog.getFeature(shareContent.getClass()));
            return createBaseAppCall;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DialogFeature getFeature(Class<? extends ShareContent> cls) {
        if (ShareLinkContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.MESSAGE_DIALOG;
        }
        if (SharePhotoContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.PHOTOS;
        }
        if (ShareVideoContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.VIDEO;
        }
        if (ShareOpenGraphContent.class.isAssignableFrom(cls)) {
            return OpenGraphMessageDialogFeature.OG_MESSAGE_DIALOG;
        }
        return null;
    }
}
