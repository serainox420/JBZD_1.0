.class public Lcom/openx/view/video/network/DownloadTask;
.super Lcom/openx/core/network/BaseNetworkTask;
.source "DownloadTask.java"


# instance fields
.field private adVideoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;

.field private connectionURL:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p2}, Lcom/openx/core/network/BaseNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 26
    iput-object v0, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    .line 27
    iput-object v0, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    .line 29
    iput-object v0, p0, Lcom/openx/view/video/network/DownloadTask;->connectionURL:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/openx/view/video/network/DownloadTask;->file:Ljava/io/File;

    .line 36
    iput-object p2, p0, Lcom/openx/view/video/network/DownloadTask;->adVideoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;

    .line 37
    iput-object p1, p0, Lcom/openx/view/video/network/DownloadTask;->context:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public customParser(ILjava/net/HttpURLConnection;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 12

    .prologue
    .line 54
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    .line 56
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    .line 58
    new-instance v1, Lcom/openx/errors/ServerWrongStatusCode;

    invoke-direct {v1, p1}, Lcom/openx/errors/ServerWrongStatusCode;-><init>(I)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/openx/view/video/network/DownloadTask;->connectionURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/video/network/DownloadTask;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/openx/view/video/network/DownloadTask;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/openx/view/video/network/DownloadTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/openx/view/video/network/DownloadTask;->file:Ljava/io/File;

    .line 77
    iget-object v2, p0, Lcom/openx/view/video/network/DownloadTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/openx/view/video/network/DownloadTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 83
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 84
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    .line 86
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/openx/view/video/network/DownloadTask;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    .line 88
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 89
    const-wide/16 v2, 0x0

    .line 91
    :goto_2
    iget-object v5, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    .line 95
    invoke-virtual {p0}, Lcom/openx/view/video/network/DownloadTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 97
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 133
    :cond_5
    :goto_3
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 69
    new-instance v2, Lcom/openx/errors/UnknownError;

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v2}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 104
    :cond_6
    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 106
    if-lez v4, :cond_7

    .line 108
    const/4 v6, 0x1

    :try_start_3
    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v2

    int-to-long v10, v4

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/openx/view/video/network/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 110
    :cond_7
    iget-object v6, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 114
    :catch_1
    move-exception v1

    .line 116
    :try_start_4
    new-instance v2, Lcom/openx/errors/UnknownError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v2}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    :try_start_5
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 125
    :cond_8
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 133
    :cond_9
    :goto_4
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 124
    :cond_a
    :try_start_6
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 125
    :cond_b
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 133
    :cond_c
    :goto_5
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 122
    :catchall_0
    move-exception v0

    .line 124
    :try_start_7
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 125
    :cond_d
    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/openx/view/video/network/DownloadTask;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 133
    :cond_e
    :goto_6
    if-eqz p2, :cond_f

    .line 135
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    throw v0

    .line 127
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

    goto/16 :goto_3
.end method

.method protected varargs doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    .line 44
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/openx/view/video/network/DownloadTask;->connectionURL:Ljava/lang/String;

    .line 46
    invoke-super {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-virtual {p0, p1}, Lcom/openx/view/video/network/DownloadTask;->doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/openx/view/video/network/DownloadTask;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/openx/view/video/network/DownloadTask;->adVideoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;

    invoke-interface {v0}, Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;->preloaded()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/openx/view/video/network/DownloadTask;->adVideoPreloadedListener:Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;

    invoke-interface {v0}, Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;->preloadedError()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {p0, p1}, Lcom/openx/view/video/network/DownloadTask;->onPostExecute(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/openx/core/network/BaseNetworkTask;->onPreExecute()V

    .line 147
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->onProgressUpdate([Ljava/lang/Integer;)V

    .line 153
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/openx/view/video/network/DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
