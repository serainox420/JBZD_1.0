package com.mopub.mobileads;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Build;
import android.widget.ImageView;
import android.widget.VideoView;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Streams;
import java.io.File;
import java.io.FileInputStream;
/* loaded from: classes.dex */
public class VastVideoView extends VideoView {

    /* renamed from: a  reason: collision with root package name */
    private VastVideoBlurLastVideoFrameTask f4483a;
    private MediaMetadataRetriever b;
    private int c;

    public VastVideoView(Context context) {
        super(context);
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        this.b = a();
    }

    public void prepareBlurredLastVideoFrame(ImageView imageView, String str) {
        if (this.b != null) {
            this.f4483a = new VastVideoBlurLastVideoFrameTask(this.b, imageView, getDuration());
            try {
                AsyncTasks.safeExecuteOnExecutor(this.f4483a, str);
            } catch (Exception e) {
                MoPubLog.d("Failed to blur last video frame", e);
            }
        }
    }

    public void onDestroy() {
        if (this.f4483a != null && this.f4483a.getStatus() != AsyncTask.Status.FINISHED) {
            this.f4483a.cancel(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(MediaPlayer mediaPlayer, int i, int i2, String str) {
        FileInputStream fileInputStream;
        if (Build.VERSION.SDK_INT >= 16 || i != 1 || i2 != Integer.MIN_VALUE || this.c >= 1) {
            return false;
        }
        FileInputStream fileInputStream2 = null;
        try {
            mediaPlayer.reset();
            FileInputStream fileInputStream3 = new FileInputStream(new File(str));
            try {
                mediaPlayer.setDataSource(fileInputStream3.getFD());
                mediaPlayer.prepareAsync();
                start();
                Streams.closeStream(fileInputStream3);
                this.c++;
                return true;
            } catch (Exception e) {
                fileInputStream = fileInputStream3;
                Streams.closeStream(fileInputStream);
                this.c++;
                return false;
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream3;
                Streams.closeStream(fileInputStream2);
                this.c++;
                throw th;
            }
        } catch (Exception e2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void onResume() {
        this.c = 0;
    }

    @VisibleForTesting
    MediaMetadataRetriever a() {
        if (Build.VERSION.SDK_INT >= 10) {
            return new MediaMetadataRetriever();
        }
        return null;
    }

    @VisibleForTesting
    @Deprecated
    void setMediaMetadataRetriever(MediaMetadataRetriever mediaMetadataRetriever) {
        this.b = mediaMetadataRetriever;
    }

    @VisibleForTesting
    @Deprecated
    VastVideoBlurLastVideoFrameTask getBlurLastVideoFrameTask() {
        return this.f4483a;
    }

    @VisibleForTesting
    @Deprecated
    void setBlurLastVideoFrameTask(VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask) {
        this.f4483a = vastVideoBlurLastVideoFrameTask;
    }

    @VisibleForTesting
    @Deprecated
    int getVideoRetries() {
        return this.c;
    }
}
