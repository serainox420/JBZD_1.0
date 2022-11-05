package com.openx.view.video;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.BaseResponseHandler;
import com.openx.core.network.GetNetworkTask;
import com.openx.core.network.PostNetworkTask;
import com.openx.core.network.ResponseHandler;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.VastParseError;
import com.openx.model.vast.VASTParser;
import com.openx.view.video.network.DownloadTask;
/* loaded from: classes3.dex */
public class AdVideoView extends View implements ResponseHandler {
    private Context context;
    private DownloadTask downloadTask;
    private String mPath;
    private boolean mPreloaded;
    private int nestingLimit;
    private boolean preloadAdVideos;
    private int responseNum;
    private VASTParser vast;
    private String vastTag;
    private AdVideoPreloadedListener videoPreloadedListener;

    /* loaded from: classes3.dex */
    public interface AdVideoPreloadedListener extends BaseResponseHandler {
        void preloaded();

        void preloadedError();
    }

    public void cancelDownload() {
        if (this.downloadTask != null) {
            this.downloadTask.cancel(true);
        }
    }

    public void setAdVideoPreloadedListener(AdVideoPreloadedListener adVideoPreloadedListener) {
        this.videoPreloadedListener = adVideoPreloadedListener;
    }

    public AdVideoView(Context context, String str, boolean z) {
        super(context);
        this.mPreloaded = false;
        this.mPath = "";
        this.nestingLimit = 5;
        this.responseNum = 0;
        this.context = context;
        this.vastTag = str;
        this.preloadAdVideos = z;
        init();
        setVisibility(8);
        ((Activity) context).addContentView(this, new ViewGroup.LayoutParams(-2, -2));
    }

