.class public Lcom/video/adsdk/internal/ADFileDownloader;
.super Ljava/lang/Object;
.source "ADFileDownloader.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/FileDownloader;


# static fields
.field private static final CACHEDIRECTORY:Ljava/lang/String; = "VideoAdSDKCache"


# instance fields
.field private context:Landroid/content/Context;

.field private downloadAttempts:I

.field private final expirationSuffix:Ljava/lang/String;

.field private listener:Lcom/video/adsdk/interfaces/DownloadProgressListener;

.field private storeOnSDCard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ".expiration"

    iput-object v0, p0, Lcom/video/adsdk/internal/ADFileDownloader;->expirationSuffix:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/video/adsdk/internal/ADFileDownloader;->downloadAttempts:I

    .line 40
    iput-boolean p2, p0, Lcom/video/adsdk/internal/ADFileDownloader;->storeOnSDCard:Z

    .line 41
    iput-object p1, p0, Lcom/video/adsdk/internal/ADFileDownloader;->context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private deleteAllFiles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method private deleteExpiredFiles(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".expiration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADFileDownloader;->readExpirationDate(Ljava/io/File;)J

    move-result-wide v4

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 208
    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADFileDownloader;->removeCachedFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADFileDownloader;->removeCachedFile(Ljava/io/File;)V

    .line 213
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 217
    :cond_1
    return-void
.end method

.method private downloadFileInternal(Lcom/video/adsdk/internal/ADVideoFile;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 54
    iget-boolean v1, p0, Lcom/video/adsdk/internal/ADFileDownloader;->storeOnSDCard:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No SD-Card found!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x0

    .line 60
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/video/adsdk/internal/ADVideoFile;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADFileDownloader;->getTargetDirectoryPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Lcom/video/adsdk/internal/ADVideoFile;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 69
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 70
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 73
    const/16 v4, 0x400

    new-array v7, v4, [B

    .line 74
    const-wide/16 v4, 0x0

    .line 76
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    .line 77
    :cond_3
    :goto_1
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 78
    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 79
    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 80
    iget-object v8, p0, Lcom/video/adsdk/internal/ADFileDownloader;->listener:Lcom/video/adsdk/interfaces/DownloadProgressListener;

    if-eqz v8, :cond_3

    .line 81
    iget-object v8, p0, Lcom/video/adsdk/internal/ADFileDownloader;->listener:Lcom/video/adsdk/interfaces/DownloadProgressListener;

    long-to-double v10, v4

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    int-to-double v12, v6

    div-double/2addr v10, v12

    invoke-interface {v8, v10, v11}, Lcom/video/adsdk/interfaces/DownloadProgressListener;->onProgress(D)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 94
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 98
    :cond_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    iget v2, p0, Lcom/video/adsdk/internal/ADFileDownloader;->downloadAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/video/adsdk/internal/ADFileDownloader;->downloadAttempts:I

    .line 101
    iget v2, p0, Lcom/video/adsdk/internal/ADFileDownloader;->downloadAttempts:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_7

    .line 102
    invoke-direct/range {p0 .. p1}, Lcom/video/adsdk/internal/ADFileDownloader;->downloadFileInternal(Lcom/video/adsdk/internal/ADVideoFile;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 112
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/video/adsdk/internal/ADFileDownloader;->listener:Lcom/video/adsdk/interfaces/DownloadProgressListener;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/video/adsdk/internal/ADFileDownloader;->listener:Lcom/video/adsdk/interfaces/DownloadProgressListener;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-interface {v0, v2, v3}, Lcom/video/adsdk/interfaces/DownloadProgressListener;->onProgress(D)V

    goto :goto_0

    .line 84
    :cond_6
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 85
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 87
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/video/adsdk/internal/ADFileDownloader;->getTargetDirectoryPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".expiration"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/video/adsdk/internal/ADVideoFile;->getExpirationDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 91
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 92
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 107
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 104
    :cond_7
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_8
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 93
    :catch_1
    move-exception v0

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2
.end method

.method private getAllFiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    const-string v1, ""

    const-string v0, ""

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADFileDownloader;->getInternalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADFileDownloader;->getExternalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 187
    :goto_1
    invoke-direct {p0, v1}, Lcom/video/adsdk/internal/ADFileDownloader;->getFilesInDirectory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/ADFileDownloader;->getFilesInDirectory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    return-object v1

    .line 178
    :catch_0
    move-exception v2

    .line 179
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 183
    :catch_1
    move-exception v2

    .line 184
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getCachePath(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/io/File;

    const-string v1, "VideoAdSDKCache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' could not be created"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExternalPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/video/adsdk/internal/ADFileDownloader;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/ADFileDownloader;->getCachePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilesInDirectory(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private getInternalPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/video/adsdk/internal/ADFileDownloader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/ADFileDownloader;->getCachePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 157
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    .line 158
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    if-eqz p1, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 165
    :cond_0
    if-eqz p2, :cond_1

    .line 166
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :cond_1
    :goto_1
    throw v0

    .line 162
    :cond_2
    if-eqz p1, :cond_3

    .line 163
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 165
    :cond_3
    if-eqz p2, :cond_4

    .line 166
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :cond_4
    :goto_2
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 168
    :catch_1
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public copyInternalToExternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/video/adsdk/internal/ADFileDownloader;->getExternalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2, v0}, Lcom/video/adsdk/internal/ADFileDownloader;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllFiles()V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADFileDownloader;->getAllFiles()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/ADFileDownloader;->deleteAllFiles(Ljava/util/List;)V

    .line 241
    return-void
.end method

.method public deleteExpiredFiles()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADFileDownloader;->getAllFiles()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/ADFileDownloader;->deleteExpiredFiles(Ljava/util/List;)V

    .line 200
    return-void
.end method

.method public downloadFile(Lcom/video/adsdk/internal/ADVideoFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/video/adsdk/internal/ADFileDownloader;->downloadAttempts:I

    .line 47
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/ADFileDownloader;->downloadFileInternal(Lcom/video/adsdk/internal/ADVideoFile;)V

    .line 48
    return-void
.end method

.method public getTargetDirectoryPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/video/adsdk/internal/ADFileDownloader;->storeOnSDCard:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/video/adsdk/internal/ADFileDownloader;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADFileDownloader;->getInternalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected readExpirationDate(Ljava/io/File;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".expiration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 224
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected removeCachedFile(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".expiration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 231
    return-void
.end method

.method public setDownloadProgressListener(Lcom/video/adsdk/interfaces/DownloadProgressListener;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/video/adsdk/internal/ADFileDownloader;->listener:Lcom/video/adsdk/interfaces/DownloadProgressListener;

    .line 236
    return-void
.end method
