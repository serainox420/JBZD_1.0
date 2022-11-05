.class public Lcom/intentsoftware/addapptr/b/b;
.super Ljava/lang/Thread;
.source "GetRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/b/b$a;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x1388

.field private static final SOCKET_TIMEOUT:I = 0x2710


# instance fields
.field private connection:Ljava/net/HttpURLConnection;

.field private final listener:Lcom/intentsoftware/addapptr/b/b$a;

.field private final params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/intentsoftware/addapptr/b/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/intentsoftware/addapptr/b/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/intentsoftware/addapptr/b/b;->url:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/intentsoftware/addapptr/b/b;->listener:Lcom/intentsoftware/addapptr/b/b$a;

    .line 33
    iput-object p2, p0, Lcom/intentsoftware/addapptr/b/b;->params:Ljava/util/HashMap;

    .line 34
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/b/b;->start()V

    .line 35
    return-void
.end method

.method private createUrl(Ljava/util/HashMap;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/b;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 83
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private sendRequest(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 58
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/b/b;->createUrl(Ljava/util/HashMap;)Ljava/net/URL;

    move-result-object v0

    .line 59
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/intentsoftware/addapptr/b/b;->connection:Ljava/net/HttpURLConnection;

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/b;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/b;->connection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 65
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/b;->connection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 67
    const-string v0, ""

    .line 68
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/b/b;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/b;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/m;->stringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/intentsoftware/addapptr/b/b;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/b/b;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cancel GetRequest, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/intentsoftware/addapptr/b/b;->params:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/intentsoftware/addapptr/b/b;->sendRequest(Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/intentsoftware/addapptr/b/b;->listener:Lcom/intentsoftware/addapptr/b/b$a;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/b/b;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    if-nez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b/b;->listener:Lcom/intentsoftware/addapptr/b/b$a;

    invoke-interface {v0}, Lcom/intentsoftware/addapptr/b/b$a;->onGetRequestError()V

    .line 55
    :cond_0
    :goto_1
    return-void

    .line 42
    :catch_0
    move-exception v1

    .line 43
    iget-object v2, p0, Lcom/intentsoftware/addapptr/b/b;->connection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/intentsoftware/addapptr/b/b;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/intentsoftware/addapptr/b/b;->listener:Lcom/intentsoftware/addapptr/b/b$a;

    invoke-interface {v1, v0}, Lcom/intentsoftware/addapptr/b/b$a;->onGetRequestResponse(Ljava/lang/String;)V

    goto :goto_1
.end method
