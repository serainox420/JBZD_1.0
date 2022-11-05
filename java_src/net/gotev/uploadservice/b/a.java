package net.gotev.uploadservice.b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import net.gotev.uploadservice.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ContentSchemeHandler.java */
/* loaded from: classes3.dex */
public class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private Uri f5841a;

    a() {
    }

    @Override // net.gotev.uploadservice.b.c
    public void a(String str) {
        this.f5841a = Uri.parse(str);
    }

    @Override // net.gotev.uploadservice.b.c
    public long a(Context context) {
        return e(context);
    }

    @Override // net.gotev.uploadservice.b.c
    public InputStream b(Context context) throws FileNotFoundException {
        return context.getContentResolver().openInputStream(this.f5841a);
    }

    @Override // net.gotev.uploadservice.b.c
    public String c(Context context) {
        String type = context.getContentResolver().getType(this.f5841a);
        if (type == null || type.isEmpty()) {
            return "application/octet-stream";
        }
        return type;
    }

    @Override // net.gotev.uploadservice.b.c
    public String d(Context context) {
        return f(context);
    }

    private long e(Context context) {
        Cursor query = context.getContentResolver().query(this.f5841a, null, null, null, null);
        if (query == null) {
            Logger.a(getClass().getSimpleName(), "null cursor for " + this.f5841a + ", returning size 0");
            return 0L;
        }
        int columnIndex = query.getColumnIndex("_size");
        query.moveToFirst();
        long j = query.getLong(columnIndex);
        query.close();
        return j;
    }

    private String f(Context context) {
        Cursor query = context.getContentResolver().query(this.f5841a, null, null, null, null);
        if (query == null) {
            return a();
        }
        int columnIndex = query.getColumnIndex("_display_name");
        query.moveToFirst();
        String string = query.getString(columnIndex);
        query.close();
        return string;
    }

    private String a() {
        String[] split = this.f5841a.toString().split(File.separator);
        return split[split.length - 1];
    }
}
