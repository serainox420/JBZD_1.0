package com.openx.view.video;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.VideoView;
import com.openx.common.utils.logger.OXLog;
import com.openx.model.vast.VASTInterface;
import com.openx.model.vast.VASTPlayer;
import com.openx.model.vast.VideoCompletionListener;
import com.openx.model.vast.VideoErrorListener;
import com.openx.model.vast.VideoPreparedListener;
/* loaded from: classes3.dex */
public class PublisherVideoView extends VideoView implements VASTPlayer {
    boolean canOverrideDraw;
    private VASTInterface vastInterface;

    public PublisherVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.canOverrideDraw = false;
    }

    public PublisherVideoView(Context context) {
        super(context);
        this.canOverrideDraw = false;
    }

    @Override // com.openx.model.vast.VASTPlayer
    public void setVASTInterface(VASTInterface vASTInterface) {
        this.vastInterface = vASTInterface;
    }

    @Override // com.openx.model.vast.VASTPlayer
    public void setVideoCompletionListener(VideoCompletionListener videoCompletionListener) {
    }

    public void setCanOverrideDraw(boolean z) {
        this.canOverrideDraw = z;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        OXLog.info("VIDEOPLAYER", "drawing black");
        if (this.canOverrideDraw) {
            try {
                OXLog.info("VIDEOPLAYER", "drawing black");
                canvas.drawColor(getResources().getColor(17170444));
            } catch (Exception e) {
            }
        }
    }

    @Override // com.openx.model.vast.VASTPlayer
    public void setVideoPreparedListener(VideoPreparedListener videoPreparedListener) {
    }

    @Override // com.openx.model.vast.VASTPlayer
    public void setVideoErrorListener(VideoErrorListener videoErrorListener) {
    }
}
