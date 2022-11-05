.class public Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;
.super Ljava/lang/Object;
.source "MdotMNatiiveContentDownloader.java"


# static fields
.field protected static isVastDownloadError:Z


# instance fields
.field private MdotM_Native_caching:Ljava/lang/String;

.field cacheDirectory:Ljava/io/File;

.field fileName:Ljava/lang/String;

.field localFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->isVastDownloadError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "Native"

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->MdotM_Native_caching:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v1, "?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method


# virtual methods
.method public downloadNativeResources(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p3}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteNative(Landroid/content/Context;)Z

    .line 30
    invoke-direct {p0, p1}, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->fileName:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/io/File;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->MdotM_Native_caching:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object v0, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->cacheDirectory:Ljava/io/File;

    .line 52
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->cacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->cacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BitMap"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->cacheDirectory:Ljava/io/File;

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->localFile:Ljava/io/File;

    .line 61
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->localFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    new-instance v0, Lcom/mdotm/android/http/MdotMFileDownloader;

    invoke-direct {v0}, Lcom/mdotm/android/http/MdotMFileDownloader;-><init>()V

    invoke-virtual {v0, p3, p1}, Lcom/mdotm/android/http/MdotMFileDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    const-string v0, "unable to download file"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inserting file neme to ad cache1 native "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->localFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->localFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BitMap1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :cond_2
    new-instance v1, Lcom/mdotm/android/http/MdotMFileDownloader;

    invoke-direct {v1}, Lcom/mdotm/android/http/MdotMFileDownloader;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->localFile:Ljava/io/File;

    invoke-virtual {v1, v0, v2}, Lcom/mdotm/android/http/MdotMFileDownloader;->writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 75
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->cacheDirectory:Ljava/io/File;

    iget-object v3, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 77
    :try_start_0
    invoke-static {p3}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->fileName:Ljava/lang/String;

    const-string v2, "Native"

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/database/MdotMCacheHandler;->insertNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    :cond_3
    const-string v0, "file native already exist.. no need to download"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
