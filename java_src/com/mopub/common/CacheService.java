package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.DiskLruCache;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Utils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class CacheService {

    /* renamed from: a  reason: collision with root package name */
    private static DiskLruCache f4319a;

    /* loaded from: classes3.dex */
    public interface DiskLruCacheGetListener {
        void onComplete(String str, byte[] bArr);
    }

    public static boolean initializeDiskCache(Context context) {
        if (context == null) {
            return false;
        }
        if (f4319a == null) {
            File diskCacheDirectory = getDiskCacheDirectory(context);
            if (diskCacheDirectory == null) {
                return false;
            }
            try {
                f4319a = DiskLruCache.open(diskCacheDirectory, 1, 1, DeviceUtils.diskCacheSizeBytes(diskCacheDirectory));
            } catch (IOException e) {
                MoPubLog.d("Unable to create DiskLruCache", e);
                return false;
            }
        }
        return true;
    }

    public static void initialize(Context context) {
        initializeDiskCache(context);
    }

    public static String createValidDiskCacheKey(String str) {
        return Utils.sha1(str);
    }

    public static File getDiskCacheDirectory(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        return new File(cacheDir.getPath() + File.separator + "mopub-cache");
    }

    public static boolean containsKeyDiskCache(String str) {
        if (f4319a == null) {
            return false;
        }
        try {
            return f4319a.get(createValidDiskCacheKey(str)) != null;
        } catch (Exception e) {
            return false;
        }
    }

    public static String getFilePathDiskCache(String str) {
        if (f4319a == null) {
            return null;
        }
        return f4319a.getDirectory() + File.separator + createValidDiskCacheKey(str) + ".0";
    }

    public static byte[] getFromDiskCache(String str) {
        DiskLruCache.Snapshot snapshot;
        Throwable th;
        byte[] bArr = null;
        if (f4319a != null) {
            try {
                snapshot = f4319a.get(createValidDiskCacheKey(str));
                if (snapshot != null) {
                    try {
                        try {
                            InputStream inputStream = snapshot.getInputStream(0);
                            if (inputStream != null) {
                                byte[] bArr2 = new byte[(int) snapshot.getLength(0)];
                                try {
                                    BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                                    try {
                                        Streams.readStream(bufferedInputStream, bArr2);
                                        bArr = bArr2;
                                    } finally {
                                        Streams.closeStream(bufferedInputStream);
                                    }
                                } catch (Exception e) {
                                    bArr = bArr2;
                                    e = e;
                                    MoPubLog.d("Unable to get from DiskLruCache", e);
                                    if (snapshot != null) {
                                        snapshot.close();
                                    }
                                    return bArr;
                                }
                            }
                            if (snapshot != null) {
                                snapshot.close();
                            }
                        } catch (Exception e2) {
                            e = e2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (snapshot != null) {
                            snapshot.close();
                        }
                        throw th;
                    }
                } else if (snapshot != null) {
                    snapshot.close();
                }
            } catch (Exception e3) {
                e = e3;
                snapshot = null;
            } catch (Throwable th3) {
                snapshot = null;
                th = th3;
            }
        }
        return bArr;
    }

    public static void getFromDiskCacheAsync(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
        new a(str, diskLruCacheGetListener).execute(new Void[0]);
    }

    public static boolean putToDiskCache(String str, byte[] bArr) {
        return putToDiskCache(str, new ByteArrayInputStream(bArr));
    }

    public static boolean putToDiskCache(String str, InputStream inputStream) {
        if (f4319a == null) {
            return false;
        }
        DiskLruCache.Editor editor = null;
        try {
            editor = f4319a.edit(createValidDiskCacheKey(str));
            if (editor == null) {
                return false;
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(editor.newOutputStream(0));
            Streams.copyContent(inputStream, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            f4319a.flush();
            editor.commit();
            return true;
        } catch (Exception e) {
            MoPubLog.d("Unable to put to DiskLruCache", e);
            if (editor == null) {
                return false;
            }
            try {
                editor.abort();
                return false;
            } catch (IOException e2) {
                return false;
            }
        }
    }

    public static void putToDiskCacheAsync(String str, byte[] bArr) {
        new b(str, bArr).execute(new Void[0]);
    }

    /* loaded from: classes3.dex */
    private static class a extends AsyncTask<Void, Void, byte[]> {

        /* renamed from: a  reason: collision with root package name */
        private final DiskLruCacheGetListener f4320a;
        private final String b;

        a(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
            this.f4320a = diskLruCacheGetListener;
            this.b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public byte[] doInBackground(Void... voidArr) {
            return CacheService.getFromDiskCache(this.b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(byte[] bArr) {
            if (isCancelled()) {
                onCancelled();
            } else if (this.f4320a != null) {
                this.f4320a.onComplete(this.b, bArr);
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            if (this.f4320a != null) {
                this.f4320a.onComplete(this.b, null);
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        private final String f4321a;
        private final byte[] b;

        b(String str, byte[] bArr) {
            this.f4321a = str;
            this.b = bArr;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            CacheService.putToDiskCache(this.f4321a, this.b);
            return null;
        }
    }

    @VisibleForTesting
    @Deprecated
    public static void clearAndNullCaches() {
        if (f4319a != null) {
            try {
                f4319a.delete();
                f4319a = null;
            } catch (IOException e) {
                f4319a = null;
            }
        }
    }

    @VisibleForTesting
    @Deprecated
    public static DiskLruCache getDiskLruCache() {
        return f4319a;
    }
}
