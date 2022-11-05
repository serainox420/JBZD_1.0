.class public Lcom/mdotm/android/database/MdotMCacheHandler;
.super Lcom/mdotm/android/database/MdotMDBAdapter;
.source "MdotMCacheHandler.java"


# static fields
.field public static final CACHE_IS_ON_INTERNAL:I = 0x2

.field public static final CACHE_IS_ON_SD_CARD:I = 0x1

.field protected static final DATABASE_NAME:Ljava/lang/String; = "AdDatabase.db"

.field protected static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_NAME_AD_CACHE:Ljava/lang/String; = "AdCache"

.field public static final TABLE_NAME_AD_NATIVE:Ljava/lang/String; = "Native"

.field public static final TABLE_NAME_AD_RESOURCES:Ljava/lang/String; = "AdHtmlResources"

.field private static instance:Lcom/mdotm/android/database/MdotMCacheHandler;


# instance fields
.field final FILE_NAME:Ljava/lang/String;

.field final HTML_FILE_NAME:Ljava/lang/String;

.field final LAST_USED:Ljava/lang/String;

.field final LOCATION:Ljava/lang/String;

.field final NATIVE_FILE_NAME:Ljava/lang/String;

.field final NATIVE_LAST_USED:Ljava/lang/String;

.field final RESOURCE_NAME:Ljava/lang/String;

.field private final TABLE_CREATE_AD_CACHE:Ljava/lang/String;

.field private final TABLE_CREATE_LOCATION_TABLE:Ljava/lang/String;

.field private final TABLE_CREATE_NATIVE_TABLE:Ljava/lang/String;

.field private final TABLE_CREATE_RESOURCE_TABLE:Ljava/lang/String;

