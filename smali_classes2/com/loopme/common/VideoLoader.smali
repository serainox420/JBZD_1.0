.class public Lcom/loopme/common/VideoLoader;
.super Ljava/lang/Object;
.source "VideoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/common/VideoLoader$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0x4e20


# instance fields
.field private lenghtOfPreview:I

.field private mCallback:Lcom/loopme/common/VideoLoader$Callback;

.field private volatile mConnection:Ljava/net/HttpURLConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mIsVideoFullyDownloaded:Z

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mPartPreload:Z

.field private mShortFileName:Ljava/lang/String;

.field private volatile mStop:Z

.field private mVideoFile:Ljava/io/File;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/loopme/common/VideoLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Lcom/loopme/common/VideoLoader$Callback;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p4, p0, Lcom/loopme/common/VideoLoader;->mCallback:Lcom/loopme/common/VideoLoader$Callback;

    .line 46
    iput-object p3, p0, Lcom/loopme/common/VideoLoader;->mContext:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcom/loopme/common/VideoLoader;->mVideoUrl:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Lcom/loopme/common/VideoLoader;->mPartPreload:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/common/VideoLoader;)Lcom/loopme/common/VideoLoader$Callback;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mCallback:Lcom/loopme/common/VideoLoader$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopme/common/VideoLoader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mShortFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loopme/common/VideoLoader;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/loopme/common/VideoLoader;->load(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/loopme/common/VideoLoader;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private configGetConnection(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/16 v1, 0x4e20

    .line 290
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 291
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 292
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes=0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v1, "If-Range"

    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method private handleEmulator()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/loopme/common/Utils;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "running on emulator"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method private handleVideoFullDownloaded()V
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/common/VideoLoader;->mIsVideoFullyDownloaded:Z

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/loopme/common/VideoLoader$2;

    invoke-direct {v1, p0}, Lcom/loopme/common/VideoLoader$2;-><init>(Lcom/loopme/common/VideoLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method private handleVideoPreviewLoaded(ILjava/lang/String;I)V
    .locals 4

    .prologue
    .line 180
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloaded preview! file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/common/VideoLoader;->mVideoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/loopme/common/VideoLoader$1;

    invoke-direct {v1, p0}, Lcom/loopme/common/VideoLoader$1;-><init>(Lcom/loopme/common/VideoLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "load rest of file"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loopme/common/VideoLoader;->reconnect(ILjava/lang/String;IZ)V

    .line 193
    return-void
.end method

.method private load(Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-boolean v0, p0, Lcom/loopme/common/VideoLoader;->mStop:Z

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v1, 0x0

    .line 97
    iput v2, p0, Lcom/loopme/common/VideoLoader;->lenghtOfPreview:I

    .line 99
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mVideoUrl:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    .line 101
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_9

    .line 104
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v3, "ETag"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 107
    :try_start_2
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 109
    iget-boolean v0, p0, Lcom/loopme/common/VideoLoader;->mStop:Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 171
    :try_start_3
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 113
    :cond_2
    :try_start_4
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length of file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz p2, :cond_3

    .line 115
    div-int/lit8 v0, v1, 0x4

    iput v0, p0, Lcom/loopme/common/VideoLoader;->lenghtOfPreview:I

    .line 118
    :cond_3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    .line 119
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 120
    if-eqz p2, :cond_4

    .line 121
    iget v0, p0, Lcom/loopme/common/VideoLoader;->lenghtOfPreview:I

    invoke-direct {p0, v3, v0}, Lcom/loopme/common/VideoLoader;->configGetConnection(Ljava/lang/String;I)V

    .line 126
    :goto_1
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    iget-boolean v4, p0, Lcom/loopme/common/VideoLoader;->mStop:Z
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_5

    .line 169
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 171
    :try_start_5
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 123
    :cond_4
    :try_start_6
    invoke-direct {p0, v3, v1}, Lcom/loopme/common/VideoLoader;->configGetConnection(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 158
    :catch_2
    move-exception v0

    .line 159
    :try_start_7
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad asset[MalformedURLException]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/common/VideoLoader;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad_asset"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 171
    :try_start_8
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 172
    :catch_3
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 132
    :cond_5
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/loopme/common/VideoLoader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/loopme/common/VideoUtils;->getParentDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/loopme/common/VideoLoader;->mShortFileName:Ljava/lang/String;

    .line 133
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/loopme/common/VideoLoader;->mShortFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/loopme/common/VideoLoader;->mVideoFile:Ljava/io/File;

    .line 134
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/loopme/common/VideoLoader;->mVideoFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    .line 136
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 139
    :goto_2
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 140
    iget-object v6, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 141
    add-int/2addr v2, v5

    goto :goto_2

    .line 144
    :cond_6
    if-eqz p2, :cond_7

    .line 145
    invoke-direct {p0, v2, v3, v1}, Lcom/loopme/common/VideoLoader;->handleVideoPreviewLoaded(ILjava/lang/String;I)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 169
    :goto_3
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 171
    :try_start_a
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 172
    :catch_4
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 147
    :cond_7
    :try_start_b
    invoke-direct {p0}, Lcom/loopme/common/VideoLoader;->handleVideoFullDownloaded()V
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 162
    :catch_5
    move-exception v0

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    .line 163
    :goto_4
    :try_start_c
    sget-object v4, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    if-eqz p2, :cond_8

    iget v1, p0, Lcom/loopme/common/VideoLoader;->lenghtOfPreview:I

    .line 166
    :cond_8
    invoke-direct {p0, v3, v2, v1, p2}, Lcom/loopme/common/VideoLoader;->reconnect(ILjava/lang/String;IZ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 171
    :try_start_d
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 172
    :catch_6
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 151
    :cond_9
    :try_start_e
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mCallback:Lcom/loopme/common/VideoLoader$Callback;

    if-eqz v0, :cond_a

    .line 152
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mCallback:Lcom/loopme/common/VideoLoader$Callback;

    new-instance v3, Lcom/loopme/common/LoopMeError;

    const-string v4, "Error during loading video"

    invoke-direct {v3, v4}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/loopme/common/VideoLoader$Callback;->onError(Lcom/loopme/common/LoopMeError;)V

    .line 154
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad asset[responseCode == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/loopme/common/VideoLoader;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bad_asset"

    invoke-static {v0, v3}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    .line 162
    :catch_7
    move-exception v0

    move v3, v2

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto :goto_4

    .line 169
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_b

    .line 171
    :try_start_f
    iget-object v1, p0, Lcom/loopme/common/VideoLoader;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 174
    :cond_b
    :goto_5
    throw v0

    .line 172
    :catch_8
    move-exception v1

    .line 173
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 162
    :catch_9
    move-exception v0

    move v1, v2

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    goto/16 :goto_4
.end method

.method private preloadVideo(Z)V
    .locals 3

    .prologue
    .line 260
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadVideo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/loopme/common/ExecutorHelper;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loopme/common/VideoLoader$3;

    invoke-direct {v1, p0, p1}, Lcom/loopme/common/VideoLoader$3;-><init>(Lcom/loopme/common/VideoLoader;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 267
    return-void
.end method

.method private reconnect(ILjava/lang/String;IZ)V
    .locals 5

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/loopme/common/VideoLoader;->mStop:Z

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-nez p1, :cond_2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad asset[loaded 0 bytes]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/common/VideoLoader;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad_asset"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mCallback:Lcom/loopme/common/VideoLoader$Callback;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mCallback:Lcom/loopme/common/VideoLoader$Callback;

    new-instance v1, Lcom/loopme/common/LoopMeError;

    const-string v2, "Error during video loading"

    invoke-direct {v1, v2}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/loopme/common/VideoLoader$Callback;->onError(Lcom/loopme/common/LoopMeError;)V

    goto :goto_0

    .line 210
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/loopme/common/VideoLoader;->mVideoUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    .line 212
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v1, "If-Range"

    invoke-virtual {v0, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 218
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/loopme/common/VideoLoader;->mVideoFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 219
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 222
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 223
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 224
    add-int/2addr p1, v3

    goto :goto_1

    .line 226
    :cond_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 227
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 229
    if-eqz p4, :cond_4

    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/loopme/common/VideoLoader;->handleVideoPreviewLoaded(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 232
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/loopme/common/VideoLoader;->handleVideoFullDownloaded()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    sget-object v1, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/loopme/common/VideoLoader;->reconnect(ILjava/lang/String;IZ)V

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/loopme/common/VideoLoader;->handleEmulator()V

    .line 54
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Use mobile network for caching: true"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/loopme/common/VideoUtils;->deleteInvalidVideoFiles(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loopme/common/VideoLoader;->mVideoUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/loopme/common/VideoUtils;->detectFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/common/VideoLoader;->mShortFileName:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mShortFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/loopme/common/VideoLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/loopme/common/VideoUtils;->checkFileNotExists(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Video file already exists"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mCallback:Lcom/loopme/common/VideoLoader$Callback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mCallback:Lcom/loopme/common/VideoLoader$Callback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/loopme/common/VideoLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/loopme/common/VideoUtils;->getParentDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/common/VideoLoader;->mShortFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loopme/common/VideoLoader$Callback;->onFullVideoLoaded(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/loopme/request/AdRequestParametersProvider;->getInstance()Lcom/loopme/request/AdRequestParametersProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/common/VideoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loopme/request/AdRequestParametersProvider;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    .line 70
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 71
    iget-boolean v0, p0, Lcom/loopme/common/VideoLoader;->mPartPreload:Z

    invoke-direct {p0, v0}, Lcom/loopme/common/VideoLoader;->preloadVideo(Z)V

    goto :goto_0

    .line 74
    :cond_2
    iget-boolean v0, p0, Lcom/loopme/common/VideoLoader;->mPartPreload:Z

    invoke-direct {p0, v0}, Lcom/loopme/common/VideoLoader;->preloadVideo(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/common/VideoLoader;->mStop:Z

    .line 272
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lcom/loopme/common/ExecutorHelper;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loopme/common/VideoLoader$4;

    invoke-direct {v1, p0}, Lcom/loopme/common/VideoLoader$4;-><init>(Lcom/loopme/common/VideoLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/loopme/common/VideoLoader;->mIsVideoFullyDownloaded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mVideoFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    sget-object v0, Lcom/loopme/common/VideoLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "remove bad file"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/loopme/common/VideoLoader;->mVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 287
    :cond_1
    return-void
.end method
