package com.adcolony.sdk;

import android.media.SoundPool;
import java.util.HashMap;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class al {

    /* renamed from: a  reason: collision with root package name */
    final String f1046a;
    final int b;
    HashMap<Integer, Integer> c = new HashMap<>();
    HashMap<Integer, Integer> d = new HashMap<>();
    HashMap<Integer, Integer> f = new HashMap<>();
    HashMap<Integer, Boolean> e = new HashMap<>();
    HashMap<Integer, Integer> g = new HashMap<>();
    HashMap<String, Integer> h = new HashMap<>();
    SoundPool i = new SoundPool(50, 3, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(final String str, final int i) {
        this.f1046a = str;
        this.b = i;
        this.i.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.adcolony.sdk.al.1
            @Override // android.media.SoundPool.OnLoadCompleteListener
            public void onLoadComplete(SoundPool soundPool, int i2, int i3) {
                JSONObject a2 = s.a();
                s.b(a2, "id", al.this.f.get(Integer.valueOf(i2)).intValue());
                s.a(a2, "ad_session_id", str);
                if (i3 == 0) {
                    new z("AudioPlayer.on_ready", i, a2).b();
                    al.this.g.put(al.this.f.get(Integer.valueOf(i2)), Integer.valueOf(i2));
                    return;
                }
                new z("AudioPlayer.on_error", i, a2).b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(z zVar) {
        int load = this.i.load(s.b(zVar.b, "filepath"), 1);
        int i = s.d(zVar.b, "repeats") ? -1 : 0;
        this.f.put(Integer.valueOf(load), Integer.valueOf(s.c(zVar.b, "id")));
        u.d.a("Load audio with id = ").b(load);
        this.d.put(Integer.valueOf(load), Integer.valueOf(i));
        this.e.put(Integer.valueOf(load), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(z zVar) {
        this.i.unload(this.g.get(Integer.valueOf(s.c(zVar.b, "id"))).intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(z zVar) {
        int intValue = this.g.get(Integer.valueOf(s.c(zVar.b, "id"))).intValue();
        if (!this.e.get(Integer.valueOf(intValue)).booleanValue()) {
            int play = this.i.play(intValue, 1.0f, 1.0f, 0, this.d.get(Integer.valueOf(intValue)).intValue(), 1.0f);
            if (play != 0) {
                this.c.put(Integer.valueOf(intValue), Integer.valueOf(play));
                return;
            }
            JSONObject a2 = s.a();
            s.b(a2, "id", s.c(zVar.b, "id"));
            s.a(a2, "ad_session_id", this.f1046a);
            new z("AudioPlayer.on_error", this.b, a2).b();
            return;
        }
        this.i.resume(this.c.get(Integer.valueOf(intValue)).intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(z zVar) {
        int intValue = this.g.get(Integer.valueOf(s.c(zVar.b, "id"))).intValue();
        this.i.pause(this.c.get(Integer.valueOf(intValue)).intValue());
        this.e.put(Integer.valueOf(intValue), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(z zVar) {
        this.i.stop(this.c.get(this.g.get(Integer.valueOf(s.c(zVar.b, "id")))).intValue());
    }
}
