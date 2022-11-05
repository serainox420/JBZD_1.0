.class Lcom/mopub/mobileads/VideoDownloader$b;
.super Landroid/os/AsyncTask;
.source "VideoDownloader.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VideoDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/mobileads/VideoDownloader$a;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/VideoDownloader$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VideoDownloader$a;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/mopub/mobileads/VideoDownloader$b;->a:Lcom/mopub/mobileads/VideoDownloader$a;

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$b;->b:Ljava/lang/ref/WeakReference;

    .line 98
    invoke-static {}, Lcom/mopub/mobileads/VideoDownloader;->a()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VideoDownloader$b;->b:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x1900000

    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_2

    .line 104
    :cond_0
    const-string v0, "VideoDownloader task tried to execute null or empty url."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 105
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 143
    :cond_1
    :goto_0
    return-object v0

    .line 108
    :cond_2
    aget-object v0, p1, v1

    .line 112
    :try_start_0
    invoke-static {v0}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 113
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 117
    const/16 v4, 0xc8

    if-lt v2, v4, :cond_3

    const/16 v4, 0x12c

    if-lt v2, v4, :cond_4

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoDownloader encountered unexpected statusCode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 141
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 125
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 126
    if-le v2, v5, :cond_5

    .line 127
    const-string v0, "VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum)."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const/high16 v5, 0x1900000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 141
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 135
    :cond_5
    :try_start_4
    invoke-static {v0, v1}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    .line 136
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 141
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 138
    :goto_1
    :try_start_5
    const-string v3, "VideoDownloader task threw an internal exception."

    invoke-static {v3, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v0

    .line 141
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 141
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_2
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 142
    if-eqz v3, :cond_6

    .line 143
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v0

    .line 141
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 137
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/mopub/mobileads/VideoDownloader$b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/mopub/mobileads/VideoDownloader$b;->onCancelled()V

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/VideoDownloader;->a()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VideoDownloader$b;->b:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 157
    if-nez p1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$b;->a:Lcom/mopub/mobileads/VideoDownloader$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VideoDownloader$a;->onComplete(Z)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$b;->a:Lcom/mopub/mobileads/VideoDownloader$a;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VideoDownloader$a;->onComplete(Z)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VideoDownloader$b;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "VideoDownloader task was cancelled."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/mopub/mobileads/VideoDownloader;->a()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VideoDownloader$b;->b:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$b;->a:Lcom/mopub/mobileads/VideoDownloader$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VideoDownloader$a;->onComplete(Z)V

    .line 170
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VideoDownloader$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
