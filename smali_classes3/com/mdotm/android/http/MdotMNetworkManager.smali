.class public Lcom/mdotm/android/http/MdotMNetworkManager;
.super Ljava/lang/Object;
.source "MdotMNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/http/MdotMNetworkManager$Requests;
    }
.end annotation


# static fields
.field public static MdotM_Banner_Temp:Ljava/lang/String;

.field public static MdotM_CACHE_FOLDER:Ljava/lang/String;

.field public static MdotM_Interstitial_Temp:Ljava/lang/String;

.field public static MdotM_Native:Ljava/lang/String;

.field public static MdotM_PermanentCaching:Ljava/lang/String;

.field private static cacheLocation:I

.field private static enableCaching:Z

.field public static gifImageResource:I

.field public static htmlResource:I

.field public static imageResource:I

.field private static isSDCardExist:Z

.field private static mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

.field public static videoResource:I


# instance fields
.field private final CORE_POOL_SIZE:I

.field private final HTTP_RESPONSE_OK:I

.field private final HTTP_RESPONSE_OK1:I

.field private final KEEP_ALIVE_TIME_IN_SEC:I

.field private final MAX_POOL_SIZE:I

.field private adCacheSizeInternal:I

.field private adCacheSizeSDCard:I

.field private adParams:Lcom/mdotm/android/model/MdotMAdRequest;

.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private isCompanion:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private minMemorySize:J

.field networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

.field private requestUrl2:Ljava/lang/StringBuffer;

.field private temporaryCacheSize:I

.field urlConnection:Ljava/net/HttpURLConnection;

.field private worksQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const-string v0, "MdotMTempCache"

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    .line 59
    const-string v0, "PermanentCache"

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    .line 60
    const-string v0, "BannerTemp"

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Banner_Temp:Ljava/lang/String;

    .line 61
    const-string v0, "InterstitialTemp"

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    .line 62
    const-string v0, "Native"

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Native:Ljava/lang/String;

    .line 63
    sput-boolean v1, Lcom/mdotm/android/http/MdotMNetworkManager;->enableCaching:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    .line 97
    sput-boolean v1, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    .line 100
    const/4 v0, 0x1

    sput v0, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    .line 101
    const/4 v0, 0x2

    sput v0, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    .line 102
    const/4 v0, 0x3

    sput v0, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    .line 103
    const/4 v0, 0x4

    sput v0, Lcom/mdotm/android/http/MdotMNetworkManager;->gifImageResource:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v0, 0xa

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->temporaryCacheSize:I

    .line 70
    const-wide/32 v0, 0x13f1407

    iput-wide v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->minMemorySize:J

    .line 74
    const v0, 0x7ed147

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adCacheSizeSDCard:I

    .line 79
    const v0, 0x4f83e7

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adCacheSizeInternal:I

    .line 105
    iput v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->CORE_POOL_SIZE:I

    .line 106
    iput v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->MAX_POOL_SIZE:I

    .line 107
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->KEEP_ALIVE_TIME_IN_SEC:I

    .line 109
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 110
    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->worksQueue:Ljava/util/concurrent/BlockingQueue;

    .line 113
    const/16 v0, 0xc8

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->HTTP_RESPONSE_OK:I

    .line 114
    const/16 v0, 0xc9

    iput v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->HTTP_RESPONSE_OK1:I

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->isCompanion:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->urlConnection:Ljava/net/HttpURLConnection;

    .line 140
    iput-object p2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mHandler:Landroid/os/Handler;

    .line 141
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 142
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->setThreadPool()V

    .line 144
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/http/MdotMNetworkManager;)Lcom/mdotm/android/model/MdotMAdRequest;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adParams:Lcom/mdotm/android/model/MdotMAdRequest;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/http/MdotMNetworkManager;Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->requestUrl2:Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic access$3(Lcom/mdotm/android/http/MdotMNetworkManager;)Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->requestUrl2:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/http/MdotMNetworkManager;Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->isCompanion:Z

    return-void
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    return v0
.end method

