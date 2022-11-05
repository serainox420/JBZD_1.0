package com.facebook.share.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.share.Sharer;
import com.facebook.share.internal.OpenGraphJSONUtility;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import com.facebook.share.widget.LikeView;
import com.google.android.gms.drive.DriveFile;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class ShareInternalUtility {
    public static final String MY_PHOTOS = "me/photos";
    private static final String MY_STAGING_RESOURCES = "me/staging_resources";
    private static final String STAGING_PARAM = "file";

    public static void invokeCallbackWithException(FacebookCallback<Sharer.Result> facebookCallback, Exception exc) {
        if (exc instanceof FacebookException) {
            invokeOnErrorCallback(facebookCallback, (FacebookException) exc);
        } else {
            invokeCallbackWithError(facebookCallback, "Error preparing share content: " + exc.getLocalizedMessage());
        }
    }

    public static void invokeCallbackWithError(FacebookCallback<Sharer.Result> facebookCallback, String str) {
        invokeOnErrorCallback(facebookCallback, str);
    }

    public static void invokeCallbackWithResults(FacebookCallback<Sharer.Result> facebookCallback, String str, GraphResponse graphResponse) {
        FacebookRequestError error = graphResponse.getError();
        if (error != null) {
            String errorMessage = error.getErrorMessage();
            if (Utility.isNullOrEmpty(errorMessage)) {
                errorMessage = "Unexpected error sharing.";
            }
            invokeOnErrorCallback(facebookCallback, graphResponse, errorMessage);
            return;
        }
        invokeOnSuccessCallback(facebookCallback, str);
    }

    public static String getNativeDialogCompletionGesture(Bundle bundle) {
        return bundle.containsKey(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY) ? bundle.getString(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY) : bundle.getString(NativeProtocol.EXTRA_DIALOG_COMPLETION_GESTURE_KEY);
    }

    public static String getShareDialogPostId(Bundle bundle) {
        if (bundle.containsKey(ShareConstants.RESULT_POST_ID)) {
            return bundle.getString(ShareConstants.RESULT_POST_ID);
        }
        if (bundle.containsKey(ShareConstants.EXTRA_RESULT_POST_ID)) {
            return bundle.getString(ShareConstants.EXTRA_RESULT_POST_ID);
        }
        return bundle.getString(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID);
    }

    public static boolean handleActivityResult(int i, int i2, Intent intent, ResultProcessor resultProcessor) {
        AppCall appCallFromActivityResult = getAppCallFromActivityResult(i, i2, intent);
        if (appCallFromActivityResult == null) {
            return false;
        }
        NativeAppCallAttachmentStore.cleanupAttachmentsForCall(appCallFromActivityResult.getCallId());
        if (resultProcessor == null) {
            return true;
        }
        FacebookException exceptionFromErrorData = NativeProtocol.getExceptionFromErrorData(NativeProtocol.getErrorDataFromResultIntent(intent));
        if (exceptionFromErrorData != null) {
            if (exceptionFromErrorData instanceof FacebookOperationCanceledException) {
                resultProcessor.onCancel(appCallFromActivityResult);
                return true;
            }
            resultProcessor.onError(appCallFromActivityResult, exceptionFromErrorData);
            return true;
        }
        resultProcessor.onSuccess(appCallFromActivityResult, NativeProtocol.getSuccessResultsFromIntent(intent));
        return true;
    }

    public static ResultProcessor getShareResultProcessor(final FacebookCallback<Sharer.Result> facebookCallback) {
        return new ResultProcessor(facebookCallback) { // from class: com.facebook.share.internal.ShareInternalUtility.1
            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(AppCall appCall, Bundle bundle) {
                if (bundle != null) {
                    String nativeDialogCompletionGesture = ShareInternalUtility.getNativeDialogCompletionGesture(bundle);
                    if (nativeDialogCompletionGesture == null || "post".equalsIgnoreCase(nativeDialogCompletionGesture)) {
                        ShareInternalUtility.invokeOnSuccessCallback(facebookCallback, ShareInternalUtility.getShareDialogPostId(bundle));
                    } else if ("cancel".equalsIgnoreCase(nativeDialogCompletionGesture)) {
                        ShareInternalUtility.invokeOnCancelCallback(facebookCallback);
                    } else {
                        ShareInternalUtility.invokeOnErrorCallback(facebookCallback, new FacebookException(NativeProtocol.ERROR_UNKNOWN_ERROR));
                    }
                }
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onCancel(AppCall appCall) {
                ShareInternalUtility.invokeOnCancelCallback(facebookCallback);
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onError(AppCall appCall, FacebookException facebookException) {
                ShareInternalUtility.invokeOnErrorCallback(facebookCallback, facebookException);
            }
        };
    }

    private static AppCall getAppCallFromActivityResult(int i, int i2, Intent intent) {
        UUID callIdFromIntent = NativeProtocol.getCallIdFromIntent(intent);
        if (callIdFromIntent == null) {
            return null;
        }
        return AppCall.finishPendingCall(callIdFromIntent, i);
    }

    public static void registerStaticShareCallback(final int i) {
        CallbackManagerImpl.registerStaticCallback(i, new CallbackManagerImpl.Callback() { // from class: com.facebook.share.internal.ShareInternalUtility.2
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public boolean onActivityResult(int i2, Intent intent) {
                return ShareInternalUtility.handleActivityResult(i, i2, intent, ShareInternalUtility.getShareResultProcessor(null));
            }
        });
    }

    public static void registerSharerCallback(final int i, CallbackManager callbackManager, final FacebookCallback<Sharer.Result> facebookCallback) {
        if (!(callbackManager instanceof CallbackManagerImpl)) {
            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((CallbackManagerImpl) callbackManager).registerCallback(i, new CallbackManagerImpl.Callback() { // from class: com.facebook.share.internal.ShareInternalUtility.3
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public boolean onActivityResult(int i2, Intent intent) {
                return ShareInternalUtility.handleActivityResult(i, i2, intent, ShareInternalUtility.getShareResultProcessor(facebookCallback));
            }
        });
    }

    public static List<String> getPhotoUrls(SharePhotoContent sharePhotoContent, final UUID uuid) {
        List<SharePhoto> photos;
        if (sharePhotoContent == null || (photos = sharePhotoContent.getPhotos()) == null) {
            return null;
        }
        List map = Utility.map(photos, new Utility.Mapper<SharePhoto, NativeAppCallAttachmentStore.Attachment>() { // from class: com.facebook.share.internal.ShareInternalUtility.4
            @Override // com.facebook.internal.Utility.Mapper
            public NativeAppCallAttachmentStore.Attachment apply(SharePhoto sharePhoto) {
                return ShareInternalUtility.getAttachment(uuid, sharePhoto);
            }
        });
        List<String> map2 = Utility.map(map, new Utility.Mapper<NativeAppCallAttachmentStore.Attachment, String>() { // from class: com.facebook.share.internal.ShareInternalUtility.5
            @Override // com.facebook.internal.Utility.Mapper
            public String apply(NativeAppCallAttachmentStore.Attachment attachment) {
                return attachment.getAttachmentUrl();
            }
        });
        NativeAppCallAttachmentStore.addAttachments(map);
        return map2;
    }

    public static String getVideoUrl(ShareVideoContent shareVideoContent, UUID uuid) {
        if (shareVideoContent == null || shareVideoContent.getVideo() == null) {
            return null;
        }
        NativeAppCallAttachmentStore.Attachment createAttachment = NativeAppCallAttachmentStore.createAttachment(uuid, shareVideoContent.getVideo().getLocalUrl());
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(createAttachment);
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return createAttachment.getAttachmentUrl();
    }

    public static List<Bundle> getMediaInfos(ShareMediaContent shareMediaContent, final UUID uuid) {
        List<ShareMedia> media;
        if (shareMediaContent == null || (media = shareMediaContent.getMedia()) == null) {
            return null;
        }
        final ArrayList arrayList = new ArrayList();
        List<Bundle> map = Utility.map(media, new Utility.Mapper<ShareMedia, Bundle>() { // from class: com.facebook.share.internal.ShareInternalUtility.6
            @Override // com.facebook.internal.Utility.Mapper
            public Bundle apply(ShareMedia shareMedia) {
                NativeAppCallAttachmentStore.Attachment attachment = ShareInternalUtility.getAttachment(uuid, shareMedia);
                arrayList.add(attachment);
                Bundle bundle = new Bundle();
                bundle.putString("type", shareMedia.getMediaType().name());
                bundle.putString(ShareConstants.MEDIA_URI, attachment.getAttachmentUrl());
                return bundle;
            }
        });
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return map;
    }

    public static JSONObject toJSONObjectForCall(final UUID uuid, ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        ShareOpenGraphAction action = shareOpenGraphContent.getAction();
        final ArrayList arrayList = new ArrayList();
        JSONObject jSONObject = OpenGraphJSONUtility.toJSONObject(action, new OpenGraphJSONUtility.PhotoJSONProcessor() { // from class: com.facebook.share.internal.ShareInternalUtility.7
            @Override // com.facebook.share.internal.OpenGraphJSONUtility.PhotoJSONProcessor
            public JSONObject toJSONObject(SharePhoto sharePhoto) {
                NativeAppCallAttachmentStore.Attachment attachment = ShareInternalUtility.getAttachment(uuid, sharePhoto);
                if (attachment == null) {
                    return null;
                }
                arrayList.add(attachment);
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("url", attachment.getAttachmentUrl());
                    if (sharePhoto.getUserGenerated()) {
                        jSONObject2.put(NativeProtocol.IMAGE_USER_GENERATED_KEY, true);
                        return jSONObject2;
                    }
                    return jSONObject2;
                } catch (JSONException e) {
                    throw new FacebookException("Unable to attach images", e);
                }
            }
        });
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        if (shareOpenGraphContent.getPlaceId() != null && Utility.isNullOrEmpty(jSONObject.optString("place"))) {
            jSONObject.put("place", shareOpenGraphContent.getPlaceId());
        }
        if (shareOpenGraphContent.getPeopleIds() != null) {
            JSONArray optJSONArray = jSONObject.optJSONArray("tags");
            HashSet hashSet = optJSONArray == null ? new HashSet() : Utility.jsonArrayToSet(optJSONArray);
            for (String str : shareOpenGraphContent.getPeopleIds()) {
                hashSet.add(str);
            }
            jSONObject.put("tags", new JSONArray((Collection) hashSet));
        }
        return jSONObject;
    }

    public static JSONObject toJSONObjectForWeb(ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        return OpenGraphJSONUtility.toJSONObject(shareOpenGraphContent.getAction(), new OpenGraphJSONUtility.PhotoJSONProcessor() { // from class: com.facebook.share.internal.ShareInternalUtility.8
            @Override // com.facebook.share.internal.OpenGraphJSONUtility.PhotoJSONProcessor
            public JSONObject toJSONObject(SharePhoto sharePhoto) {
                Uri imageUrl = sharePhoto.getImageUrl();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", imageUrl.toString());
                    return jSONObject;
                } catch (JSONException e) {
                    throw new FacebookException("Unable to attach images", e);
                }
            }
        });
    }

    public static JSONArray removeNamespacesFromOGJsonArray(JSONArray jSONArray, boolean z) throws JSONException {
        JSONArray jSONArray2 = new JSONArray();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                Object obj = jSONArray.get(i2);
                if (obj instanceof JSONArray) {
                    obj = removeNamespacesFromOGJsonArray((JSONArray) obj, z);
                } else if (obj instanceof JSONObject) {
                    obj = removeNamespacesFromOGJsonObject((JSONObject) obj, z);
                }
                jSONArray2.put(obj);
                i = i2 + 1;
            } else {
                return jSONArray2;
            }
        }
    }

    public static JSONObject removeNamespacesFromOGJsonObject(JSONObject jSONObject, boolean z) {
        JSONObject removeNamespacesFromOGJsonArray;
        if (jSONObject == null) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            JSONArray names = jSONObject.names();
            for (int i = 0; i < names.length(); i++) {
                String string = names.getString(i);
                Object obj = jSONObject.get(string);
                if (obj instanceof JSONObject) {
                    removeNamespacesFromOGJsonArray = removeNamespacesFromOGJsonObject((JSONObject) obj, true);
                } else {
                    removeNamespacesFromOGJsonArray = obj instanceof JSONArray ? removeNamespacesFromOGJsonArray((JSONArray) obj, true) : obj;
                }
                Pair<String, String> fieldNameAndNamespaceFromFullName = getFieldNameAndNamespaceFromFullName(string);
                String str = (String) fieldNameAndNamespaceFromFullName.first;
                String str2 = (String) fieldNameAndNamespaceFromFullName.second;
                if (z) {
                    if (str != null && str.equals("fbsdk")) {
                        jSONObject2.put(string, removeNamespacesFromOGJsonArray);
                    } else if (str == null || str.equals("og")) {
                        jSONObject2.put(str2, removeNamespacesFromOGJsonArray);
                    } else {
                        jSONObject3.put(str2, removeNamespacesFromOGJsonArray);
                    }
                } else if (str != null && str.equals("fb")) {
                    jSONObject2.put(string, removeNamespacesFromOGJsonArray);
                } else {
                    jSONObject2.put(str2, removeNamespacesFromOGJsonArray);
                }
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("data", jSONObject3);
            }
            return jSONObject2;
        } catch (JSONException e) {
            throw new FacebookException("Failed to create json object from share content");
        }
    }

    public static Pair<String, String> getFieldNameAndNamespaceFromFullName(String str) {
        String str2 = null;
        int indexOf = str.indexOf(58);
        if (indexOf != -1 && str.length() > indexOf + 1) {
            str2 = str.substring(0, indexOf);
            str = str.substring(indexOf + 1);
        }
        return new Pair<>(str2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NativeAppCallAttachmentStore.Attachment getAttachment(UUID uuid, ShareMedia shareMedia) {
        Uri uri;
        Bitmap bitmap;
        if (shareMedia instanceof SharePhoto) {
            SharePhoto sharePhoto = (SharePhoto) shareMedia;
            bitmap = sharePhoto.getBitmap();
            uri = sharePhoto.getImageUrl();
        } else if (shareMedia instanceof ShareVideo) {
            uri = ((ShareVideo) shareMedia).getLocalUrl();
            bitmap = null;
        } else {
            uri = null;
            bitmap = null;
        }
        if (bitmap != null) {
            return NativeAppCallAttachmentStore.createAttachment(uuid, bitmap);
        }
        if (uri == null) {
            return null;
        }
        return NativeAppCallAttachmentStore.createAttachment(uuid, uri);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void invokeOnCancelCallback(FacebookCallback<Sharer.Result> facebookCallback) {
        logShareResult(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED, null);
        if (facebookCallback != null) {
            facebookCallback.onCancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void invokeOnSuccessCallback(FacebookCallback<Sharer.Result> facebookCallback, String str) {
        logShareResult(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED, null);
        if (facebookCallback != null) {
            facebookCallback.onSuccess(new Sharer.Result(str));
        }
    }

    static void invokeOnErrorCallback(FacebookCallback<Sharer.Result> facebookCallback, GraphResponse graphResponse, String str) {
        logShareResult("error", str);
        if (facebookCallback != null) {
            facebookCallback.onError(new FacebookGraphResponseException(graphResponse, str));
        }
    }

    static void invokeOnErrorCallback(FacebookCallback<Sharer.Result> facebookCallback, String str) {
        logShareResult("error", str);
        if (facebookCallback != null) {
            facebookCallback.onError(new FacebookException(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void invokeOnErrorCallback(FacebookCallback<Sharer.Result> facebookCallback, FacebookException facebookException) {
        logShareResult("error", facebookException.getMessage());
        if (facebookCallback != null) {
            facebookCallback.onError(facebookException);
        }
    }

    private static void logShareResult(String str, String str2) {
        AppEventsLogger newLogger = AppEventsLogger.newLogger(FacebookSdk.getApplicationContext());
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_OUTCOME, str);
        if (str2 != null) {
            bundle.putString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE, str2);
        }
        newLogger.logSdkEvent(AnalyticsEvents.EVENT_SHARE_RESULT, null, bundle);
    }

    public static GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, Bitmap bitmap, GraphRequest.Callback callback) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", bitmap);
        return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, File file, GraphRequest.Callback callback) throws FileNotFoundException {
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, DriveFile.MODE_READ_ONLY), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, Uri uri, GraphRequest.Callback callback) throws FileNotFoundException {
        if (Utility.isFileUri(uri)) {
            return newUploadStagingResourceWithImageRequest(accessToken, new File(uri.getPath()), callback);
        }
        if (!Utility.isContentUri(uri)) {
            throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
        }
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(uri, "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback);
    }

    public static LikeView.ObjectType getMostSpecificObjectType(LikeView.ObjectType objectType, LikeView.ObjectType objectType2) {
        if (objectType != objectType2) {
            if (objectType == LikeView.ObjectType.UNKNOWN) {
                return objectType2;
            }
            if (objectType2 != LikeView.ObjectType.UNKNOWN) {
                return null;
            }
            return objectType;
        }
        return objectType;
    }
}
