package com.google.android.gms.maps.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
/* loaded from: classes2.dex */
public abstract class UrlTileProvider implements TileProvider {
    private final int zzrC;
    private final int zzrD;

    public UrlTileProvider(int i, int i2) {
        this.zzrC = i;
        this.zzrD = i2;
    }

    private static long zzb(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    private static byte[] zzk(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        zzb(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.google.android.gms.maps.model.TileProvider
    public final Tile getTile(int i, int i2, int i3) {
        URL tileUrl = getTileUrl(i, i2, i3);
        if (tileUrl == null) {
            return NO_TILE;
        }
        try {
            return new Tile(this.zzrC, this.zzrD, zzk(tileUrl.openStream()));
        } catch (IOException e) {
            return null;
        }
    }

    public abstract URL getTileUrl(int i, int i2, int i3);
}
