package com.millennialmedia.internal.playlistserver;

import com.facebook.internal.AnalyticsEvents;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class PlayListServer {
    private static Class<? extends PlayListServerAdapter> b;

    /* renamed from: a  reason: collision with root package name */
    private static final String f4165a = PlayListServer.class.getSimpleName();
    public static final List<String> supportedAdFormats = Arrays.asList(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_WEB, "native");

    /* loaded from: classes3.dex */
    public interface PlayListLoadListener {
        void onLoadFailed(Throwable th);

        void onLoaded(PlayList playList);
    }

    public static void loadPlayList(Map<String, Object> map, final PlayListLoadListener playListLoadListener, int i) {
        if (!Handshake.getSdkEnabled()) {
            MMLog.e(f4165a, "Unable to request ad, SDK is disabled.  Please contact Millennial Media.");
            playListLoadListener.onLoadFailed(new RuntimeException("SDK disabled"));
        } else if (!EnvironmentUtils.isNetworkAvailable()) {
            MMLog.e(f4165a, "Unable to request ad, no network connection found");
            playListLoadListener.onLoadFailed(new RuntimeException("Network not available"));
        } else {
            try {
                a().loadPlayList(map, new PlayListServerAdapter.AdapterLoadListener() { // from class: com.millennialmedia.internal.playlistserver.PlayListServer.1
                    @Override // com.millennialmedia.internal.playlistserver.PlayListServerAdapter.AdapterLoadListener
                    public void loadSucceeded(PlayList playList) {
                        if (playList != null) {
                            PlayListLoadListener.this.onLoaded(playList);
                        } else {
                            PlayListLoadListener.this.onLoadFailed(new RuntimeException("Playlist provided by adapter is null"));
                        }
                    }

                    @Override // com.millennialmedia.internal.playlistserver.PlayListServerAdapter.AdapterLoadListener
                    public void loadFailed(Throwable th) {
                        PlayListLoadListener.this.onLoadFailed(th);
                    }
                }, i);
            } catch (Exception e) {
                playListLoadListener.onLoadFailed(e);
            }
        }
    }

    public static void setActivePlayListServerAdapter(Class<? extends PlayListServerAdapter> cls) {
        b = cls;
    }

    private static PlayListServerAdapter a() throws Exception {
        Class<? extends PlayListServerAdapter> cls = b;
        if (cls == null) {
            cls = Handshake.getActivePlayListServerAdapterClass();
        }
        return PlayListServerAdapter.a(cls);
    }
}
