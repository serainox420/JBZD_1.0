.class Lcom/adcolony/sdk/ADCDownload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/ADCDownload$Listener;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:I

.field g:I

.field h:Ljava/util/concurrent/ExecutorService;

.field private i:Ljava/net/HttpURLConnection;

.field private j:Ljava/io/InputStream;

.field private k:Lorg/json/JSONObject;

.field private l:Lcom/adcolony/sdk/z;

.field private m:Lcom/adcolony/sdk/ADCDownload$Listener;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/ADCDownload$Listener;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->c:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->d:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->h:Ljava/util/concurrent/ExecutorService;

    .line 57
    iput-object p1, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    .line 58
    iput-object p2, p0, Lcom/adcolony/sdk/ADCDownload;->m:Lcom/adcolony/sdk/ADCDownload$Listener;

    .line 60
    invoke-virtual {p0}, Lcom/adcolony/sdk/ADCDownload;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/ADCDownload;->e:Z

    .line 69
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->o:Ljava/util/Map;

    invoke-interface {p2, p0, p1, v0}, Lcom/adcolony/sdk/ADCDownload$Listener;->on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "url"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->c:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "content"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->n:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "info"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->k:Lorg/json/JSONObject;

    .line 90
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "content_type"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->d:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "encoding"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "encrypt"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 93
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "no_redirect"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 95
    const-string v3, "file://"

    .line 96
    iget-object v4, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    const-string v0, "file:///android_asset/"

    .line 99
    iget-object v4, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    sget-object v3, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v3, :cond_0

    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 105
    :cond_0
    sget-object v3, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->j:Ljava/io/InputStream;

    :goto_1
    move v0, v2

    .line 111
    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->j:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 123
    sget-object v3, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v4, "MalformedURLException: "

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 124
    iput-boolean v2, p0, Lcom/adcolony/sdk/ADCDownload;->e:Z

    .line 125
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->m:Lcom/adcolony/sdk/ADCDownload$Listener;

    iget-object v2, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    invoke-interface {v0, p0, v2, v5}, Lcom/adcolony/sdk/ADCDownload$Listener;->on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V

    :goto_2
    move v0, v1

    .line 134
    goto :goto_0

    .line 115
    :cond_2
    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    :try_start_1
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 116
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 117
    goto :goto_0

    :cond_3
    move v0, v1

    .line 115
    goto :goto_3

    .line 127
    :catch_1
    move-exception v0

    .line 129
    sget-object v2, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v3, "Download of "

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 130
    iput-boolean v1, p0, Lcom/adcolony/sdk/ADCDownload;->e:Z

    .line 131
    const/16 v0, 0x194

    iput v0, p0, Lcom/adcolony/sdk/ADCDownload;->g:I

    .line 132
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->m:Lcom/adcolony/sdk/ADCDownload$Listener;

    iget-object v2, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    invoke-interface {v0, p0, v2, v5}, Lcom/adcolony/sdk/ADCDownload$Listener;->on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V

    goto :goto_2
.end method

.method b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/16 v1, 0x400

    .line 275
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 279
    if-gt v0, v7, :cond_0

    move v0, v1

    .line 283
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/adcolony/sdk/ADCDownload;->j:Ljava/io/InputStream;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 286
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v0

    :goto_0
    if-eq v0, v6, :cond_1

    .line 288
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ADCDownload;->f:I

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 318
    iput-boolean v7, p0, Lcom/adcolony/sdk/ADCDownload;->e:Z

    .line 319
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->m:Lcom/adcolony/sdk/ADCDownload$Listener;

    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/adcolony/sdk/ADCDownload$Listener;->on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V

    .line 320
    return-void

    .line 298
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/adcolony/sdk/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 301
    iput v5, p0, Lcom/adcolony/sdk/ADCDownload;->f:I

    .line 303
    new-array v3, v1, [B

    .line 304
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->j:Ljava/io/InputStream;

    invoke-virtual {v0, v3, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 306
    :goto_2
    if-eq v0, v6, :cond_3

    .line 308
    iget v4, p0, Lcom/adcolony/sdk/ADCDownload;->f:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/adcolony/sdk/ADCDownload;->f:I

    .line 309
    invoke-virtual {v2, v3, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 310
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->j:Ljava/io/InputStream;

    invoke-virtual {v0, v3, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_2

    .line 313
    :cond_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 314
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_1
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v0, 0x400

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->j:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/adcolony/sdk/ADCDownload;->b()V

    .line 268
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    const-string v2, "WebServices.get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    const-string v2, "WebServices.download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/ADCDownload;->g:I

    .line 155
    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 156
    iput v1, p0, Lcom/adcolony/sdk/ADCDownload;->f:I

    .line 157
    if-ne v1, v6, :cond_9

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 163
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    iget-object v3, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/adcolony/sdk/ADCDownload;->o:Ljava/util/Map;

    .line 167
    iget-object v3, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v3, v3, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    const-string v4, "WebServices.get"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 249
    :catch_0
    move-exception v0

    .line 252
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "MalformedURLException: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 177
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ADCDownload;->f:I

    .line 196
    :goto_3
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ADCDownload;->e:Z

    .line 199
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->m:Lcom/adcolony/sdk/ADCDownload$Listener;

    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v2, p0, Lcom/adcolony/sdk/ADCDownload;->o:Ljava/util/Map;

    invoke-interface {v0, p0, v1, v2}, Lcom/adcolony/sdk/ADCDownload$Listener;->on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 255
    :catch_1
    move-exception v0

    .line 257
    const/16 v1, 0x194

    iput v1, p0, Lcom/adcolony/sdk/ADCDownload;->g:I

    .line 258
    sget-object v1, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v2, "Download of "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 266
    :cond_3
    :goto_4
    iput-boolean v7, p0, Lcom/adcolony/sdk/ADCDownload;->e:Z

    .line 267
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->m:Lcom/adcolony/sdk/ADCDownload$Listener;

    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v2, p0, Lcom/adcolony/sdk/ADCDownload;->o:Ljava/util/Map;

    invoke-interface {v0, p0, v1, v2}, Lcom/adcolony/sdk/ADCDownload$Listener;->on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 185
    :cond_4
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 186
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/adcolony/sdk/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 189
    :goto_5
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 191
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 260
    :catch_2
    move-exception v0

    .line 262
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "Out of memory error - disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 263
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    invoke-virtual {v0, v5}, Lcom/adcolony/sdk/h;->b(Z)V

    goto :goto_4

    .line 193
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 209
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 210
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/adcolony/sdk/ADCDownload;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_7
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 219
    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 223
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ADCDownload;->g:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 225
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    iget-object v3, p0, Lcom/adcolony/sdk/ADCDownload;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/adcolony/sdk/ADCDownload;->o:Ljava/util/Map;

    .line 232
    :goto_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 237
    :cond_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 238
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ADCDownload;->f:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ADCDownload;->e:Z

    .line 244
    iget-object v0, p0, Lcom/adcolony/sdk/ADCDownload;->m:Lcom/adcolony/sdk/ADCDownload$Listener;

    iget-object v1, p0, Lcom/adcolony/sdk/ADCDownload;->l:Lcom/adcolony/sdk/z;

    iget-object v2, p0, Lcom/adcolony/sdk/ADCDownload;->o:Ljava/util/Map;

    invoke-interface {v0, p0, v1, v2}, Lcom/adcolony/sdk/ADCDownload$Listener;->on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method