    public AdVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPreloaded = false;
        this.mPath = "";
        this.nestingLimit = 5;
        this.responseNum = 0;
        this.context = context;
        init();
    }

    private void init() {
        OXMManagersResolver.getInstance().prepare(this.context);
        ((Activity) this.context).getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
    }

    public ViewGroup getParentContainer() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) parent;
    }

    public ViewGroup detachFromParent() {
        ViewGroup parentContainer = getParentContainer();
        if (parentContainer != null) {
            parentContainer.removeView(this);
            return parentContainer;
        }
        return null;
    }

    public void preload() {
        String str = this.vastTag;
        PostNetworkTask postNetworkTask = new PostNetworkTask(this);
        BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
        getUrlParams.userAgent = OXSettings.userAgent;
        if (str != null) {
            String[] split = str.split("\\?");
            if (split.length >= 2) {
                getUrlParams.url = split[0];
                getUrlParams.queryParams = split[1];
            }
        }
        postNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
    }

    public void setVideoPath(String str) {
        this.mPath = str;
    }

    public boolean isPreloaded() {
        return this.mPreloaded;
    }

    public void setPreloaded(boolean z) {
        this.mPreloaded = z;
    }

    public String getVideoPath() {
        return this.mPath;
    }

    public VASTParser getVASTXml() {
        return this.vast;
    }

    @Override // com.openx.core.network.ResponseHandler
    public void processResponse(BaseNetworkTask.GetUrlResult getUrlResult) {
        VASTParser vASTParser;
        if (!getUrlResult.response.contains("VAST version")) {
            processError("VAST Error: ");
            return;
        }
        this.responseNum++;
        if (this.vast == null) {
            OXLog.debug("VAST", "Parent: ");
            try {
                this.vast = new VASTParser(this.context, getUrlResult.response);
                vASTParser = null;
            } catch (VastParseError e) {
                processError("VAST Error: ");
                vASTParser = null;
            }
        } else {
            OXLog.debug("VAST", "Nested: ");
            try {
                vASTParser = new VASTParser(this.context, getUrlResult.response);
            } catch (VastParseError e2) {
                processError("VAST Error: ");
                vASTParser = null;
            }
        }
        VASTParser vASTParser2 = this.vast;
        while (vASTParser2.getWrappedVASTXml() != null) {
            vASTParser2 = vASTParser2.getWrappedVASTXml();
        }
        if (vASTParser != null) {
            vASTParser2.setWrapper(vASTParser);
        }
        String vASTAdTagURI = vASTParser2.getVASTAdTagURI(vASTParser != null ? vASTParser : vASTParser2);
        if (!TextUtils.isEmpty(vASTAdTagURI)) {
            OXLog.debug("VAST", vASTAdTagURI);
            if (this.responseNum < this.nestingLimit) {
                PostNetworkTask postNetworkTask = new PostNetworkTask(this);
                BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
                if (vASTAdTagURI != null) {
                    String[] split = vASTAdTagURI.split("\\?");
                    if (split.length >= 2) {
                        getUrlParams.url = split[0];
                        getUrlParams.queryParams = split[1];
                    }
                }
                getUrlParams.userAgent = OXSettings.userAgent;
                postNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
                return;
            }
            Utils.log(this, "VAST Wrapper limit reached: " + this.nestingLimit);
            OXLog.debug("VAST", "VAST Wrapper limit reached: " + this.nestingLimit);
            processError("VAST Wrapper limit reached: " + this.nestingLimit);
            this.responseNum = 0;
            return;
        }
        OXLog.debug("VAST", "Else: ");
        ProgressDialog progressDialog = new ProgressDialog(this.context);
        progressDialog.setMessage("Preloading Video Ad");
        progressDialog.setIndeterminate(true);
        progressDialog.setProgressStyle(1);
        progressDialog.setCancelable(true);
        if (this.preloadAdVideos) {
            this.downloadTask = new DownloadTask(this.context, this.videoPreloadedListener);
        }
        String error = vASTParser != null ? vASTParser.getError(vASTParser, 0) : this.vast.getError(this.vast, 0);
        if (!TextUtils.isEmpty(error)) {
            GetNetworkTask getNetworkTask = new GetNetworkTask(null);
            BaseNetworkTask.GetUrlParams getUrlParams2 = new BaseNetworkTask.GetUrlParams();
            getUrlParams2.url = error;
            getUrlParams2.userAgent = OXSettings.userAgent;
            getNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams2});
            processError("VAST Error Node Populated: " + error);
            return;
        }
        String mediaFileUrl = vASTParser != null ? vASTParser.getMediaFileUrl(vASTParser, 0) : this.vast.getMediaFileUrl(this.vast, 0);
        this.vast.getAllTrackings(this.vast, 0);
        this.vast.getImpressions(this.vast, 0);
        this.vast.getClickTrackings(this.vast, 0);
        if (!TextUtils.isEmpty(mediaFileUrl) && !mediaFileUrl.equals("invalid media file")) {
            if (this.preloadAdVideos) {
                setVideoPath(mediaFileUrl.substring(mediaFileUrl.lastIndexOf("/"), mediaFileUrl.length()));
                BaseNetworkTask.GetUrlParams getUrlParams3 = new BaseNetworkTask.GetUrlParams();
                getUrlParams3.url = mediaFileUrl;
                getUrlParams3.userAgent = OXSettings.userAgent;
                this.downloadTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams3});
                progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.openx.view.video.AdVideoView.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        AdVideoView.this.downloadTask.cancel(true);
                    }
                });
                return;
            }
            setVideoPath(mediaFileUrl);
            this.videoPreloadedListener.preloaded();
            return;
        }
        processError("invalid path or media file type");
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z && this.downloadTask != null) {
            this.downloadTask.cancel(true);
        }
    }

    @Override // com.openx.core.network.ResponseHandler
    public void processError(String str) {
        this.videoPreloadedListener.preloadedError();
    }

    @Override // com.openx.core.network.ResponseHandler
    public void processError(String str, Throwable th) {
        this.videoPreloadedListener.preloadedError();
    }
}