.method static synthetic access$6(Lcom/mdotm/android/http/MdotMNetworkManager;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->isCompanion:Z

    return v0
.end method

.method static synthetic access$7(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkAvailableMemory(I)Z
    .locals 4

    .prologue
    .line 454
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 459
    :goto_0
    iget-wide v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->minMemorySize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 460
    const/4 v0, 0x1

    .line 462
    :goto_1
    return v0

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->getAvailableExternalMemorySize()J

    move-result-wide v0

    goto :goto_0

    .line 462
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private checkCacheStatus(Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 158
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkSDCardState()Z

    move-result v0

    sput-boolean v0, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    .line 159
    sget-boolean v0, Lcom/mdotm/android/http/MdotMNetworkManager;->enableCaching:Z

    if-eqz v0, :cond_12

    .line 160
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getCacheLocation()I

    move-result v0

    .line 160
    sput v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cache location is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    .line 164
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->manageCacheSize()V

    .line 169
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v1, v4, :cond_4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->verifyCache(Ljava/lang/String;)Z

    .line 191
    :cond_0
    :goto_0
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-eqz v1, :cond_9

    .line 192
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v1, v6, :cond_7

    .line 193
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v1}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v1

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is sd card calculating available memory is available "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    if-nez v1, :cond_1

    .line 199
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 202
    const-string v0, "Cache folder doesn\'t exist on sd card"

    .line 201
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 205
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 207
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    sput v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 295
    :cond_1
    :goto_1
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-eqz v0, :cond_11

    .line 297
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v0, v4, :cond_e

    .line 298
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 312
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v1, v6, :cond_2

    .line 313
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 314
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    const-string v1, "unable to create folder on sd card so creating on internal memory"

    .line 321
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 329
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v1, v4, :cond_10

    .line 331
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 332
    invoke-virtual {v1, v4}, Lcom/mdotm/android/database/MdotMCacheHandler;->insertCacheLocation(I)Z

    .line 341
    :cond_3
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enabled cache location is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 342
    const-string v2, " file path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    :goto_5
    return-void

    .line 174
    :cond_4
    sget-boolean v1, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    if-eqz v1, :cond_5

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->verifyCache(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 182
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sd card exist is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    const-string v2, " clearing tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v1, v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 186
    sput v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_0

    .line 212
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 213
    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 214
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 216
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 218
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    sput v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 226
    :cond_7
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v1, v4, :cond_1

    .line 227
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v1}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is internal calculating available memory is available "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    if-nez v1, :cond_1

    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 237
    const-string v0, "Cache folder doesn\'t exist on sd card"

    .line 236
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 240
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    sput v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 244
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 245
    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 246
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 248
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    sput v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 257
    :cond_9
    const-string v0, "Cache is not there initializing the cache"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    sget-boolean v0, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    if-eqz v0, :cond_c

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sd card exist is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, v6}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location is sd card calculating available memory is available "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    if-eqz v0, :cond_a

    .line 267
    sput v6, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 271
    :cond_a
    invoke-direct {p0, v4}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "memory is not available on sd card checking on internal memory. is available "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    if-eqz v0, :cond_b

    .line 276
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 278
    :cond_b
    sput v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 283
    :cond_c
    invoke-direct {p0, v4}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkAvailableMemory(I)Z

    move-result v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " sd card not there checking on internal memory. is available "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    if-eqz v0, :cond_d

    .line 288
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 290
    :cond_d
    sput v5, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_1

    .line 302
    :cond_e
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 326
    :cond_f
    const-string v1, "File created "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 334
    :cond_10
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v1, v6, :cond_3

    .line 335
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 336
    invoke-virtual {v1, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->insertCacheLocation(I)Z

    goto/16 :goto_4

    .line 348
    :cond_11
    invoke-direct {p0, p1}, Lcom/mdotm/android/http/MdotMNetworkManager;->createTemporaryCache(Lcom/mdotm/android/model/MdotMAdRequest;)V

    .line 349
    invoke-virtual {p1, v5}, Lcom/mdotm/android/model/MdotMAdRequest;->setEnableCaching(Z)V

    goto/16 :goto_5

    .line 354
    :cond_12
    invoke-direct {p0, p1}, Lcom/mdotm/android/http/MdotMNetworkManager;->createTemporaryCache(Lcom/mdotm/android/model/MdotMAdRequest;)V

    goto/16 :goto_5
.end method

.method private checkSDCardState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 636
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 637
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkWriteExternalPermission()Z

    move-result v0

    .line 640
    if-eqz v0, :cond_0

    .line 641
    const-string v1, "SD card exist and writable"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    :goto_0
    return v0

    .line 643
    :cond_0
    const-string v1, "SD card exist and no permission given for read and write"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_1
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    const-string v1, "SD card exist but not writable"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_2
    const-string v1, "SD card not exist"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkWriteExternalPermission()Z
    .locals 2

    .prologue
    .line 658
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 659
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 660
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearCahe([Ljava/io/File;)V
    .locals 4

    .prologue
    .line 615
    const-string v0, "Clearing cached file"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    if-eqz p1, :cond_0

    .line 617
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 627
    :cond_0
    return-void

    .line 617
    :cond_1
    aget-object v2, p1, v0

    .line 618
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 619
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 620
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 617
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private createTemporaryCache(Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 362
    .line 364
    sget-boolean v0, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    if-eqz v0, :cond_2

    .line 365
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 366
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    sput v3, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 378
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 380
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-ne v1, v3, :cond_0

    .line 381
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 382
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 386
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    const-string v1, "unable to create folder on sd card so creating on internal memory"

    .line 388
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 399
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->manageTemporaryCache(Ljava/io/File;)V

    .line 403
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp cache location is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    const-string v2, " file path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    return-void

    .line 373
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    sput v4, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    goto/16 :goto_0

    .line 393
    :cond_3
    const-string v1, "File created "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private deleteLeastRecentlyUsedCache()Z
    .locals 3

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    .line 1001
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteCache(Landroid/content/Context;I)Z

    move-result v0

    .line 1002
    return v0
.end method

.method private getAvailableExternalMemorySize()J
    .locals 4

    .prologue
    .line 1054
    sget-boolean v0, Lcom/mdotm/android/http/MdotMNetworkManager;->isSDCardExist:Z

    if-eqz v0, :cond_1

    .line 1055
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1056
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1057
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1062
    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 1064
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 1065
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 1072
    :goto_0
    mul-long/2addr v0, v2

    .line 1074
    :goto_1
    return-wide v0

    .line 1068
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 1069
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 1074
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private getAvailableInternalMemorySize()J
    .locals 4

    .prologue
    .line 1032
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 1033
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1036
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1037
    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 1039
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 1040
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 1046
    :goto_0
    mul-long/2addr v0, v2

    return-wide v0

    .line 1043
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 1044
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/mdotm/android/http/MdotMNetworkManager;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    if-nez v0, :cond_0

    .line 130
    const-string v0, ""

    const-string v1, "**Creating new manager"

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-direct {v0, p0, p1}, Lcom/mdotm/android/http/MdotMNetworkManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    .line 135
    :goto_0
    sget-object v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    return-object v0

    .line 133
    :cond_0
    const-string v0, ""

    const-string v1, "**Using existing manager"

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSize(Ljava/io/File;I)I
    .locals 6

    .prologue
    .line 1006
    if-nez p1, :cond_1

    .line 1026
    :cond_0
    return p2

    .line 1008
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1014
    if-eqz v1, :cond_0

    .line 1016
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1017
    new-instance v2, Ljava/io/File;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1019
    invoke-direct {p0, v2, p2}, Lcom/mdotm/android/http/MdotMNetworkManager;->getSize(Ljava/io/File;I)I

    move-result p2

    .line 1016
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_2
    int-to-long v4, p2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v2, v4

    long-to-int p2, v2

    goto :goto_1
.end method

.method private manageCacheSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 958
    const-string v0, "manage cache"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    if-eqz v0, :cond_1

    .line 963
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 964
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 965
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 966
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 967
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 968
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 969
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 964
    invoke-direct {p0, v0, v3}, Lcom/mdotm/android/http/MdotMNetworkManager;->getSize(Ljava/io/File;I)I

    move-result v1

    .line 970
    iget v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adCacheSizeInternal:I

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 973
    iget-object v3, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 974
    sget-object v3, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 972
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    :goto_0
    if-le v1, v0, :cond_1

    .line 991
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->deleteLeastRecentlyUsedCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMNetworkManager;->manageCacheSize()V

    .line 993
    :cond_0
    const-string v0, "manage cache loop"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 996
    :cond_1
    return-void

    .line 976
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 977
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 979
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 976
    invoke-direct {p0, v0, v3}, Lcom/mdotm/android/http/MdotMNetworkManager;->getSize(Ljava/io/File;I)I

    move-result v1

    .line 980
    iget v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adCacheSizeSDCard:I

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " manage cache size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 984
    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 985
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 986
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 985
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 986
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 987
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max cache size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 988
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 982
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private manageTemporaryCache(Ljava/io/File;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "file count "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->temporaryCacheSize:I

    if-lt v0, v2, :cond_0

    .line 413
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 415
    array-length v0, v3

    new-array v4, v0, [J

    move v0, v1

    .line 417
    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_1

    .line 434
    :try_start_0
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 435
    array-length v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-lt v1, v0, :cond_2

    .line 449
    :cond_0
    :goto_2
    return-void

    .line 418
    :cond_1
    aget-object v2, v3, v0

    .line 419
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 421
    :try_start_1
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :catch_0
    move-exception v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception while checking file cached time "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 435
    :cond_2
    :try_start_2
    aget-object v2, v3, v1

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "searching file name "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-wide v8, v4, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleting file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 445
    :catch_1
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 435
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private setThreadPool()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 665
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 666
    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->worksQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 665
    iput-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 667
    return-void
.end method

.method private verifyCache(Ljava/lang/String;)Z
    .locals 16

    .prologue
    .line 477
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 480
    const/4 v1, 0x0

    sput v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 481
    const/4 v1, 0x0

    .line 606
    :goto_0
    return v1

    .line 484
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 483
    invoke-static {v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v2

    .line 484
    invoke-virtual {v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFileFromCacheTable()[Ljava/lang/String;

    move-result-object v3

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 485
    invoke-static {v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFilesfromResourceTable()[Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 488
    if-eqz v3, :cond_f

    if-eqz v4, :cond_f

    .line 490
    const/4 v1, 0x0

    .line 491
    if-eqz v3, :cond_1

    .line 492
    array-length v5, v3

    add-int/2addr v1, v5

    .line 494
    :cond_1
    if-eqz v2, :cond_2

    .line 495
    array-length v2, v2

    add-int/2addr v1, v2

    .line 497
    :cond_2
    array-length v2, v4

    .line 498
    if-eq v1, v2, :cond_3

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 503
    invoke-virtual {v1, v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 505
    const-string v1, "file count missmatch clearing"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 507
    const/4 v1, 0x0

    sput v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 508
    const/4 v1, 0x0

    goto :goto_0

    .line 511
    :cond_3
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 513
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 514
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 522
    :goto_1
    if-eqz v3, :cond_4

    .line 523
    array-length v5, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-lt v2, v5, :cond_7

    .line 553
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 552
    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 553
    invoke-virtual {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFilesfromResourceTable()[Ljava/lang/String;

    move-result-object v5

    .line 554
    if-eqz v5, :cond_5

    .line 555
    array-length v6, v5

    const/4 v1, 0x0

    move v3, v1

    :goto_3
    if-lt v3, v6, :cond_a

    .line 595
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 516
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    .line 523
    :cond_7
    aget-object v6, v3, v2

    .line 524
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 527
    invoke-virtual {v1, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromCacheTable(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 530
    invoke-virtual {v1, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 531
    if-eqz v7, :cond_8

    .line 532
    array-length v8, v7

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v8, :cond_9

    .line 523
    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    .line 532
    :cond_9
    aget-object v9, v7, v1

    .line 535
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v10

    .line 537
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 538
    sget v12, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 536
    invoke-virtual {v10, v9, v11, v12, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 539
    :catch_0
    move-exception v9

    .line 542
    const-string v9, "Exception while delting the resources"

    .line 541
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 555
    :cond_a
    aget-object v1, v5, v3

    .line 556
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v2

    .line 560
    invoke-virtual {v2, v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getResourceParents(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 561
    if-eqz v7, :cond_b

    .line 562
    array-length v8, v7

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-lt v2, v8, :cond_c

    .line 555
    :cond_b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3

    .line 562
    :cond_c
    aget-object v9, v7, v2

    .line 563
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 565
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 567
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 568
    invoke-virtual {v1, v9}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromCacheTable(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    .line 572
    invoke-virtual {v1, v9}, Lcom/mdotm/android/database/MdotMCacheHandler;->getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 573
    array-length v11, v10

    const/4 v1, 0x0

    :goto_7
    if-lt v1, v11, :cond_e

    .line 562
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    .line 573
    :cond_e
    aget-object v12, v10, v1

    .line 576
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 575
    invoke-static {v13}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v13

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    .line 580
    sget v15, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 577
    invoke-virtual {v13, v12, v14, v15, v9}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 582
    :catch_1
    move-exception v12

    .line 585
    const-string v12, "Exception while delting the resources"

    .line 584
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 603
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearAllTable(Landroid/content/Context;)V

    .line 604
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mdotm/android/http/MdotMNetworkManager;->clearCahe([Ljava/io/File;)V

    .line 605
    const/4 v1, 0x0

    sput v1, Lcom/mdotm/android/http/MdotMNetworkManager;->cacheLocation:I

    .line 606
    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public sendRequest(Lcom/mdotm/android/model/MdotMAdRequest;J)V
    .locals 8

    .prologue
    .line 675
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->adParams:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 676
    const-string v0, "Sending request"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    if-eqz p1, :cond_0

    .line 681
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->isEnableCaching()Z

    move-result v0

    sput-boolean v0, Lcom/mdotm/android/http/MdotMNetworkManager;->enableCaching:Z

    .line 682
    invoke-direct {p0, p1}, Lcom/mdotm/android/http/MdotMNetworkManager;->checkCacheStatus(Lcom/mdotm/android/model/MdotMAdRequest;)V

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 685
    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;

    new-instance v1, Lcom/mdotm/android/utils/MdotMRequestBuilder;

    .line 686
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mdotm/android/utils/MdotMRequestBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/mdotm/android/utils/MdotMRequestBuilder;->buildRequest(Lcom/mdotm/android/model/MdotMAdRequest;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;-><init>(Lcom/mdotm/android/http/MdotMNetworkManager;Ljava/lang/StringBuffer;Lcom/mdotm/android/model/MdotMAdRequest;J)V

    .line 685
    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    const-string v0, "**Reject Exception"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 692
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 693
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 694
    :catch_1
    move-exception v0

    .line 695
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 697
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setAdNetworkListener(Lcom/mdotm/android/listener/MdotMNetworkListener;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    .line 672
    return-void
.end method
