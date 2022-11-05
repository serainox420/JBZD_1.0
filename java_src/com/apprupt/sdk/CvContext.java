package com.apprupt.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.view.Display;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CvContext extends ContextWrapper implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    private Context f1780a;
    private ArrayList<Context> b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvContext(Context context) {
        super(context);
        this.f1780a = null;
        this.b = new ArrayList<>();
        this.f1780a = context;
    }

    public Activity a() {
        if (this.f1780a instanceof Activity) {
            return (Activity) this.f1780a;
        }
        return null;
    }

    @Override // android.content.ContextWrapper
    public Context getBaseContext() {
        Context context;
        synchronized (this) {
            context = this.f1780a;
        }
        return context;
    }

    public void a(Context context) {
        this.f1780a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Context context) {
        synchronized (this) {
            this.b.add(this.f1780a);
            this.f1780a = context;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        synchronized (this) {
            int size = this.b.size();
            if (size > 0) {
                this.f1780a = this.b.remove(size - 1);
            }
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkSelfPermission(String str) {
        try {
            return ((Integer) this.f1780a.getClass().getMethod("checkSelfPermission", new Class[0]).invoke(this.f1780a, new Object[0])).intValue();
        } catch (Exception e) {
            return 0;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getSystemServiceName(Class<?> cls) {
        try {
            return (String) this.f1780a.getClass().getMethod("getSystemServiceName", new Class[0]).invoke(this.f1780a, new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1780a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1780a.getResources();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public PackageManager getPackageManager() {
        return this.f1780a.getPackageManager();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ContentResolver getContentResolver() {
        return this.f1780a.getContentResolver();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Looper getMainLooper() {
        return this.f1780a.getMainLooper();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        return this.f1780a.getApplicationContext();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        this.f1780a.setTheme(i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        return this.f1780a.getTheme();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ClassLoader getClassLoader() {
        return this.f1780a.getClassLoader();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        return this.f1780a.getPackageName();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ApplicationInfo getApplicationInfo() {
        return this.f1780a.getApplicationInfo();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageResourcePath() {
        return this.f1780a.getPackageResourcePath();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageCodePath() {
        return this.f1780a.getPackageCodePath();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return this.f1780a.getSharedPreferences(str, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public FileInputStream openFileInput(String str) throws FileNotFoundException {
        return this.f1780a.openFileInput(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public FileOutputStream openFileOutput(String str, int i) throws FileNotFoundException {
        return this.f1780a.openFileOutput(str, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteFile(String str) {
        return this.f1780a.deleteFile(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFileStreamPath(String str) {
        return this.f1780a.getFileStreamPath(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        return this.f1780a.getFilesDir();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getNoBackupFilesDir() {
        try {
            return (File) this.f1780a.getClass().getMethod("getNoBackupFilesDir", new Class[0]).invoke(this.f1780a, new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalFilesDir(String str) {
        return this.f1780a.getExternalFilesDir(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(19)
    public File[] getExternalFilesDirs(String str) {
        return this.f1780a.getExternalFilesDirs(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(11)
    public File getObbDir() {
        return this.f1780a.getObbDir();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(19)
    public File[] getObbDirs() {
        return this.f1780a.getObbDirs();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        return this.f1780a.getCacheDir();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCodeCacheDir() {
        try {
            return (File) this.f1780a.getClass().getMethod("getCodeCacheDir", new Class[0]).invoke(this.f1780a, new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalCacheDir() {
        return this.f1780a.getExternalCacheDir();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(19)
    public File[] getExternalCacheDirs() {
        return this.f1780a.getExternalCacheDirs();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File[] getExternalMediaDirs() {
        try {
            return (File[]) this.f1780a.getClass().getMethod("getExternalMediaDirs", new Class[0]).invoke(this.f1780a, new Object[0]);
        } catch (Exception e) {
            return new File[0];
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String[] fileList() {
        return this.f1780a.fileList();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDir(String str, int i) {
        return this.f1780a.getDir(str, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory) {
        return this.f1780a.openOrCreateDatabase(str, i, cursorFactory);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(11)
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return this.f1780a.openOrCreateDatabase(str, i, cursorFactory, databaseErrorHandler);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean deleteDatabase(String str) {
        return this.f1780a.deleteDatabase(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDatabasePath(String str) {
        return this.f1780a.getDatabasePath(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String[] databaseList() {
        return this.f1780a.databaseList();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Drawable getWallpaper() {
        return this.f1780a.getWallpaper();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Drawable peekWallpaper() {
        return this.f1780a.peekWallpaper();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int getWallpaperDesiredMinimumWidth() {
        return this.f1780a.getWallpaperDesiredMinimumWidth();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int getWallpaperDesiredMinimumHeight() {
        return this.f1780a.getWallpaperDesiredMinimumHeight();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setWallpaper(Bitmap bitmap) throws IOException {
        this.f1780a.setWallpaper(bitmap);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setWallpaper(InputStream inputStream) throws IOException {
        this.f1780a.setWallpaper(inputStream);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void clearWallpaper() throws IOException {
        this.f1780a.clearWallpaper();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        this.f1780a.startActivity(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(16)
    public void startActivity(Intent intent, Bundle bundle) {
        this.f1780a.startActivity(intent, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(11)
    public void startActivities(Intent[] intentArr) {
        this.f1780a.startActivities(intentArr);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(16)
    public void startActivities(Intent[] intentArr, Bundle bundle) {
        this.f1780a.startActivities(intentArr, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startIntentSender(IntentSender intentSender, Intent intent, int i, int i2, int i3) throws IntentSender.SendIntentException {
        this.f1780a.startIntentSender(intentSender, intent, i, i2, i3);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(16)
    public void startIntentSender(IntentSender intentSender, Intent intent, int i, int i2, int i3, Bundle bundle) throws IntentSender.SendIntentException {
        this.f1780a.startIntentSender(intentSender, intent, i, i2, i3, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendBroadcast(Intent intent) {
        this.f1780a.sendBroadcast(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendBroadcast(Intent intent, String str) {
        this.f1780a.sendBroadcast(intent, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str) {
        this.f1780a.sendOrderedBroadcast(intent, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str, BroadcastReceiver broadcastReceiver, Handler handler, int i, String str2, Bundle bundle) {
        this.f1780a.sendOrderedBroadcast(intent, str, broadcastReceiver, handler, i, str2, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(17)
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle) {
        this.f1780a.sendBroadcastAsUser(intent, userHandle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(17)
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle, String str) {
        this.f1780a.sendBroadcastAsUser(intent, userHandle, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(17)
    public void sendOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, String str, BroadcastReceiver broadcastReceiver, Handler handler, int i, String str2, Bundle bundle) {
        this.f1780a.sendOrderedBroadcastAsUser(intent, userHandle, str, broadcastReceiver, handler, i, str2, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendStickyBroadcast(Intent intent) {
        this.f1780a.sendStickyBroadcast(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendStickyOrderedBroadcast(Intent intent, BroadcastReceiver broadcastReceiver, Handler handler, int i, String str, Bundle bundle) {
        this.f1780a.sendStickyOrderedBroadcast(intent, broadcastReceiver, handler, i, str, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void removeStickyBroadcast(Intent intent) {
        this.f1780a.removeStickyBroadcast(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(17)
    public void sendStickyBroadcastAsUser(Intent intent, UserHandle userHandle) {
        this.f1780a.removeStickyBroadcastAsUser(intent, userHandle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(17)
    public void sendStickyOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, BroadcastReceiver broadcastReceiver, Handler handler, int i, String str, Bundle bundle) {
        this.f1780a.sendStickyOrderedBroadcastAsUser(intent, userHandle, broadcastReceiver, handler, i, str, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(17)
    public void removeStickyBroadcastAsUser(Intent intent, UserHandle userHandle) {
        this.f1780a.removeStickyBroadcastAsUser(intent, userHandle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return this.f1780a.registerReceiver(broadcastReceiver, intentFilter);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        return this.f1780a.registerReceiver(broadcastReceiver, intentFilter, str, handler);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        this.f1780a.unregisterReceiver(broadcastReceiver);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ComponentName startService(Intent intent) {
        return this.f1780a.startService(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean stopService(Intent intent) {
        return this.f1780a.stopService(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean bindService(Intent intent, ServiceConnection serviceConnection, int i) {
        return this.f1780a.bindService(intent, serviceConnection, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unbindService(ServiceConnection serviceConnection) {
        this.f1780a.unbindService(serviceConnection);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean startInstrumentation(ComponentName componentName, String str, Bundle bundle) {
        return this.f1780a.startInstrumentation(componentName, str, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        return this.f1780a.getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkPermission(String str, int i, int i2) {
        return this.f1780a.checkPermission(str, i, i2);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkCallingPermission(String str) {
        return this.f1780a.checkCallingPermission(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkCallingOrSelfPermission(String str) {
        return this.f1780a.checkCallingOrSelfPermission(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void enforcePermission(String str, int i, int i2, String str2) {
        this.f1780a.enforcePermission(str, i, i2, str2);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void enforceCallingPermission(String str, String str2) {
        this.f1780a.enforceCallingPermission(str, str2);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void enforceCallingOrSelfPermission(String str, String str2) {
        this.f1780a.enforceCallingOrSelfPermission(str, str2);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void grantUriPermission(String str, Uri uri, int i) {
        this.f1780a.grantUriPermission(str, uri, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void revokeUriPermission(Uri uri, int i) {
        this.f1780a.revokeUriPermission(uri, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkUriPermission(Uri uri, int i, int i2, int i3) {
        return this.f1780a.checkUriPermission(uri, i, i2, i3);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkCallingUriPermission(Uri uri, int i) {
        return this.f1780a.checkCallingUriPermission(uri, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkCallingOrSelfUriPermission(Uri uri, int i) {
        return this.f1780a.checkCallingOrSelfUriPermission(uri, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkUriPermission(Uri uri, String str, String str2, int i, int i2, int i3) {
        return this.f1780a.checkUriPermission(uri, str, str2, i, i2, i3);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void enforceUriPermission(Uri uri, int i, int i2, int i3, String str) {
        this.f1780a.enforceUriPermission(uri, i, i2, i3, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void enforceCallingUriPermission(Uri uri, int i, String str) {
        this.f1780a.enforceCallingUriPermission(uri, i, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void enforceCallingOrSelfUriPermission(Uri uri, int i, String str) {
        this.f1780a.enforceCallingOrSelfUriPermission(uri, i, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void enforceUriPermission(Uri uri, String str, String str2, int i, int i2, int i3, String str3) {
        this.f1780a.enforceUriPermission(uri, str, str2, i, i2, i3, str3);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context createPackageContext(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f1780a.createPackageContext(str, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(17)
    public Context createConfigurationContext(Configuration configuration) {
        return this.f1780a.createConfigurationContext(configuration);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @TargetApi(17)
    public Context createDisplayContext(Display display) {
        return this.f1780a.createDisplayContext(display);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        try {
            return method.invoke(this.f1780a, objArr);
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        } catch (Exception e2) {
            throw new RuntimeException("unexpected invocation exception: " + e2.getMessage());
        }
    }
}
