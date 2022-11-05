package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;
/* compiled from: PlaybackStateCompatApi22.java */
@TargetApi(22)
/* loaded from: classes.dex */
class k {
    public static Bundle a(Object obj) {
        return ((PlaybackState) obj).getExtras();
    }

    public static Object a(int i, long j, long j2, float f, long j3, CharSequence charSequence, long j4, List<Object> list, long j5, Bundle bundle) {
        PlaybackState.Builder builder = new PlaybackState.Builder();
        builder.setState(i, j, f, j4);
        builder.setBufferedPosition(j2);
        builder.setActions(j3);
        builder.setErrorMessage(charSequence);
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            builder.addCustomAction((PlaybackState.CustomAction) it.next());
        }
        builder.setActiveQueueItemId(j5);
        builder.setExtras(bundle);
        return builder.build();
    }
}
