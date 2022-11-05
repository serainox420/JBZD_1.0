package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.os.Bundle;
/* compiled from: MediaSessionCompatApi14.java */
@TargetApi(14)
/* loaded from: classes.dex */
class d {
    public static Object a(PendingIntent pendingIntent) {
        return new RemoteControlClient(pendingIntent);
    }

    public static void a(Object obj, int i) {
        ((RemoteControlClient) obj).setPlaybackState(a(i));
    }

    public static void a(Object obj, long j) {
        ((RemoteControlClient) obj).setTransportControlFlags(a(j));
    }

    public static void a(Object obj, Bundle bundle) {
        RemoteControlClient.MetadataEditor editMetadata = ((RemoteControlClient) obj).editMetadata(true);
        a(bundle, editMetadata);
        editMetadata.apply();
    }

    public static void a(Context context, Object obj) {
        ((AudioManager) context.getSystemService("audio")).registerRemoteControlClient((RemoteControlClient) obj);
    }

    public static void b(Context context, Object obj) {
        ((AudioManager) context.getSystemService("audio")).unregisterRemoteControlClient((RemoteControlClient) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        switch (i) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
            case 8:
                return 8;
            case 7:
                return 9;
            case 9:
                return 7;
            case 10:
            case 11:
                return 6;
            default:
                return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(long j) {
        int i = 0;
        if ((1 & j) != 0) {
            i = 32;
        }
        if ((2 & j) != 0) {
            i |= 16;
        }
        if ((4 & j) != 0) {
            i |= 4;
        }
        if ((8 & j) != 0) {
            i |= 2;
        }
        if ((16 & j) != 0) {
            i |= 1;
        }
        if ((32 & j) != 0) {
            i |= 128;
        }
        if ((64 & j) != 0) {
            i |= 64;
        }
        if ((512 & j) != 0) {
            return i | 8;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Bundle bundle, RemoteControlClient.MetadataEditor metadataEditor) {
        if (bundle != null) {
            if (bundle.containsKey("android.media.metadata.ART")) {
                metadataEditor.putBitmap(100, (Bitmap) bundle.getParcelable("android.media.metadata.ART"));
            } else if (bundle.containsKey("android.media.metadata.ALBUM_ART")) {
                metadataEditor.putBitmap(100, (Bitmap) bundle.getParcelable("android.media.metadata.ALBUM_ART"));
            }
            if (bundle.containsKey("android.media.metadata.ALBUM")) {
                metadataEditor.putString(1, bundle.getString("android.media.metadata.ALBUM"));
            }
            if (bundle.containsKey("android.media.metadata.ALBUM_ARTIST")) {
                metadataEditor.putString(13, bundle.getString("android.media.metadata.ALBUM_ARTIST"));
            }
            if (bundle.containsKey("android.media.metadata.ARTIST")) {
                metadataEditor.putString(2, bundle.getString("android.media.metadata.ARTIST"));
            }
            if (bundle.containsKey("android.media.metadata.AUTHOR")) {
                metadataEditor.putString(3, bundle.getString("android.media.metadata.AUTHOR"));
            }
            if (bundle.containsKey("android.media.metadata.COMPILATION")) {
                metadataEditor.putString(15, bundle.getString("android.media.metadata.COMPILATION"));
            }
            if (bundle.containsKey("android.media.metadata.COMPOSER")) {
                metadataEditor.putString(4, bundle.getString("android.media.metadata.COMPOSER"));
            }
            if (bundle.containsKey("android.media.metadata.DATE")) {
                metadataEditor.putString(5, bundle.getString("android.media.metadata.DATE"));
            }
            if (bundle.containsKey("android.media.metadata.DISC_NUMBER")) {
                metadataEditor.putLong(14, bundle.getLong("android.media.metadata.DISC_NUMBER"));
            }
            if (bundle.containsKey("android.media.metadata.DURATION")) {
                metadataEditor.putLong(9, bundle.getLong("android.media.metadata.DURATION"));
            }
            if (bundle.containsKey("android.media.metadata.GENRE")) {
                metadataEditor.putString(6, bundle.getString("android.media.metadata.GENRE"));
            }
            if (bundle.containsKey("android.media.metadata.TITLE")) {
                metadataEditor.putString(7, bundle.getString("android.media.metadata.TITLE"));
            }
            if (bundle.containsKey("android.media.metadata.TRACK_NUMBER")) {
                metadataEditor.putLong(0, bundle.getLong("android.media.metadata.TRACK_NUMBER"));
            }
            if (bundle.containsKey("android.media.metadata.WRITER")) {
                metadataEditor.putString(11, bundle.getString("android.media.metadata.WRITER"));
            }
        }
    }
}
