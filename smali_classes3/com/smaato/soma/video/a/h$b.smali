.class Lcom/smaato/soma/video/a/h$b;
.super Landroid/os/AsyncTask;
.source "VideoDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/video/a/h;
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
.field private final a:Lcom/smaato/soma/video/a/h$a;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/video/a/h$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/a/h$a;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/smaato/soma/video/a/h$b;->a:Lcom/smaato/soma/video/a/h$a;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smaato/soma/video/a/h$b;->b:Ljava/lang/ref/WeakReference;

    .line 99
    invoke-static {}, Lcom/smaato/soma/video/a/h;->a()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/video/a/h$b;->b:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    aget-object v1, p1, v4

    if-nez v1, :cond_2

    .line 106
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VideoDownloader task tried to execute null or empty url."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 111
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 152
    :cond_1
    :goto_0
    return-object v0

    .line 114
    :cond_2
    aget-object v3, p1, v4

    .line 118
    :try_start_0
    invoke-static {v3}, Lcom/smaato/soma/video/a/f;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 119
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 123
    const/16 v4, 0xc8

    if-lt v0, v4, :cond_3

    const/16 v4, 0x12c

    if-lt v0, v4, :cond_4

    .line 126
    :cond_3
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v3, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "VideoDownloader encountered unexpected statusCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 154
    invoke-static {v1}, Lcom/smaato/soma/video/a/g;->a(Ljava/io/Closeable;)V

    .line 155
    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 134
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 135
    const/high16 v4, 0x1900000

    if-le v0, v4, :cond_5

    .line 137
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v3, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "VideoDownloader encountered video larger than disk cap."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 154
    invoke-static {v1}, Lcom/smaato/soma/video/a/g;->a(Ljava/io/Closeable;)V

    .line 155
    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 145
    :cond_5
    :try_start_4
    invoke-static {v3, v1}, Lcom/smaato/soma/video/a/a;->a(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    .line 146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 154
    invoke-static {v1}, Lcom/smaato/soma/video/a/g;->a(Ljava/io/Closeable;)V

    .line 155
    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 148
    :goto_1
    :try_start_5
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v3, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "VideoDownloader task threw an internal exception."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 154
    invoke-static {v1}, Lcom/smaato/soma/video/a/g;->a(Ljava/io/Closeable;)V

    .line 155
    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 154
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    invoke-static {v1}, Lcom/smaato/soma/video/a/g;->a(Ljava/io/Closeable;)V

    .line 155
    if-eqz v2, :cond_6

    .line 156
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v0

    .line 154
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 147
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/smaato/soma/video/a/h$b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/smaato/soma/video/a/h$b;->onCancelled()V

    .line 176
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/smaato/soma/video/a/h;->a()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/video/a/h$b;->b:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 170
    if-nez p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/smaato/soma/video/a/h$b;->a:Lcom/smaato/soma/video/a/h$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smaato/soma/video/a/h$a;->a(Z)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/video/a/h$b;->a:Lcom/smaato/soma/video/a/h$a;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/smaato/soma/video/a/h$a;->a(Z)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smaato/soma/video/a/h$b;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 5

    .prologue
    .line 181
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/smaato/soma/video/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VideoDownloader task was cancelled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 186
    invoke-static {}, Lcom/smaato/soma/video/a/h;->a()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/video/a/h$b;->b:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/smaato/soma/video/a/h$b;->a:Lcom/smaato/soma/video/a/h$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smaato/soma/video/a/h$a;->a(Z)V

    .line 188
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/smaato/soma/video/a/h$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
