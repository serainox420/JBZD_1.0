package com.facebook.appevents;

import android.content.Context;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AccessTokenAppIdPair;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.Utility;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppEventStore {
    private static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
    private static final String TAG = AppEventStore.class.getName();

    AppEventStore() {
    }

    public static synchronized void persistEvents(AccessTokenAppIdPair accessTokenAppIdPair, SessionEventsState sessionEventsState) {
        synchronized (AppEventStore.class) {
            AppEventUtility.assertIsNotMainThread();
            PersistedEvents readAndClearStore = readAndClearStore();
            if (readAndClearStore.containsKey(accessTokenAppIdPair)) {
                readAndClearStore.get(accessTokenAppIdPair).addAll(sessionEventsState.getEventsToPersist());
            } else {
                readAndClearStore.addEvents(accessTokenAppIdPair, sessionEventsState.getEventsToPersist());
            }
            saveEventsToDisk(readAndClearStore);
        }
    }

    public static synchronized void persistEvents(AppEventCollection appEventCollection) {
        synchronized (AppEventStore.class) {
            AppEventUtility.assertIsNotMainThread();
            PersistedEvents readAndClearStore = readAndClearStore();
            for (AccessTokenAppIdPair accessTokenAppIdPair : appEventCollection.keySet()) {
                readAndClearStore.addEvents(accessTokenAppIdPair, appEventCollection.get(accessTokenAppIdPair).getEventsToPersist());
            }
            saveEventsToDisk(readAndClearStore);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002f A[Catch: all -> 0x003f, TRY_ENTER, TRY_LEAVE, TryCatch #10 {, blocks: (B:4:0x0004, B:7:0x0021, B:8:0x0024, B:10:0x002f, B:14:0x0037, B:36:0x007e, B:37:0x0081, B:38:0x008a, B:40:0x008c, B:30:0x0065, B:31:0x0068, B:34:0x0074, B:21:0x0044, B:22:0x0047, B:25:0x0053), top: B:49:0x0004, inners: #2, #6, #7, #9 }] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.Throwable, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized PersistedEvents readAndClearStore() {
        Context context;
        MovedClassObjectInputStream movedClassObjectInputStream;
        MovedClassObjectInputStream movedClassObjectInputStream2;
        PersistedEvents persistedEvents;
        MovedClassObjectInputStream movedClassObjectInputStream3;
        Closeable closeable = null;
        synchronized (AppEventStore.class) {
            try {
                AppEventUtility.assertIsNotMainThread();
                context = FacebookSdk.getApplicationContext();
            } catch (Throwable th) {
                th = th;
                closeable = movedClassObjectInputStream3;
            }
            try {
                movedClassObjectInputStream = new MovedClassObjectInputStream(new BufferedInputStream(context.openFileInput(PERSISTED_EVENTS_FILENAME)));
                try {
                    persistedEvents = (PersistedEvents) movedClassObjectInputStream.readObject();
                    Utility.closeQuietly(movedClassObjectInputStream);
                    try {
                        File fileStreamPath = context.getFileStreamPath(PERSISTED_EVENTS_FILENAME);
                        fileStreamPath.delete();
                        movedClassObjectInputStream3 = fileStreamPath;
                        context = context;
                    } catch (Exception e) {
                        ?? r4 = "Got unexpected exception when removing events file: ";
                        Log.w(TAG, r4, e);
                        movedClassObjectInputStream3 = e;
                        context = r4;
                    }
                } catch (FileNotFoundException e2) {
                    movedClassObjectInputStream2 = movedClassObjectInputStream;
                    Utility.closeQuietly(movedClassObjectInputStream2);
                    try {
                        context.getFileStreamPath(PERSISTED_EVENTS_FILENAME).delete();
                        persistedEvents = null;
                    } catch (Exception e3) {
                        Log.w(TAG, "Got unexpected exception when removing events file: ", e3);
                        persistedEvents = null;
                    }
                    if (persistedEvents == null) {
                    }
                    return persistedEvents;
                } catch (Exception e4) {
                    e = e4;
                    Log.w(TAG, "Got unexpected exception while reading events: ", e);
                    Utility.closeQuietly(movedClassObjectInputStream);
                    try {
                        context.getFileStreamPath(PERSISTED_EVENTS_FILENAME).delete();
                        persistedEvents = null;
                        movedClassObjectInputStream3 = movedClassObjectInputStream;
                        context = context;
                    } catch (Exception e5) {
                        ?? r1 = TAG;
                        ?? r42 = "Got unexpected exception when removing events file: ";
                        Log.w(r1, r42, e5);
                        persistedEvents = null;
                        movedClassObjectInputStream3 = r1;
                        context = r42;
                    }
                    if (persistedEvents == null) {
                    }
                    return persistedEvents;
                }
            } catch (FileNotFoundException e6) {
                movedClassObjectInputStream2 = null;
            } catch (Exception e7) {
                e = e7;
                movedClassObjectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                Utility.closeQuietly(closeable);
                try {
                    context.getFileStreamPath(PERSISTED_EVENTS_FILENAME).delete();
                } catch (Exception e8) {
                    Log.w(TAG, "Got unexpected exception when removing events file: ", e8);
                }
                throw th;
            }
            if (persistedEvents == null) {
                persistedEvents = new PersistedEvents();
            }
        }
        return persistedEvents;
    }

    private static void saveEventsToDisk(PersistedEvents persistedEvents) {
        ObjectOutputStream objectOutputStream;
        Context applicationContext = FacebookSdk.getApplicationContext();
        try {
            objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(applicationContext.openFileOutput(PERSISTED_EVENTS_FILENAME, 0)));
            try {
                try {
                    objectOutputStream.writeObject(persistedEvents);
                    Utility.closeQuietly(objectOutputStream);
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, "Got unexpected exception while persisting events: ", e);
                    try {
                        applicationContext.getFileStreamPath(PERSISTED_EVENTS_FILENAME).delete();
                    } catch (Exception e2) {
                    }
                    Utility.closeQuietly(objectOutputStream);
                }
            } catch (Throwable th) {
                th = th;
                Utility.closeQuietly(objectOutputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            objectOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream = null;
            Utility.closeQuietly(objectOutputStream);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class MovedClassObjectInputStream extends ObjectInputStream {
        private static final String ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1";
        private static final String APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1";

        public MovedClassObjectInputStream(InputStream inputStream) throws IOException {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        protected ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (readClassDescriptor.getName().equals(ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME)) {
                return ObjectStreamClass.lookup(AccessTokenAppIdPair.SerializationProxyV1.class);
            }
            if (readClassDescriptor.getName().equals(APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME)) {
                return ObjectStreamClass.lookup(AppEvent.SerializationProxyV1.class);
            }
            return readClassDescriptor;
        }
    }
}
