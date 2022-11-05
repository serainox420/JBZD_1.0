.class final Lcom/millennialmedia/internal/utils/IOUtils$1;
.super Ljava/lang/Object;
.source "IOUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->c:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->d:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 194
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->a:Ljava/io/File;

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    const-string v0, "_mm_"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->a:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v6, v0

    .line 199
    :goto_0
    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->c:Ljava/lang/Integer;

    new-instance v5, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;

    invoke-direct {v5, v6}, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;-><init>(Ljava/io/File;)V

    .line 200
    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 202
    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->d:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;->onDownloadSucceeded(Ljava/io/File;)V

    .line 212
    :goto_1
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->d:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Error creating file"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;->onDownloadFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {}, Lcom/millennialmedia/internal/utils/IOUtils;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred downloading file from url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->d:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;->onDownloadFailed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v6, v0

    goto :goto_0
.end method
