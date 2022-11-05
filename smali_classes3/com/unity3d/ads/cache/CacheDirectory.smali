.class public Lcom/unity3d/ads/cache/CacheDirectory;
.super Ljava/lang/Object;
.source "CacheDirectory.java"


# static fields
.field private static final TEST_FILE_NAME:Ljava/lang/String; = "UnityAdsTest.txt"


# instance fields
.field private _cacheDirName:Ljava/lang/String;

.field private _cacheDirectory:Ljava/io/File;

.field private _initialized:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_initialized:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 21
    iput-object p1, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 65
    goto :goto_0
.end method

.method public getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_initialized:Z

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 51
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_initialized:Z

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_2

    .line 31
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/cache/CacheDirectory;->createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    iput-object v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Ads is using external cache directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "External media not mounted"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    iput-object v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Ads is using internal cache directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "Unity Ads failed to initialize cache directory"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public testCacheDirectory(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    :try_start_0
    const-string v1, "test"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 78
    array-length v2, v1

    new-array v2, v2, [B

    .line 79
    new-instance v3, Ljava/io/File;

    const-string v4, "UnityAdsTest.txt"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 83
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 84
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to list files in directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads exception while testing cache directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 93
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete testfile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_3
    array-length v1, v2

    if-eq v4, v1, :cond_4

    .line 101
    const-string v1, "Read buffer size mismatch"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_4
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 107
    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 110
    :cond_5
    const-string v1, "Read buffer content mismatch"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
