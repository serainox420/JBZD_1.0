package com.facebook.imagepipeline.cache;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.provider.BaseColumns;
import android.text.TextUtils;
import bolts.i;
import com.facebook.cache.common.CacheKey;
import com.facebook.cache.common.CacheKeyUtil;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.logging.FLog;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.MediaVariations;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes.dex */
public class MediaVariationsIndexDatabase implements MediaVariationsIndex {
    private static final String SQL_DELETE_ENTRIES = "DROP TABLE IF EXISTS media_variations_index";
    @GuardedBy("MediaVariationsIndexDatabase.class")
    private final LazyIndexDbOpenHelper mDbHelper;
    private final Executor mReadExecutor;
    private final Executor mWriteExecutor;
    private static final String TAG = MediaVariationsIndexDatabase.class.getSimpleName();
    private static final String[] PROJECTION = {IndexEntry.COLUMN_NAME_CACHE_CHOICE, IndexEntry.COLUMN_NAME_CACHE_KEY, "width", "height"};

    public MediaVariationsIndexDatabase(Context context, Executor executor, Executor executor2) {
        this.mDbHelper = new LazyIndexDbOpenHelper(context);
        this.mReadExecutor = executor;
        this.mWriteExecutor = executor2;
    }

    @Override // com.facebook.imagepipeline.cache.MediaVariationsIndex
    public i<MediaVariations> getCachedVariants(final String str, final MediaVariations.Builder builder) {
        try {
            return i.a(new Callable<MediaVariations>() { // from class: com.facebook.imagepipeline.cache.MediaVariationsIndexDatabase.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                /* renamed from: call */
                public MediaVariations mo82call() throws Exception {
                    return MediaVariationsIndexDatabase.this.getCachedVariantsSync(str, builder);
                }
            }, this.mReadExecutor);
        } catch (Exception e) {
            FLog.w(TAG, e, "Failed to schedule query task for %s", str);
            return i.a(e);
        }
    }

    @VisibleForTesting
    protected MediaVariations getCachedVariantsSync(String str, MediaVariations.Builder builder) {
        MediaVariations build;
        Cursor cursor = null;
        synchronized (MediaVariationsIndexDatabase.class) {
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                Cursor query = this.mDbHelper.getWritableDatabase().query(IndexEntry.TABLE_NAME, PROJECTION, "media_id = ?", new String[]{str}, null, null, null);
                try {
                    if (query.getCount() == 0) {
                        build = builder.build();
                        if (query != null) {
                            query.close();
                        }
                    } else {
                        int columnIndexOrThrow = query.getColumnIndexOrThrow(IndexEntry.COLUMN_NAME_CACHE_KEY);
                        int columnIndexOrThrow2 = query.getColumnIndexOrThrow("width");
                        int columnIndexOrThrow3 = query.getColumnIndexOrThrow("height");
                        int columnIndexOrThrow4 = query.getColumnIndexOrThrow(IndexEntry.COLUMN_NAME_CACHE_CHOICE);
                        while (query.moveToNext()) {
                            String string = query.getString(columnIndexOrThrow4);
                            builder.addVariant(Uri.parse(query.getString(columnIndexOrThrow)), query.getInt(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3), TextUtils.isEmpty(string) ? null : ImageRequest.CacheChoice.valueOf(string));
                        }
                        build = builder.build();
                        if (query != null) {
                            query.close();
                        }
                    }
                } catch (SQLException e) {
                    e = e;
                    FLog.e(TAG, e, "Error reading for %s", str);
                    throw e;
                }
            } catch (SQLException e2) {
                e = e2;
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }
        return build;
    }

    @Override // com.facebook.imagepipeline.cache.MediaVariationsIndex
    public void saveCachedVariant(final String str, final ImageRequest.CacheChoice cacheChoice, final CacheKey cacheKey, final EncodedImage encodedImage) {
        this.mWriteExecutor.execute(new Runnable() { // from class: com.facebook.imagepipeline.cache.MediaVariationsIndexDatabase.2
            @Override // java.lang.Runnable
            public void run() {
                MediaVariationsIndexDatabase.this.saveCachedVariantSync(str, cacheChoice, cacheKey, encodedImage);
            }
        });
    }

