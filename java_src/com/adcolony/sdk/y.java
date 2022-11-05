package com.adcolony.sdk;

import android.media.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes.dex */
class y {

    /* renamed from: a  reason: collision with root package name */
    final String f1504a;
    final int b;
    HashMap<Integer, MediaPlayer> c = new HashMap<>();
    HashMap<Integer, a> d = new HashMap<>();
    HashMap<Integer, Boolean> e = new HashMap<>();
    HashMap<Integer, Boolean> f = new HashMap<>();
    ArrayList<MediaPlayer> g = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(String str, int i) {
        this.f1504a = str;
        this.b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(z zVar) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        int c = s.c(zVar.b, "id");
        a aVar = new a(c, s.d(zVar.b, "repeats"));
        this.c.put(Integer.valueOf(c), mediaPlayer);
        this.d.put(Integer.valueOf(c), aVar);
        this.e.put(Integer.valueOf(c), false);
        this.f.put(Integer.valueOf(c), false);
        mediaPlayer.setOnErrorListener(aVar);
        mediaPlayer.setOnPreparedListener(aVar);
        try {
            mediaPlayer.setDataSource(s.b(zVar.b, "filepath"));
        } catch (Exception e) {
            JSONObject a2 = s.a();
            s.b(a2, "id", c);
            s.a(a2, "ad_session_id", this.f1504a);
            new z("AudioPlayer.on_error", this.b, a2).b();
        }
        mediaPlayer.prepareAsync();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.g.clear();
        for (MediaPlayer mediaPlayer : this.c.values()) {
            if (mediaPlayer.isPlaying()) {
                mediaPlayer.pause();
                this.g.add(mediaPlayer);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        Iterator<MediaPlayer> it = this.g.iterator();
        while (it.hasNext()) {
            it.next().start();
        }
        this.g.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(z zVar) {
        int c = s.c(zVar.b, "id");
        if (this.f.get(Integer.valueOf(c)).booleanValue()) {
            this.c.get(Integer.valueOf(c)).pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(z zVar) {
        int c = s.c(zVar.b, "id");
        if (this.e.get(Integer.valueOf(c)).booleanValue()) {
            this.c.get(Integer.valueOf(c)).start();
            this.f.put(Integer.valueOf(c), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(z zVar) {
        this.c.remove(Integer.valueOf(s.c(zVar.b, "id"))).release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(z zVar) {
        int c = s.c(zVar.b, "id");
        if (this.f.get(Integer.valueOf(c)).booleanValue()) {
            MediaPlayer mediaPlayer = this.c.get(Integer.valueOf(c));
            mediaPlayer.pause();
            mediaPlayer.seekTo(0);
        }
    }

    /* loaded from: classes.dex */
    private class a implements MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {

        /* renamed from: a  reason: collision with root package name */
        int f1505a;
        boolean b;

        a(int i, boolean z) {
            this.f1505a = i;
            this.b = z;
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            JSONObject a2 = s.a();
            s.b(a2, "id", this.f1505a);
            s.a(a2, "ad_session_id", y.this.f1504a);
            new z("AudioPlayer.on_error", y.this.b, a2).b();
            return true;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            mediaPlayer.setLooping(this.b);
            y.this.e.put(Integer.valueOf(this.f1505a), true);
            JSONObject a2 = s.a();
            s.b(a2, "id", this.f1505a);
            s.a(a2, "ad_session_id", y.this.f1504a);
            new z("AudioPlayer.on_ready", y.this.b, a2).b();
        }
    }
}
