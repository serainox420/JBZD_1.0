.class public Lcom/google/android/gms/internal/zzbnw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbnw$zza;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzawC:Ljava/nio/charset/Charset;


# instance fields
.field private final zzcaE:Landroid/database/sqlite/SQLiteDatabase;

.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private zzcaG:Z

.field private zzcaH:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbnw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbnw;->$assertionsDisabled:Z

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbnw;->zzawC:Ljava/nio/charset/Charset;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbpa;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaH:J

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v1, "Persistence"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbnw;->zzQ(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzQ(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbnw$zza;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzbnw$zza;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnw$zza;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA locking_mode = EXCLUSIVE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v1, :cond_0

    const-string v1, "Failed to gain exclusive lock to Firebase Database\'s offline persistence. This generally means you are using Firebase Database from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing FirebaseDatabase in your Application class. If you are intentionally using Firebase Database from multiple processes, you can only enable offline persistence (i.e. call setPersistenceEnabled(true)) in one of them."

    new-instance v2, Lcom/google/firebase/database/DatabaseException;

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    throw v0
.end method

.method private zzV([B)Lcom/google/android/gms/internal/zzbsc;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzbnw;->zzawC:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsv;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzbnw;->zzawC:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not deserialize node: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzV(Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)[B"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    new-array v3, v1, [B

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private zzWS()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaG:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    add-int/lit8 v1, p3, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Extracting split nodes needs to start with path prefix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sub-int v3, v1, p3

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v2, ".part-"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Run did not finish with all parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sub-int v0, v1, p3

    return v0
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;)I
    .locals 6

    const-string v0, "path >= ? AND path < ?"

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbnw;->zziG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v3, p1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbph;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbnw;->zziG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzbnw;->zzb(Lcom/google/android/gms/internal/zzbph;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " OR (path > ? AND path < ?)"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    aput-object v1, v4, v0

    const-string v7, "path"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serverCache"

    move-object v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbph;I)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".part-%04d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbph;JLjava/lang/String;[B)V
    .locals 10

    const/high16 v8, 0x40000

    const/4 v7, 0x5

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "writes"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    array-length v1, p5

    if-lt v1, v8, :cond_0

    invoke-static {p5, v8}, Lcom/google/android/gms/internal/zzbnw;->zzd([BI)Ljava/util/List;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "path"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "part"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "node"

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "writes"

    invoke-virtual {v0, v4, v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "path"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "part"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "node"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "writes"

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :cond_1
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbqn;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/zzbqn;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbtb",
            "<",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ">;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbnw$1;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/internal/zzbnw$1;-><init>(Lcom/google/android/gms/internal/zzbnw;Lcom/google/android/gms/internal/zzbqq;)V

    invoke-virtual {p5, v0, v1}, Lcom/google/android/gms/internal/zzbqn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbqq$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Need to rewrite %d nodes below path %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbnw;->zzb(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbnw$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbnw$2;-><init>(Lcom/google/android/gms/internal/zzbnw;Lcom/google/android/gms/internal/zzbqq;Ljava/util/List;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {p5, v6, v0}, Lcom/google/android/gms/internal/zzbqn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbqq$zza;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {p5, v2}, Lcom/google/android/gms/internal/zzbqn;->zzd(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqn;

    move-result-object v5

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/zzbqq;->zze(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbqn;Ljava/util/List;)V

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Z)V
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez p3, :cond_2

    const-string v0, "serverCache"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzbnw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;)I

    move-result v3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)I

    move-result v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v6, "Persisted a total of %d rows and deleted %d rows for a set at %s in %dms"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    const-string v7, "serverCache"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/google/android/gms/internal/zzbnw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;)I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method private zzaf(Ljava/lang/Object;)[B
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsv;->zzav(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbnw;->zzawC:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not serialize leaf node"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 22

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v12, v4, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v4

    const/4 v3, 0x0

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v5, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_7

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, ".part-0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/internal/zzbph;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    const-string v20, ".part-0000"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v5}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const/16 v19, 0x2a

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v19, "Loading split node with "

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " parts."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    add-int v2, v5, v7

    invoke-interface {v9, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzbnw;->zzV(Ljava/util/List;)[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzbnw;->zzV([B)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    move v7, v5

    move-object v5, v6

    move-object v6, v2

    :goto_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbph;->zzYV()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbph;->zzYV()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    move-object v3, v4

    :goto_3
    add-int/lit8 v4, v7, 0x1

    move v5, v4

    move-object v4, v3

    move v3, v2

    goto/16 :goto_1

    :cond_2
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzbnw;->zzV([B)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v7

    new-instance v6, Lcom/google/android/gms/internal/zzbph;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v6

    move-object v6, v7

    move v7, v5

    move-object/from16 v5, v21

    goto :goto_2

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v3, :cond_4

    const/4 v2, 0x1

    :goto_4
    const-string v4, "Descendants of path must come after ancestors."

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    move/from16 v21, v3

    move-object v3, v2

    move/from16 v2, v21

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-interface {v4, v3, v6}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Loading an unrelated row with path %s for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbph;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v4, v3, v2}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    goto :goto_5

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v8, "Loaded a total of %d rows for a total of %d nodes at %s in %dms (Query: %dms, Loading: %dms, Serializing: %dms)"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v11

    const/4 v9, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbsz;->zzu(Lcom/google/android/gms/internal/zzbsc;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    const/4 v9, 0x2

    aput-object p1, v10, v9

    const/4 v9, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v9

    const/4 v6, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v6

    const/4 v6, 0x5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v6

    const/4 v6, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v6

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-object v4
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzbph;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/zzbnw;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->zzYU()Lcom/google/android/gms/internal/zzbph;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)I
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbsz;->zzt(Lcom/google/android/gms/internal/zzbsc;)J

    move-result-wide v2

    instance-of v4, p2, Lcom/google/android/gms/internal/zzbrr;

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x4000

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v5, "Node estimated serialized size at path %s of %d bytes exceeds limit of %d bytes. Splitting up."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaI()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzbnw;->zzd(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    add-int/lit8 v1, v1, 0x1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbnw;->zzd(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    add-int/lit8 v0, v1, 0x1

    :goto_1
    return v0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbnw;->zzd(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    move v0, v1

    goto :goto_1
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbph;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static zzd([BI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    add-int/lit8 v2, v0, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    array-length v4, p0

    mul-int v5, v0, p1

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v5, v4, [B

    mul-int v6, v0, p1

    invoke-static {p0, v6, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private zzd(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v3, 0x40000

    const/4 v6, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/zzbsc;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbnw;->zzaf(Ljava/lang/Object;)[B

    move-result-object v1

    array-length v2, v1

    if-lt v2, v3, :cond_1

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbnw;->zzd([BI)Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Saving huge leaf node with "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "path"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "value"

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "serverCache"

    invoke-virtual {v0, v4, v7, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "path"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "serverCache"

    invoke-virtual {v1, v2, v7, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :cond_2
    return-void
.end method

.method private static zziG(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/zzbnw;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Path keys must end with a \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzp(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    if-nez v1, :cond_0

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaG:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Starting transaction."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaG:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaH:J

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public endTransaction()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaG:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaH:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Transaction completed. Elapsed: %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public zzWO()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbpv;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v1

    const-string v0, "path"

    aput-object v0, v2, v4

    const-string v0, "type"

    aput-object v0, v2, v5

    const/4 v0, 0x3

    const-string v1, "part"

    aput-object v1, v2, v0

    const-string v0, "node"

    aput-object v0, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "writes"

    const-string v7, "id, part"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/zzbph;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_1
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/zzbnw;->zzawC:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbsv;->zzjf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "o"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/internal/zzbpv;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbpv;-><init>(JLcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Z)V

    :goto_2
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load writes"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v5, 0x4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v5, v12, v2

    if-eqz v5, :cond_1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbnw;->zzV(Ljava/util/List;)[B

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v5, "m"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboy;->zzaB(Ljava/util/Map;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbpv;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzbpv;-><init>(JLcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Got invalid write type: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Loaded %d writes in %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v10
.end method

.method public zzWP()J
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SELECT sum(length(%s) + length(%s)) FROM %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "value"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "path"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "serverCache"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide v2

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t read database result!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public zzWQ()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v9

    const-string v0, "path"

    aput-object v0, v2, v8

    const-string v0, "queryParams"

    aput-object v0, v2, v1

    const-string v0, "lastUse"

    aput-object v0, v2, v4

    const/4 v0, 0x4

    const-string v1, "complete"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "active"

    aput-object v1, v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedQueries"

    const-string v7, "id"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Lcom/google/android/gms/internal/zzbsv;->zzje(Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbrc;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v6, v8

    :goto_1
    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v7, v8

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/zzbqo;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzbqo;-><init>(JLcom/google/android/gms/internal/zzbrc;JZZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v6, v9

    goto :goto_1

    :cond_1
    move v7, v9

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Loaded %d tracked queries in %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-object v13
.end method

.method public zzWR()V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "writes"

    invoke-virtual {v2, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v4, "Deleted %d (all) write(s) in %dms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnw;->zzb(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method

.method public zza(JLjava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id = ?"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "trackedKeys"

    new-array v6, v9, [Ljava/lang/String;

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrq;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "key"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "trackedKeys"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Set %d tracked query keys for tracked query %d in %dms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public zza(JLjava/util/Set;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "id = ? AND key = ?"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrq;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "trackedKeys"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbrq;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "key"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "trackedKeys"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Updated tracked query keys (%d added, %d removed) for tracked query id %d in %dms"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)V
    .locals 9

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzboy;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v8, "serverCache"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-direct {p0, v8, v1}, Lcom/google/android/gms/internal/zzbnw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;)I

    move-result v1

    add-int/2addr v2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v6, "Persisted a total of %d rows and deleted %d rows for a merge at %s in %dms"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    const/4 v2, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;J)V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2, v9}, Lcom/google/android/gms/internal/zzboy;->zzbe(Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbnw;->zzaf(Ljava/lang/Object;)[B

    move-result-object v5

    const-string v4, "m"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;JLjava/lang/String;[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Persisted user merge in %dms"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqn;)V
    .locals 10

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqn;->zzZI()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rowid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "path"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/zzbqq;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/zzbqq;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    new-instance v1, Lcom/google/android/gms/internal/zzbph;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbph;->zzi(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x43

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "We are pruning at "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but we have data stored higher up at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ". Ignoring."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzbrn;->warn(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzbqn;->zzw(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzbqn;->zzx(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x58

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "We are pruning at "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and have data at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " that isn\'t marked for pruning or keeping. Ignoring."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzbrn;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbqq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbqn;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbqq;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzbnw;->zzp(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "rowid IN ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "serverCache"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbtb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbtb;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbtb;->zzabJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)I

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v5, "Pruned %d rows with %d nodes resaved in %dms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;J)V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {p2, v9}, Lcom/google/android/gms/internal/zzbsc;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbnw;->zzaf(Ljava/lang/Object;)[B

    move-result-object v5

    const-string v4, "o"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;JLjava/lang/String;[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Persisted user overwrite in %dms"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqo;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "id"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbqo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "path"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbnw;->zzc(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "queryParams"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbqo;->zzchm:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrb;->zzaao()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "lastUse"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbqo;->zzchn:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "complete"

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zzbqo;->zzcho:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "active"

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zzbqo;->zzbqY:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "trackedQueries"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Saved new tracked query in %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public zzaD(J)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "writes"

    const-string v4, "id = ?"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v4, "Deleted %d write(s) with writeId %d in %dms"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public zzaE(J)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id = ?"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedQueries"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "id = ?"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedKeys"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public zzaF(J)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v3, "active = 1"

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "active"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "lastUse"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedQueries"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Reset active tracked queries in %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public zzaG(J)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbnw;->zzg(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbnw;->zzWS()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Z)V

    return-void
.end method

.method public zzg(Ljava/util/Set;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbrq;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-array v3, v1, [Ljava/lang/String;

    const-string v0, "key"

    aput-object v0, v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v0, "id IN ("

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnw;->zzp(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaE:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "trackedKeys"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbnw;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v5, "Loaded %d tracked queries keys for tracked queries %s in %dms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method
