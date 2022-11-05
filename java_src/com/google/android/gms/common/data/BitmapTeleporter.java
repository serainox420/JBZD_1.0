package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.drive.DriveFile;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public class BitmapTeleporter extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zza();
    ParcelFileDescriptor zzSQ;
    private Bitmap zzaDF;
    private boolean zzaDG;
    private File zzaDH;
    final int zzaiI;
    final int zzakD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.zzaiI = i;
        this.zzSQ = parcelFileDescriptor;
        this.zzakD = i2;
        this.zzaDF = null;
        this.zzaDG = false;
    }

    public BitmapTeleporter(Bitmap bitmap) {
        this.zzaiI = 1;
        this.zzSQ = null;
        this.zzakD = 0;
        this.zzaDF = bitmap;
        this.zzaDG = true;
    }

    private void zza(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("BitmapTeleporter", "Could not close stream", e);
        }
    }

    private FileOutputStream zzxh() {
        if (this.zzaDH == null) {
            throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
        }
        try {
            File createTempFile = File.createTempFile("teleporter", ".tmp", this.zzaDH);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                this.zzSQ = ParcelFileDescriptor.open(createTempFile, DriveFile.MODE_READ_ONLY);
                createTempFile.delete();
                return fileOutputStream;
            } catch (FileNotFoundException e) {
                throw new IllegalStateException("Temporary file is somehow already deleted");
            }
        } catch (IOException e2) {
            throw new IllegalStateException("Could not create temporary file", e2);
        }
    }

    public void release() {
        if (!this.zzaDG) {
            try {
                this.zzSQ.close();
            } catch (IOException e) {
                Log.w("BitmapTeleporter", "Could not close PFD", e);
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.zzSQ == null) {
            Bitmap bitmap = this.zzaDF;
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            DataOutputStream dataOutputStream = new DataOutputStream(zzxh());
            try {
                try {
                    dataOutputStream.writeInt(array.length);
                    dataOutputStream.writeInt(bitmap.getWidth());
                    dataOutputStream.writeInt(bitmap.getHeight());
                    dataOutputStream.writeUTF(bitmap.getConfig().toString());
                    dataOutputStream.write(array);
                } catch (IOException e) {
                    throw new IllegalStateException("Could not write into unlinked file", e);
                }
            } finally {
                zza(dataOutputStream);
            }
        }
        zza.zza(this, parcel, i | 1);
        this.zzSQ = null;
    }

    public void zzd(File file) {
        if (file == null) {
            throw new NullPointerException("Cannot set null temp directory");
        }
        this.zzaDH = file;
    }

    public Bitmap zzxg() {
        if (!this.zzaDG) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zzSQ));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int readInt = dataInputStream.readInt();
                    int readInt2 = dataInputStream.readInt();
                    Bitmap.Config valueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    zza(dataInputStream);
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    Bitmap createBitmap = Bitmap.createBitmap(readInt, readInt2, valueOf);
                    createBitmap.copyPixelsFromBuffer(wrap);
                    this.zzaDF = createBitmap;
                    this.zzaDG = true;
                } catch (IOException e) {
                    throw new IllegalStateException("Could not read from parcel file descriptor", e);
                }
            } catch (Throwable th) {
                zza(dataInputStream);
                throw th;
            }
        }
        return this.zzaDF;
    }
}