.field final TABLE_NAME_CACHE_LOCATION:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/mdotm/android/database/MdotMDBAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 16
    const-string v0, "FileName"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->FILE_NAME:Ljava/lang/String;

    .line 17
    const-string v0, "lastUsed"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->LAST_USED:Ljava/lang/String;

    .line 21
    const-string v0, "HtmlName"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->HTML_FILE_NAME:Ljava/lang/String;

    .line 22
    const-string v0, "ResourceName"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->RESOURCE_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "NativeName"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->NATIVE_FILE_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "LastUsed"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->NATIVE_LAST_USED:Ljava/lang/String;

    .line 28
    const-string v0, "CacheLocation"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->TABLE_NAME_CACHE_LOCATION:Ljava/lang/String;

    .line 29
    const-string v0, "Location"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->LOCATION:Ljava/lang/String;

    .line 37
    const-string v0, "CREATE TABLE IF NOT EXISTS AdCache (  FileName TEXT NOT NULL,lastUsed INTEGER );"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->TABLE_CREATE_AD_CACHE:Ljava/lang/String;

    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS AdHtmlResources (  HtmlName TEXT NOT NULL,ResourceName TEXT );"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->TABLE_CREATE_RESOURCE_TABLE:Ljava/lang/String;

    .line 46
    const-string v0, "CREATE TABLE IF NOT EXISTS CacheLocation ( Location INTEGER NOT NULL);"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->TABLE_CREATE_LOCATION_TABLE:Ljava/lang/String;

    .line 52
    const-string v0, "CREATE TABLE IF NOT EXISTS Native (  NativeName TEXT NOT NULL,LastUsed INTEGER );"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->TABLE_CREATE_NATIVE_TABLE:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->createTable()V

    .line 71
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;
    .locals 4

    .prologue
    .line 61
    const-class v1, Lcom/mdotm/android/database/MdotMCacheHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mdotm/android/database/MdotMCacheHandler;->instance:Lcom/mdotm/android/database/MdotMCacheHandler;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mdotm/android/database/MdotMCacheHandler;

    const-string v2, "AdDatabase.db"

    .line 63
    const/4 v3, 0x1

    .line 62
    invoke-direct {v0, p0, v2, v3}, Lcom/mdotm/android/database/MdotMCacheHandler;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcom/mdotm/android/database/MdotMCacheHandler;->instance:Lcom/mdotm/android/database/MdotMCacheHandler;

    .line 65
    :cond_0
    sget-object v0, Lcom/mdotm/android/database/MdotMCacheHandler;->instance:Lcom/mdotm/android/database/MdotMCacheHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearAllTable(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 488
    .line 490
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 491
    :try_start_1
    const-string v1, "AdCache"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 492
    const-string v1, "AdHtmlResources"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 493
    const-string v1, "CacheLocation"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 499
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v1

    .line 499
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 499
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 502
    :cond_1
    throw v0

    .line 498
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0, p1, p4}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromResourceTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_0

    .line 315
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 323
    :cond_0
    return-void

    .line 315
    :cond_1
    aget-object v3, v1, v0

    .line 316
    invoke-virtual {p0, v3, p2, p3, p1}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized createTable()V
    .locals 4

    .prologue
    .line 74
    monitor-enter p0

    const/4 v0, 0x0

    .line 75
    :try_start_0
    const-string v1, "creating table"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    const-string v1, "Create table is called"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 79
    :try_start_2
    const-string v1, "CREATE TABLE IF NOT EXISTS AdCache (  FileName TEXT NOT NULL,lastUsed INTEGER );"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v1, "CREATE TABLE IF NOT EXISTS AdHtmlResources (  HtmlName TEXT NOT NULL,ResourceName TEXT );"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v1, "CREATE TABLE IF NOT EXISTS CacheLocation ( Location INTEGER NOT NULL);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v1, "CREATE TABLE IF NOT EXISTS Native (  NativeName TEXT NOT NULL,LastUsed INTEGER );"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "database path is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 88
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    const-string v0, "DB CLOSED"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 88
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    const-string v0, "DB CLOSED"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 88
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    const-string v1, "DB CLOSED"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public deleteAllCacheFromCacheAndResourceTable(Landroid/content/Context;I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 551
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    sget-object v3, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFileFromCacheTable()[Ljava/lang/String;

    move-result-object v4

    .line 559
    array-length v5, v4

    move v3, v2

    :goto_1
    if-lt v3, v5, :cond_3

    .line 566
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 567
    const-string v3, "AdCache"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 577
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFilesfromResourceTable()[Ljava/lang/String;

    move-result-object v3

    .line 578
    array-length v4, v3

    :goto_3
    if-lt v2, v4, :cond_5

    .line 584
    :try_start_1
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 585
    const-string v0, "AdHtmlResources"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 590
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 595
    :cond_1
    :goto_4
    return-void

    .line 555
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_3
    aget-object v6, v4, v3

    .line 560
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 559
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 568
    :catch_0
    move-exception v3

    .line 572
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 571
    :catchall_0
    move-exception v0

    .line 572
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 573
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 575
    :cond_4
    throw v0

    .line 578
    :cond_5
    aget-object v5, v3, v2

    .line 579
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 578
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 586
    :catch_1
    move-exception v0

    .line 590
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_4

    .line 589
    :catchall_1
    move-exception v0

    .line 590
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 591
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 593
    :cond_6
    throw v0
.end method

.method public deleteCache(Landroid/content/Context;I)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 213
    .line 215
    const-string v1, "SELECT FileName FROM AdCache ORDER BY lastUsed ASC LIMIT 1"

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 221
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete from DB:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 226
    const-string v3, "FileName"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 225
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 230
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    sget-object v4, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    :goto_0
    if-eqz v3, :cond_1

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 239
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "delete file"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 245
    :cond_0
    const-string v1, "AdCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FileName=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 245
    invoke-virtual {v2, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "the deleted file is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "::"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, v3}, Lcom/mdotm/android/database/MdotMCacheHandler;->getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 252
    if-eqz v4, :cond_1

    .line 253
    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    :goto_1
    if-lt v1, v5, :cond_5

    .line 278
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 283
    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_2
    return v0

    .line 234
    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    sget-object v4, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 253
    :cond_5
    aget-object v6, v4, v1

    .line 254
    invoke-virtual {p0, v6, p1, p2, v3}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    sget-object v3, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move v1, v0

    .line 267
    :goto_3
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 268
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 273
    :catch_0
    move-exception v1

    .line 274
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_2

    .line 276
    :catchall_0
    move-exception v0

    .line 278
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 279
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 281
    :cond_7
    throw v0
.end method

.method public deleteFileFromCacheTable(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 510
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM AdCache WHERE FileName = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM AdHtmlResources WHERE HtmlName = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v1

    .line 522
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 522
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 525
    :cond_1
    throw v0

    .line 521
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public deleteFileFromResourceTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 530
    const/4 v1, 0x0

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM AdHtmlResources WHERE ResourceName = \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "HtmlName"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 546
    :cond_0
    return-void

    .line 540
    :catchall_0
    move-exception v0

    .line 541
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 544
    :cond_1
    throw v0
.end method

.method public deleteNative(Landroid/content/Context;)Z
    .locals 12

    .prologue
    const-wide/32 v10, 0x5265c00

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 133
    .line 135
    const-string v2, "SELECT NativeName FROM Native WHERE LastUsed<?"

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "delete native from file count:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 146
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete native from file count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    :cond_0
    const-string v3, "delete native file in do while"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    const-string v3, "NativeName"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 153
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    sget-object v5, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 160
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 161
    sget-object v5, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Native:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    if-eqz v3, :cond_1

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 174
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "delete native file"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 180
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 190
    :cond_2
    :goto_0
    const-string v2, "Native"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LastUsed<\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " delete native from db is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    :try_start_2
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    :goto_1
    return v8

    .line 197
    :catch_0
    move-exception v0

    goto :goto_1

    .line 186
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public getAllFileFromCacheTable()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 420
    .line 425
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 426
    :try_start_1
    const-string v1, "AdCache"

    .line 427
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "FileName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 426
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 428
    if-eqz v2, :cond_8

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 429
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 430
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v9

    .line 432
    :goto_0
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 433
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-nez v3, :cond_7

    .line 441
    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move-object v0, v1

    .line 449
    :goto_2
    return-object v0

    :cond_2
    move-object v1, v8

    .line 438
    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    .line 441
    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 442
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 445
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v8

    goto :goto_2

    .line 440
    :catchall_0
    move-exception v0

    move-object v2, v8

    .line 441
    :goto_4
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 442
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 445
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 447
    :cond_5
    throw v0

    .line 440
    :catchall_1
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    .line 438
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :cond_6
    move-object v0, v8

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_0

    :cond_8
    move-object v1, v8

    goto :goto_1
.end method

.method public getAllFilesfromResourceTable()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 454
    .line 459
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 460
    :try_start_1
    const-string v1, "AdHtmlResources"

    .line 461
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ResourceName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 462
    const/4 v7, 0x0

    .line 460
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 463
    if-eqz v2, :cond_8

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 464
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 465
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v9

    .line 467
    :goto_0
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 468
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-nez v3, :cond_7

    .line 476
    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move-object v0, v1

    .line 484
    :goto_2
    return-object v0

    :cond_2
    move-object v1, v8

    .line 473
    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    .line 476
    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 477
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 480
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v8

    goto :goto_2

    .line 475
    :catchall_0
    move-exception v0

    move-object v2, v8

    .line 476
    :goto_4
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 477
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 480
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 482
    :cond_5
    throw v0

    .line 475
    :catchall_1
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    .line 473
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :cond_6
    move-object v0, v8

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_0

    :cond_8
    move-object v1, v8

    goto :goto_1
.end method

.method public getCacheLocation()I
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 364
    .line 367
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 368
    :try_start_1
    const-string v1, "CacheLocation"

    .line 369
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Location"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 368
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 370
    if-eqz v2, :cond_6

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "location column index  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    const-string v3, "Location"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string v3, " row count "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 377
    const-string v1, "Location"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    .line 383
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move v0, v1

    .line 390
    :goto_0
    return v0

    .line 380
    :catch_0
    move-exception v0

    move-object v0, v9

    .line 383
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 384
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    :goto_2
    move v0, v8

    .line 390
    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    move-object v2, v9

    .line 383
    :goto_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 384
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 387
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 389
    :cond_5
    throw v0

    .line 383
    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 384
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_7
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 382
    :catchall_1
    move-exception v1

    move-object v2, v9

    move-object v9, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_3

    .line 380
    :catch_1
    move-exception v1

    move-object v10, v9

    move-object v9, v0

    move-object v0, v10

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v9, v0

    move-object v0, v2

    goto :goto_1
.end method

.method public getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 326
    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 331
    :try_start_1
    const-string v1, "AdHtmlResources"

    .line 332
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ResourceName"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HtmlName= \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 331
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 335
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v1, v9

    .line 339
    :goto_0
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    :try_start_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    .line 340
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v8

    .line 345
    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move-object v0, v1

    .line 353
    :cond_2
    :goto_2
    return-object v0

    .line 342
    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v0, v8

    .line 345
    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 346
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_3
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 344
    :catchall_0
    move-exception v0

    move-object v1, v8

    .line 345
    :goto_4
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 346
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 350
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 352
    :cond_5
    throw v0

    .line 344
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    .line 342
    :catch_1
    move-exception v1

    move-object v1, v8

    move-object v10, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v2

    move-object v10, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v10, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    move-object v1, v8

    goto :goto_1
.end method

.method public getResourceParents(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 621
    .line 625
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 626
    :try_start_1
    const-string v1, "AdHtmlResources"

    .line 627
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "HtmlName"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ResourceName= \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 626
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 630
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 632
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v1, v9

    .line 634
    :goto_0
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    :try_start_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    .line 635
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v8

    .line 640
    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 641
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move-object v0, v1

    .line 648
    :cond_2
    :goto_2
    return-object v0

    .line 637
    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v0, v8

    .line 640
    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 641
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_3
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 639
    :catchall_0
    move-exception v0

    move-object v1, v8

    .line 640
    :goto_4
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 641
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 645
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 647
    :cond_5
    throw v0

    .line 639
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    .line 637
    :catch_1
    move-exception v1

    move-object v1, v8

    move-object v10, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v2

    move-object v10, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v10, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    move-object v1, v8

    goto :goto_1
.end method

.method public insertCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    const-string v1, "FileName"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "lastUsed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inserting file name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 102
    const-string v0, "Name inserted successfuly"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    :cond_0
    return-void
.end method

.method public insertCacheLocation(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 394
    .line 396
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 397
    const-string v1, "Location"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Inserting location name "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    const-string v3, "CacheLocation"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 402
    :try_start_1
    const-string v0, "CacheLocation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    const-string v0, "CacheLocation"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 404
    const-string v0, "location inserted successfuly"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    const/4 v0, 0x1

    .line 412
    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 406
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 407
    :goto_1
    const/4 v0, 0x0

    .line 410
    :try_start_2
    const-string v2, "Exception while inserting"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 412
    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 412
    :goto_2
    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 415
    :cond_1
    throw v0

    .line 411
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 406
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public insertNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 116
    const-string v1, "NativeName"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "LastUsed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inserting file name  native"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Name of native inserted successfuly"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 128
    :cond_0
    return-void
.end method

.method public insertToResourceTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 598
    .line 599
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 600
    const-string v2, "HtmlName"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v2, "ResourceName"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inserting file name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 603
    const-string v3, " of main file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 606
    :try_start_1
    const-string v2, "AdHtmlResources"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 608
    const-string v1, "Name inserted successfuly"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 613
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 609
    :catch_0
    move-exception v1

    .line 611
    :try_start_2
    const-string v1, "Exception while inserting"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 613
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 613
    :goto_1
    if-eqz v1, :cond_1

    .line 614
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 616
    :cond_1
    throw v0

    .line 612
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public bridge synthetic onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/database/MdotMDBAdapter;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/mdotm/android/database/MdotMDBAdapter;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
