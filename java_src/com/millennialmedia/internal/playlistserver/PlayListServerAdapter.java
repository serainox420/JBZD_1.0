package com.millennialmedia.internal.playlistserver;

import com.millennialmedia.MMLog;
import com.millennialmedia.internal.PlayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class PlayListServerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4167a = PlayListServerAdapter.class.getSimpleName();
    private static Map<Class<? extends PlayListServerAdapter>, PlayListServerAdapter> b = new HashMap();

    /* loaded from: classes3.dex */
    public interface AdapterLoadListener {
        void loadFailed(Throwable th);

        void loadSucceeded(PlayList playList);
    }

    public abstract void loadPlayList(Map<String, Object> map, AdapterLoadListener adapterLoadListener, int i);

    public static void registerPackagedAdapters() {
        registerAdapter(new GreenServerAdapter());
        registerAdapter(new OrangeServerAdapter());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void registerAdapter(PlayListServerAdapter playListServerAdapter) {
        if (playListServerAdapter == null) {
            throw new IllegalArgumentException("PlayListServerAdapter cannot be null");
        }
        Class<?> cls = playListServerAdapter.getClass();
        if (b.containsKey(cls)) {
            MMLog.w(f4167a, "PlayListServerAdapter <" + cls + "> already registered");
            return;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4167a, "Registering PlayListServerAdapter <" + cls + ">");
        }
        b.put(cls, playListServerAdapter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PlayListServerAdapter a(Class<? extends PlayListServerAdapter> cls) throws Exception {
        PlayListServerAdapter playListServerAdapter = b.get(cls);
        if (playListServerAdapter == null) {
            throw new Exception("Unable to find specified PlayListServerAdapter for class " + cls);
        }
        return playListServerAdapter;
    }
}
