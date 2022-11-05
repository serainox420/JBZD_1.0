package okhttp3;

import okio.ByteString;
/* loaded from: classes3.dex */
public abstract class WebSocketListener {
    public void onOpen(WebSocket webSocket, Response response) {
    }

    public void onMessage(WebSocket webSocket, String str) {
    }

    public void onMessage(WebSocket webSocket, ByteString byteString) {
    }

    public void onClosing(WebSocket webSocket, int i, String str) {
    }

    public void onClosed(WebSocket webSocket, int i, String str) {
    }

    public void onFailure(WebSocket webSocket, Throwable th, Response response) {
    }
}