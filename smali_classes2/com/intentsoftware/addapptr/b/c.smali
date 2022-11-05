.class public Lcom/intentsoftware/addapptr/b/c;
.super Landroid/os/AsyncTask;
.source "HtmlDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static userAgent:Ljava/lang/String;


# instance fields
.field private final listener:Lcom/intentsoftware/addapptr/b/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/intentsoftware/addapptr/b/c$a;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p3, p0, Lcom/intentsoftware/addapptr/b/c;->listener:Lcom/intentsoftware/addapptr/b/c$a;

    .line 26
    sget-object v0, Lcom/intentsoftware/addapptr/b/c;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/intentsoftware/addapptr/b/c;->userAgent:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 31
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-void
.end method

.method private isRedirecting(Ljava/net/HttpURLConnection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 71
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 72
    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12f

    if-ne v0, v1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/b/c;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 40
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    const-string v2, "User-Agent"

    sget-object v3, Lcom/intentsoftware/addapptr/b/c;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v0

    .line 45
    :goto_0
    :try_start_2
    invoke-direct {p0, v2}, Lcom/intentsoftware/addapptr/b/c;->isRedirecting(Ljava/net/HttpURLConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/b/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "Location"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v3, "Set-Cookie"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    :try_start_3
    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "User-Agent"

    sget-object v3, Lcom/intentsoftware/addapptr/b/c;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v0

    .line 51
    goto :goto_0

    .line 53
    :cond_0
    :try_start_4
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/b/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 54
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/m;->stringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 61
    :goto_1
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 66
    :cond_1
    :goto_2
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 57
    :goto_3
    const/4 v3, 0x6

    :try_start_5
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when downloading HTML response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 61
    :cond_2
    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_2

    .line 61
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_3

    .line 62
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 61
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 56
    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/b/c;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/b/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/c;->listener:Lcom/intentsoftware/addapptr/b/c$a;

    invoke-interface {v0, p1}, Lcom/intentsoftware/addapptr/b/c$a;->onHtmlDownloaded(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/c;->listener:Lcom/intentsoftware/addapptr/b/c$a;

    invoke-interface {v0}, Lcom/intentsoftware/addapptr/b/c$a;->onHtmlDownloadingError()V

    goto :goto_0
.end method
