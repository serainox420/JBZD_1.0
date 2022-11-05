package com.loopme.adview;

import com.loopme.constants.VideoState;
import com.loopme.constants.WebviewState;
/* loaded from: classes2.dex */
class BridgeCommandBuilder {
    private static final String PREFIX = "javascript:window.L.bridge.set";
    private static final String PREFIX_360 = "javascript:window.L.track";

    /* JADX INFO: Access modifiers changed from: package-private */
    public String isNativeCallFinished(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX).append("('webview', {isNativeCallFinished: ").append("'").append(z).append("'});");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String shake(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX).append("('webview', {shake: ").append("'").append(z).append("'});");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String videoMute(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX).append("('video', {mute: ").append(z).append("});");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String videoCurrentTime(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX).append("('video', {currentTime: ").append(i).append("});");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String videoDuration(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX).append("('video', {duration: ").append(i).append("});");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String videoState(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX).append("('video', {state: ").append("'").append(VideoState.toString(i)).append("'});");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String webviewState(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX).append("('webview', {state: ").append("'").append(WebviewState.toString(i)).append("'});");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String fullscreenMode(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX).append("('webview', {fullscreenMode: ").append(z).append("});");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String event360(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX_360).append("({eventType: 'INTERACTION', customEventName: 'video360&mode=").append(str).append("'});");
        return sb.toString();
    }
}
