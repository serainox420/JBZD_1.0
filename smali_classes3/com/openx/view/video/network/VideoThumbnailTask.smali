.class public Lcom/openx/view/video/network/VideoThumbnailTask;
.super Lcom/openx/core/network/BaseNetworkTask;
.source "VideoThumbnailTask.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/video/network/VideoThumbnailTask$1;,
        Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;,
        Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private connectionURL:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field private gotThumbnail:Z

.field private imageView:Landroid/widget/ImageView;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private thumbnailListener:Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p3}, Lcom/openx/core/network/BaseNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 29
    const-string v0, "NewVideoThumbnailTask"

    iput-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->TAG:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    .line 41
    iput-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    .line 43
    iput-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->connectionURL:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->imageView:Landroid/widget/ImageView;

    .line 57
    iput-object p1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->context:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->thumbnailListener:Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/openx/view/video/network/VideoThumbnailTask;)Ljava/io/File;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/view/video/network/VideoThumbnailTask;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/openx/view/video/network/VideoThumbnailTask;)Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->thumbnailListener:Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;

    return-object v0
.end method


# virtual methods
.method public customParser(ILjava/net/HttpURLConnection;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 8

    .prologue
    .line 86
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    .line 88
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    .line 90
    new-instance v1, Lcom/openx/errors/ServerWrongStatusCode;

    invoke-direct {v1, p1}, Lcom/openx/errors/ServerWrongStatusCode;-><init>(I)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->connectionURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    .line 109
    iget-object v2, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    const-string v2, "NewVideoThumbnailTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 118
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    .line 120
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    .line 122
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 123
    const-wide/16 v2, 0x0

    .line 125
    :goto_2
    iget-object v4, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    const-wide/32 v6, 0x927c0

    cmp-long v5, v2, v6

    if-gez v5, :cond_9

    .line 128
    const-string v5, "NewVideoThumbnailTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/openx/view/video/network/VideoThumbnailTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 133
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const-string v1, "NewVideoThumbnailTask"

    const-string v2, "file.exists and deleting #######"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 139
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :try_start_2
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 169
    :cond_5
    :goto_3
    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 101
    new-instance v2, Lcom/openx/errors/UnknownError;

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v2}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 142
    :cond_6
    int-to-long v6, v4

    add-long/2addr v2, v6

    .line 144
    :try_start_3
    iget-object v5, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 149
    :catch_1
    move-exception v1

    .line 151
    :try_start_4
    new-instance v2, Lcom/openx/errors/UnknownError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, v2}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    :try_start_5
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 160
    :cond_7
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 169
    :cond_8
    :goto_4
    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 159
    :cond_9
    :try_start_6
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 160
    :cond_a
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 169
    :cond_b
    :goto_5
    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 157
    :catchall_0
    move-exception v0

    .line 159
    :try_start_7
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 160
    :cond_c
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 169
    :cond_d
    :goto_6
    if-eqz p2, :cond_e

    .line 171
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw v0

    .line 162
    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_3
.end method

.method protected varargs doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/io/File;

    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    .line 71
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    .line 80
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    .line 75
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->connectionURL:Ljava/lang/String;

    .line 77
    invoke-super {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-virtual {p0, p1}, Lcom/openx/view/video/network/VideoThumbnailTask;->doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 4

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->onPostExecute(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V

    .line 183
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 191
    const-wide/32 v2, 0x1e8480

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 195
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->thumbnailListener:Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;->thumbnailCreated(Ljava/io/File;)V

    .line 199
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {p0, p1}, Lcom/openx/view/video/network/VideoThumbnailTask;->onPostExecute(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-super {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->onProgressUpdate([Ljava/lang/Integer;)V

    .line 217
    const-string v0, "NewVideoThumbnailTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x927c0

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->gotThumbnail:Z

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask;->gotThumbnail:Z

    .line 224
    const-string v0, "NewVideoThumbnailTask"

    const-string v1, "creating Thumbnail task"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;-><init>(Lcom/openx/view/video/network/VideoThumbnailTask;Lcom/openx/view/video/network/VideoThumbnailTask$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/openx/view/video/network/VideoThumbnailTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
