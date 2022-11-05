.class public Lcom/facebook/cache/disk/DiskStorageCache;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Lcom/facebook/cache/disk/FileCache;
.implements Lcom/facebook/common/disk/DiskTrimmable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DiskStorageCache$Params;,
        Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final FILECACHE_SIZE_UPDATE_PERIOD_MS:J

.field private static final FUTURE_TIMESTAMP_THRESHOLD_MS:J

.field private static final SHARED_PREFS_FILENAME_PREFIX:Ljava/lang/String; = "disk_entries_list"

.field public static final START_OF_VERSIONING:I = 0x1

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TRIMMING_LOWER_BOUND:D = 0.02

.field private static final UNINITIALIZED:J = -0x1L


# instance fields
.field private final mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

.field private mCacheSizeLastUpdateTime:J

.field private mCacheSizeLimit:J

.field private final mCacheSizeLimitMinimum:J

.field private final mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

.field private final mClock:Lcom/facebook/common/time/Clock;

.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mDefaultCacheSizeLimit:J

.field private final mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

.field private final mIndexPopulateAtStartupEnabled:Z

.field private mIndexReady:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLowDiskSpaceCacheSizeLimit:J

.field final mResourceIndex:Ljava/util/Set;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStatFsHelper:Lcom/facebook/common/statfs/StatFsHelper;

