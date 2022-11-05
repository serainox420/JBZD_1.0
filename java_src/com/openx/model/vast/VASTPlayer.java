package com.openx.model.vast;
/* loaded from: classes3.dex */
public interface VASTPlayer {
    void setVASTInterface(VASTInterface vASTInterface);

    void setVideoCompletionListener(VideoCompletionListener videoCompletionListener);

    void setVideoErrorListener(VideoErrorListener videoErrorListener);

    void setVideoPreparedListener(VideoPreparedListener videoPreparedListener);
}