    protected void saveCachedVariantSync(String str, ImageRequest.CacheChoice cacheChoice, CacheKey cacheKey, EncodedImage encodedImage) {
        synchronized (MediaVariationsIndexDatabase.class) {
            SQLiteDatabase writableDatabase = this.mDbHelper.getWritableDatabase();
            try {
                writableDatabase.beginTransaction();
                ContentValues contentValues = new ContentValues();
                contentValues.put(IndexEntry.COLUMN_NAME_MEDIA_ID, str);
                contentValues.put("width", Integer.valueOf(encodedImage.getWidth()));
                contentValues.put("height", Integer.valueOf(encodedImage.getHeight()));
                contentValues.put(IndexEntry.COLUMN_NAME_CACHE_CHOICE, cacheChoice.name());
                contentValues.put(IndexEntry.COLUMN_NAME_CACHE_KEY, cacheKey.getUriString());
                contentValues.put(IndexEntry.COLUMN_NAME_RESOURCE_ID, CacheKeyUtil.getFirstResourceId(cacheKey));
                writableDatabase.replaceOrThrow(IndexEntry.TABLE_NAME, null, contentValues);
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            } catch (Exception e) {
                FLog.e(TAG, e, "Error writing for %s", str);
                writableDatabase.endTransaction();
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class IndexEntry implements BaseColumns {
        public static final String COLUMN_NAME_CACHE_CHOICE = "cache_choice";
        public static final String COLUMN_NAME_CACHE_KEY = "cache_key";
        public static final String COLUMN_NAME_HEIGHT = "height";
        public static final String COLUMN_NAME_MEDIA_ID = "media_id";
        public static final String COLUMN_NAME_RESOURCE_ID = "resource_id";
        public static final String COLUMN_NAME_WIDTH = "width";
        public static final String TABLE_NAME = "media_variations_index";

        private IndexEntry() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LazyIndexDbOpenHelper {
        private final Context mContext;
        @Nullable
        private IndexDbOpenHelper mIndexDbOpenHelper;

        private LazyIndexDbOpenHelper(Context context) {
            this.mContext = context;
        }

        public synchronized SQLiteDatabase getWritableDatabase() {
            if (this.mIndexDbOpenHelper == null) {
                this.mIndexDbOpenHelper = new IndexDbOpenHelper(this.mContext);
            }
            return this.mIndexDbOpenHelper.getWritableDatabase();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class IndexDbOpenHelper extends SQLiteOpenHelper {
        public static final String DATABASE_NAME = "FrescoMediaVariationsIndex.db";
        public static final int DATABASE_VERSION = 2;
        private static final String INTEGER_TYPE = " INTEGER";
        private static final String SQL_CREATE_ENTRIES = "CREATE TABLE media_variations_index (_id INTEGER PRIMARY KEY,media_id TEXT,width INTEGER,height INTEGER,cache_choice TEXT,cache_key TEXT,resource_id TEXT UNIQUE )";
        private static final String SQL_CREATE_INDEX = "CREATE INDEX index_media_id ON media_variations_index (media_id)";
        private static final String TEXT_TYPE = " TEXT";

        public IndexDbOpenHelper(Context context) {
            super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.beginTransaction();
            try {
                sQLiteDatabase.execSQL(SQL_CREATE_ENTRIES);
                sQLiteDatabase.execSQL(SQL_CREATE_INDEX);
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.beginTransaction();
            try {
                sQLiteDatabase.execSQL(MediaVariationsIndexDatabase.SQL_DELETE_ENTRIES);
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
                onCreate(sQLiteDatabase);
            } catch (Throwable th) {
                sQLiteDatabase.endTransaction();
                throw th;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            onUpgrade(sQLiteDatabase, i, i2);
        }
    }
}