.field private final mStorage:Lcom/facebook/cache/disk/DiskStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    const-class v0, Lcom/facebook/cache/disk/DiskStorageCache;

    sput-object v0, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/DiskStorageCache;->FUTURE_TIMESTAMP_THRESHOLD_MS:J

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/DiskStorageCache;->FILECACHE_SIZE_UPDATE_PERIOD_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/DiskStorage;Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;Lcom/facebook/cache/disk/DiskStorageCache$Params;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lcom/facebook/common/disk/DiskTrimmableRegistry;Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V
    .locals 2
    .param p6    # Lcom/facebook/common/disk/DiskTrimmableRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    .line 163
    iget-wide v0, p3, Lcom/facebook/cache/disk/DiskStorageCache$Params;->mLowDiskSpaceCacheSizeLimit:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLowDiskSpaceCacheSizeLimit:J

    .line 164
    iget-wide v0, p3, Lcom/facebook/cache/disk/DiskStorageCache$Params;->mDefaultCacheSizeLimit:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mDefaultCacheSizeLimit:J

    .line 165
    iget-wide v0, p3, Lcom/facebook/cache/disk/DiskStorageCache$Params;->mDefaultCacheSizeLimit:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    .line 166
    invoke-static {}, Lcom/facebook/common/statfs/StatFsHelper;->getInstance()Lcom/facebook/common/statfs/StatFsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStatFsHelper:Lcom/facebook/common/statfs/StatFsHelper;

    .line 168
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    .line 170
    iput-object p2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLastUpdateTime:J

    .line 174
    iput-object p4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    .line 176
    iget-wide v0, p3, Lcom/facebook/cache/disk/DiskStorageCache$Params;->mCacheSizeLimitMinimum:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimitMinimum:J

    .line 178
    iput-object p5, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 180
    new-instance v0, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-direct {v0}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    .line 182
    if-eqz p6, :cond_0

    .line 183
    invoke-interface {p6, p0}, Lcom/facebook/common/disk/DiskTrimmableRegistry;->registerDiskTrimmable(Lcom/facebook/common/disk/DiskTrimmable;)V

    .line 185
    :cond_0
    invoke-static {}, Lcom/facebook/common/time/SystemClock;->get()Lcom/facebook/common/time/SystemClock;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mClock:Lcom/facebook/common/time/Clock;

    .line 187
    iput-boolean p9, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mIndexPopulateAtStartupEnabled:Z

    .line 189
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    .line 191
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mIndexPopulateAtStartupEnabled:Z

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 194
    new-instance v0, Lcom/facebook/cache/disk/DiskStorageCache$1;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/DiskStorageCache$1;-><init>(Lcom/facebook/cache/disk/DiskStorageCache;)V

    invoke-interface {p8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/cache/disk/DiskStorageCache;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/cache/disk/DiskStorageCache;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/facebook/cache/disk/DiskStorageCache;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mIndexReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/cache/disk/DiskStorageCache;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private endInsert(Lcom/facebook/cache/disk/DiskStorage$Inserter;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;)Lcom/facebook/binaryresource/BinaryResource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    invoke-interface {p1, p2}, Lcom/facebook/cache/disk/DiskStorage$Inserter;->commit(Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object v0

    .line 348
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-interface {v0}, Lcom/facebook/binaryresource/BinaryResource;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->increment(JJ)V

    .line 350
    monitor-exit v1

    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private evictAboveSize(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 502
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage;->getEntries()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/facebook/cache/disk/DiskStorageCache;->getSortedEntries(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v6

    .line 513
    sub-long v8, v6, p1

    .line 514
    const/4 v4, 0x0

    .line 515
    const-wide/16 v2, 0x0

    .line 516
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/cache/disk/DiskStorage$Entry;

    .line 517
    cmp-long v11, v4, v8

    if-lez v11, :cond_1

    .line 535
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    neg-long v4, v4

    neg-int v3, v3

    int-to-long v6, v3

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->increment(JJ)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage;->purgeUnexpectedResources()V

    .line 537
    return-void

    .line 503
    :catch_0
    move-exception v2

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v4, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v5, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "evictAboveSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 507
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 504
    invoke-interface {v3, v4, v5, v6, v2}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    throw v2

    .line 520
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v11, v2}, Lcom/facebook/cache/disk/DiskStorage;->remove(Lcom/facebook/cache/disk/DiskStorage$Entry;)J

    move-result-wide v12

    .line 521
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 522
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    .line 523
    add-int/lit8 v3, v3, 0x1

    .line 524
    add-long/2addr v4, v12

    .line 525
    invoke-static {}, Lcom/facebook/cache/disk/SettableCacheEvent;->obtain()Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v11

    .line 526
    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/facebook/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v2

    .line 527
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->setEvictionReason(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v2

    .line 528
    invoke-virtual {v2, v12, v13}, Lcom/facebook/cache/disk/SettableCacheEvent;->setItemSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v2

    sub-long v12, v6, v4

    .line 529
    invoke-virtual {v2, v12, v13}, Lcom/facebook/cache/disk/SettableCacheEvent;->setCacheSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v2

    .line 530
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/cache/disk/SettableCacheEvent;->setCacheLimit(J)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v2

    .line 531
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v11, v2}, Lcom/facebook/cache/common/CacheEventListener;->onEviction(Lcom/facebook/cache/common/CacheEvent;)V

    .line 532
    invoke-virtual {v2}, Lcom/facebook/cache/disk/SettableCacheEvent;->recycle()V

    :cond_2
    move-wide/from16 v16, v4

    move v4, v3

    move-wide/from16 v2, v16

    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    .line 534
    goto/16 :goto_0
.end method

.method private getSortedEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mClock:Lcom/facebook/common/time/Clock;

    invoke-interface {v0}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/cache/disk/DiskStorageCache;->FUTURE_TIMESTAMP_THRESHOLD_MS:J

    add-long/2addr v2, v0

    .line 549
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 550
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 551
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cache/disk/DiskStorage$Entry;

    .line 552
    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_0

    .line 553
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    invoke-interface {v0}, Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;->get()Lcom/facebook/cache/disk/EntryEvictionComparator;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 559
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 560
    return-object v1
.end method

.method private maybeEvictFilesInCacheDir()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    move-result v0

    .line 477
    invoke-direct {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->updateFileCacheSizeLimit()V

    .line 479
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v2

    .line 482
    iget-wide v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->reset()V

    .line 484
    invoke-direct {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    .line 488
    :cond_0
    iget-wide v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 489
    iget-wide v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    const-wide/16 v4, 0x9

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    sget-object v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CACHE_FULL:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/cache/disk/DiskStorageCache;->evictAboveSize(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V

    .line 493
    :cond_1
    monitor-exit v1

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private maybeUpdateFileCacheSize()Z
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mClock:Lcom/facebook/common/time/Clock;

    invoke-interface {v0}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v0

    .line 698
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLastUpdateTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLastUpdateTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/cache/disk/DiskStorageCache;->FILECACHE_SIZE_UPDATE_PERIOD_MS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 701
    :cond_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSizeAndIndex()Z

    move-result v0

    .line 703
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeUpdateFileCacheSizeAndIndex()Z
    .locals 24
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 708
    const-wide/16 v8, 0x0

    .line 709
    const/4 v2, 0x0

    .line 710
    const/4 v7, 0x0

    .line 711
    const/4 v6, 0x0

    .line 712
    const/4 v3, 0x0

    .line 713
    const-wide/16 v4, -0x1

    .line 714
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mClock:Lcom/facebook/common/time/Clock;

    invoke-interface {v10}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v14

    .line 715
    sget-wide v10, Lcom/facebook/cache/disk/DiskStorageCache;->FUTURE_TIMESTAMP_THRESHOLD_MS:J

    add-long v16, v14, v10

    .line 717
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mIndexPopulateAtStartupEnabled:Z

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 718
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    move-object v12, v10

    .line 725
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v10}, Lcom/facebook/cache/disk/DiskStorage;->getEntries()Ljava/util/Collection;

    move-result-object v10

    .line 726
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-wide v10, v8

    move v8, v2

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/cache/disk/DiskStorage$Entry;

    .line 727
    add-int/lit8 v9, v8, 0x1

    .line 728
    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getSize()J

    move-result-wide v18

    add-long v10, v10, v18

    .line 731
    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v18

    cmp-long v8, v18, v16

    if-lez v8, :cond_2

    .line 732
    const/4 v8, 0x1

    .line 733
    add-int/lit8 v7, v6, 0x1

    .line 734
    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getSize()J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 735
    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v2, v14

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move v4, v6

    move v5, v7

    move v6, v8

    :goto_2
    move v7, v6

    move v8, v9

    move v6, v5

    move-wide/from16 v22, v2

    move v3, v4

    move-wide/from16 v4, v22

    .line 739
    goto :goto_1

    .line 719
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mIndexPopulateAtStartupEnabled:Z

    if-eqz v10, :cond_1

    .line 720
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v12, v10

    goto :goto_0

    .line 722
    :cond_1
    const/4 v10, 0x0

    move-object v12, v10

    goto :goto_0

    .line 736
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mIndexPopulateAtStartupEnabled:Z

    if-eqz v8, :cond_3

    .line 737
    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    move-wide/from16 v22, v4

    move v4, v3

    move v5, v6

    move-wide/from16 v2, v22

    move v6, v7

    goto :goto_2

    .line 740
    :cond_4
    if-eqz v7, :cond_5

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v7, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->READ_INVALID_ENTRY:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v9, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Future timestamp found in "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " files , with a total size of "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bytes, and a maximum time delta of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v7, v9, v3, v4}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getCount()J

    move-result-wide v2

    int-to-long v4, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8

    .line 750
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mIndexPopulateAtStartupEnabled:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    if-eq v2, v12, :cond_7

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v2, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 754
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    int-to-long v4, v8

    invoke-virtual {v2, v10, v11, v4, v5}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->set(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 764
    :cond_8
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLastUpdateTime:J

    .line 765
    const/4 v2, 0x1

    :goto_3
    return v2

    .line 756
    :catch_0
    move-exception v2

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v4, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v5, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calcFileCacheSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 760
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 757
    invoke-interface {v3, v4, v5, v6, v2}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private startInsert(Ljava/lang/String;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/DiskStorage$Inserter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->maybeEvictFilesInCacheDir()V

    .line 335
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/DiskStorage;->insert(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/DiskStorage$Inserter;

    move-result-object v0

    return-object v0
.end method

.method private trimBy(D)V
    .locals 7

    .prologue
    .line 670
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->reset()V

    .line 674
    invoke-direct {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    .line 675
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v2

    .line 676
    long-to-double v4, v2

    mul-double/2addr v4, p1

    double-to-long v4, v4

    sub-long/2addr v2, v4

    .line 677
    sget-object v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CACHE_MANAGER_TRIMMED:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/cache/disk/DiskStorageCache;->evictAboveSize(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 688
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trimBy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 684
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 681
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateFileCacheSizeLimit()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    .line 572
    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->EXTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    .line 575
    :goto_0
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStatFsHelper:Lcom/facebook/common/statfs/StatFsHelper;

    iget-wide v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mDefaultCacheSizeLimit:J

    iget-object v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    .line 578
    invoke-virtual {v4}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 576
    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/common/statfs/StatFsHelper;->testLowDiskSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;J)Z

    move-result v0

    .line 579
    if-eqz v0, :cond_1

    .line 580
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLowDiskSpaceCacheSizeLimit:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    .line 584
    :goto_1
    return-void

    .line 572
    :cond_0
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    goto :goto_0

    .line 582
    :cond_1
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mDefaultCacheSizeLimit:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    goto :goto_1
.end method


# virtual methods
.method protected awaitIndex()V
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    sget-object v0, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    const-string v1, "Memory Index is not ready yet. "

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearAll()V
    .locals 7

    .prologue
    .line 595
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->clearAll()V

    .line 598
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 599
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v0}, Lcom/facebook/cache/common/CacheEventListener;->onCleared()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->reset()V

    .line 608
    monitor-exit v1

    .line 609
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearAll: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 604
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 601
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearOldEntries(J)J
    .locals 21

    .prologue
    .line 421
    const-wide/16 v6, 0x0

    .line 422
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 424
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mClock:Lcom/facebook/common/time/Clock;

    invoke-interface {v2}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v10

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage;->getEntries()Ljava/util/Collection;

    move-result-object v2

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v3}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v12

    .line 427
    const/4 v3, 0x0

    .line 428
    const-wide/16 v4, 0x0

    .line 429
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/cache/disk/DiskStorage$Entry;

    .line 431
    const-wide/16 v14, 0x1

    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v16

    sub-long v16, v10, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 432
    cmp-long v16, v14, p1

    if-ltz v16, :cond_1

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v14, v2}, Lcom/facebook/cache/disk/DiskStorage;->remove(Lcom/facebook/cache/disk/DiskStorage$Entry;)J

    move-result-wide v14

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 435
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-lez v16, :cond_0

    .line 436
    add-int/lit8 v3, v3, 0x1

    .line 437
    add-long/2addr v4, v14

    .line 438
    invoke-static {}, Lcom/facebook/cache/disk/SettableCacheEvent;->obtain()Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v16

    .line 439
    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/facebook/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v2

    sget-object v16, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CONTENT_STALE:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 440
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->setEvictionReason(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v2

    .line 441
    invoke-virtual {v2, v14, v15}, Lcom/facebook/cache/disk/SettableCacheEvent;->setItemSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v2

    sub-long v14, v12, v4

    .line 442
    invoke-virtual {v2, v14, v15}, Lcom/facebook/cache/disk/SettableCacheEvent;->setCacheSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v2

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v14, v2}, Lcom/facebook/cache/common/CacheEventListener;->onEviction(Lcom/facebook/cache/common/CacheEvent;)V

    .line 444
    invoke-virtual {v2}, Lcom/facebook/cache/disk/SettableCacheEvent;->recycle()V

    :cond_0
    move-wide/from16 v18, v4

    move v4, v3

    move-wide/from16 v2, v18

    :goto_1
    move-wide/from16 v18, v2

    move v3, v4

    move-wide/from16 v4, v18

    .line 449
    goto :goto_0

    .line 447
    :cond_1
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide/from16 v18, v4

    move v4, v3

    move-wide/from16 v2, v18

    goto :goto_1

    .line 450
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage;->purgeUnexpectedResources()V

    .line 451
    if-lez v3, :cond_3

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/facebook/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    neg-long v4, v4

    neg-int v3, v3

    int-to-long v10, v3

    invoke-virtual {v2, v4, v5, v10, v11}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->increment(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_3
    :goto_2
    :try_start_1
    monitor-exit v8

    .line 463
    return-wide v6

    .line 455
    :catch_0
    move-exception v2

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v4, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v5, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearOldEntries: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 459
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 456
    invoke-interface {v3, v4, v5, v9, v2}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 462
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDumpInfo()Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->getDumpInfo()Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/binaryresource/BinaryResource;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 253
    .line 254
    invoke-static {}, Lcom/facebook/cache/disk/SettableCacheEvent;->obtain()Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/SettableCacheEvent;->setCacheKey(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v4

    .line 257
    :try_start_0
    iget-object v5, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->getResourceIds(Lcom/facebook/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v6

    .line 260
    const/4 v0, 0x0

    move v3, v0

    move-object v2, v1

    move-object v0, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 261
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    invoke-virtual {v4, v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 263
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v2, v0, p1}, Lcom/facebook/cache/disk/DiskStorage;->getResource(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 268
    :cond_0
    if-nez v0, :cond_2

    .line 269
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v3, v4}, Lcom/facebook/cache/common/CacheEventListener;->onMiss(Lcom/facebook/cache/common/CacheEvent;)V

    .line 270
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 275
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    invoke-virtual {v4}, Lcom/facebook/cache/disk/SettableCacheEvent;->recycle()V

    .line 285
    :goto_2
    return-object v0

    .line 260
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_0

    .line 272
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v3, v4}, Lcom/facebook/cache/common/CacheEventListener;->onHit(Lcom/facebook/cache/common/CacheEvent;)V

    .line 273
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :try_start_4
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v5, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    const-string v6, "getResource"

    invoke-interface {v2, v3, v5, v6, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    invoke-virtual {v4, v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->setException(Ljava/io/IOException;)Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 284
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v0, v4}, Lcom/facebook/cache/common/CacheEventListener;->onReadException(Lcom/facebook/cache/common/CacheEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 287
    invoke-virtual {v4}, Lcom/facebook/cache/disk/SettableCacheEvent;->recycle()V

    move-object v0, v1

    .line 285
    goto :goto_2

    .line 287
    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Lcom/facebook/cache/disk/SettableCacheEvent;->recycle()V

    throw v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasKey(Lcom/facebook/cache/common/CacheKey;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 628
    iget-object v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 629
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DiskStorageCache;->hasKeySync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 644
    :goto_0
    return v0

    .line 634
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->getResourceIds(Lcom/facebook/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v5

    move v3, v2

    .line 635
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 636
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 637
    iget-object v6, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v6, v0, p1}, Lcom/facebook/cache/disk/DiskStorage;->contains(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 638
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :try_start_2
    monitor-exit v4

    move v0, v1

    goto :goto_0

    .line 635
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 642
    :cond_2
    monitor-exit v4

    move v0, v2

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    monitor-exit v4

    move v0, v2

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public hasKeySync(Lcom/facebook/cache/common/CacheKey;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 613
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 615
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->getResourceIds(Lcom/facebook/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v4

    move v2, v1

    .line 616
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 617
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 618
    iget-object v5, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x1

    monitor-exit v3

    .line 622
    :goto_1
    return v0

    .line 616
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 622
    :cond_1
    monitor-exit v3

    move v0, v1

    goto :goto_1

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insert(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/cache/common/WriterCallback;)Lcom/facebook/binaryresource/BinaryResource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {}, Lcom/facebook/cache/disk/SettableCacheEvent;->obtain()Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/SettableCacheEvent;->setCacheKey(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v1

    .line 360
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v0, v1}, Lcom/facebook/cache/common/CacheEventListener;->onWriteAttempt(Lcom/facebook/cache/common/CacheEvent;)V

    .line 362
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->getFirstResourceId(Lcom/facebook/cache/common/CacheKey;)Ljava/lang/String;

    move-result-object v0

    .line 365
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-virtual {v1, v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 369
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/facebook/cache/disk/DiskStorageCache;->startInsert(Ljava/lang/String;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/DiskStorage$Inserter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 371
    :try_start_2
    invoke-interface {v2, p2, p1}, Lcom/facebook/cache/disk/DiskStorage$Inserter;->writeData(Lcom/facebook/cache/common/WriterCallback;Ljava/lang/Object;)V

    .line 373
    invoke-direct {p0, v2, p1, v0}, Lcom/facebook/cache/disk/DiskStorageCache;->endInsert(Lcom/facebook/cache/disk/DiskStorage$Inserter;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Lcom/facebook/binaryresource/BinaryResource;->size()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/facebook/cache/disk/SettableCacheEvent;->setItemSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    .line 375
    invoke-virtual {v4}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/cache/disk/SettableCacheEvent;->setCacheSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 376
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v3, v1}, Lcom/facebook/cache/common/CacheEventListener;->onWriteSuccess(Lcom/facebook/cache/common/CacheEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    :try_start_3
    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Inserter;->cleanUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    sget-object v2, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    const-string v3, "Failed to delete temp file"

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 389
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/cache/disk/SettableCacheEvent;->recycle()V

    .line 377
    return-object v0

    .line 365
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 379
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v2}, Lcom/facebook/cache/disk/DiskStorage$Inserter;->cleanUp()Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    sget-object v2, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    const-string v3, "Failed to delete temp file"

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 383
    :catch_0
    move-exception v0

    .line 384
    :try_start_6
    invoke-virtual {v1, v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->setException(Ljava/io/IOException;)Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 385
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v2, v1}, Lcom/facebook/cache/common/CacheEventListener;->onWriteException(Lcom/facebook/cache/common/CacheEvent;)V

    .line 386
    sget-object v2, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    const-string v3, "Failed inserting a file into the cache"

    invoke-static {v2, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 389
    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/cache/disk/SettableCacheEvent;->recycle()V

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isIndexReady()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mIndexReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mIndexPopulateAtStartupEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public probe(Lcom/facebook/cache/common/CacheKey;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 303
    const/4 v1, 0x0

    .line 305
    :try_start_0
    iget-object v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->getResourceIds(Lcom/facebook/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v5

    move v3, v2

    .line 307
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 308
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :try_start_2
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v1, v0, p1}, Lcom/facebook/cache/disk/DiskStorage;->touch(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    const/4 v1, 0x1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    .line 323
    :goto_1
    return v0

    .line 307
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 314
    :cond_1
    :try_start_3
    monitor-exit v4

    move v0, v2

    goto :goto_1

    .line 315
    :catchall_0
    move-exception v0

    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-static {}, Lcom/facebook/cache/disk/SettableCacheEvent;->obtain()Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v3

    .line 318
    invoke-virtual {v3, p1}, Lcom/facebook/cache/disk/SettableCacheEvent;->setCacheKey(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v3

    .line 319
    invoke-virtual {v3, v1}, Lcom/facebook/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v1

    .line 320
    invoke-virtual {v1, v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->setException(Ljava/io/IOException;)Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v1, v0}, Lcom/facebook/cache/common/CacheEventListener;->onReadException(Lcom/facebook/cache/common/CacheEvent;)V

    .line 322
    invoke-virtual {v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->recycle()V

    move v0, v2

    .line 323
    goto :goto_1

    .line 315
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public remove(Lcom/facebook/cache/common/CacheKey;)V
    .locals 7

    .prologue
    .line 395
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 398
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->getResourceIds(Lcom/facebook/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v3

    .line 399
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 400
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    iget-object v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mStorage:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v4, v0}, Lcom/facebook/cache/disk/DiskStorage;->remove(Ljava/lang/String;)J

    .line 402
    iget-object v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    :try_start_1
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->DELETE_FILE:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lcom/facebook/cache/disk/DiskStorageCache;->TAG:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 408
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-interface {v1, v3, v4, v5, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    :cond_0
    monitor-exit v2

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public trimToMinimum()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 651
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    .line 653
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheStats:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v2

    .line 654
    iget-wide v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimitMinimum:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    iget-wide v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimitMinimum:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 655
    :cond_0
    monitor-exit v1

    .line 662
    :goto_0
    return-void

    .line 657
    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lcom/facebook/cache/disk/DiskStorageCache;->mCacheSizeLimitMinimum:J

    long-to-double v6, v6

    long-to-double v2, v2

    div-double v2, v6, v2

    sub-double v2, v4, v2

    .line 658
    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    .line 659
    invoke-direct {p0, v2, v3}, Lcom/facebook/cache/disk/DiskStorageCache;->trimBy(D)V

    .line 661
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trimToNothing()V
    .locals 0

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->clearAll()V

    .line 667
    return-void
.end method
