.class public Lcom/smaato/soma/internal/requests/c;
.super Ljava/lang/Object;
.source "HttpConnector.java"

# interfaces
.implements Lcom/smaato/soma/internal/requests/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/internal/requests/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/smaato/soma/internal/c/l;

.field private c:Lcom/smaato/soma/internal/c/b;

.field private d:Lcom/smaato/soma/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "HTTPConnector"

    sput-object v0, Lcom/smaato/soma/internal/requests/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/HttpConnectorInstantiationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/smaato/soma/internal/requests/c;->b:Lcom/smaato/soma/internal/c/l;

    .line 46
    iput-object v0, p0, Lcom/smaato/soma/internal/requests/c;->c:Lcom/smaato/soma/internal/c/b;

    .line 58
    :try_start_0
    invoke-static {}, Lcom/smaato/soma/internal/a;->a()Lcom/smaato/soma/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/a;->c()Lcom/smaato/soma/internal/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/c;->b:Lcom/smaato/soma/internal/c/l;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    throw v0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Lcom/smaato/soma/exception/HttpConnectorInstantiationException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/HttpConnectorInstantiationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/smaato/soma/internal/requests/c;)Lcom/smaato/soma/internal/c/b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/c;->c:Lcom/smaato/soma/internal/c/b;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/smaato/soma/internal/requests/c;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/URL;)Lcom/smaato/soma/p;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/LoadingNewBannerFailedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 73
    :try_start_0
    new-instance v1, Lcom/smaato/soma/internal/requests/c$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/internal/requests/c$1;-><init>(Lcom/smaato/soma/internal/requests/c;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 79
    :try_start_1
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/requests/f;->d()Ljava/net/Proxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Lcom/smaato/soma/exception/ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 85
    :goto_0
    :try_start_2
    const-string v1, "GET"

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 86
    const/16 v1, 0x1388

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 87
    const/16 v1, 0x1388

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 88
    const-string v1, "User-Agent"

    .line 89
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lcom/smaato/soma/internal/requests/f;->c()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v3, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 92
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Lcom/smaato/soma/exception/ParserException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 94
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "json"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/c;->b:Lcom/smaato/soma/internal/c/l;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v4, v5}, Lcom/smaato/soma/internal/c/l;->a(Ljava/io/InputStream;Lcom/smaato/soma/internal/d/c;Z)Lcom/smaato/soma/p;
    :try_end_3
    .catch Lcom/smaato/soma/exception/ParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 109
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 111
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v1

    .line 117
    :cond_0
    :goto_2
    iput-object v2, p0, Lcom/smaato/soma/internal/requests/c;->d:Lcom/smaato/soma/p;

    .line 118
    invoke-static {}, Lcom/smaato/soma/measurements/a;->a()Lcom/smaato/soma/measurements/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/measurements/a;->c()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 119
    return-object v2

    .line 83
    :cond_1
    :try_start_5
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/requests/f;->d()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Lcom/smaato/soma/exception/ParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v1

    goto :goto_0

    .line 97
    :cond_2
    :try_start_6
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/c;->b:Lcom/smaato/soma/internal/c/l;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/smaato/soma/internal/c/l;->a(Ljava/io/InputStream;Lcom/smaato/soma/internal/d/c;Z)Lcom/smaato/soma/p;
    :try_end_6
    .catch Lcom/smaato/soma/exception/ParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    goto :goto_1

    .line 100
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v4, v2

    move-object v5, v2

    .line 101
    :goto_3
    :try_start_7
    new-instance v2, Lcom/smaato/soma/internal/b;

    invoke-direct {v2}, Lcom/smaato/soma/internal/b;-><init>()V

    .line 102
    move-object v0, v2

    check-cast v0, Lcom/smaato/soma/internal/b;

    move-object v1, v0

    iget-object v6, v3, Lcom/smaato/soma/exception/ParserException;->code:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {v1, v6}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 103
    move-object v0, v2

    check-cast v0, Lcom/smaato/soma/internal/b;

    move-object v1, v0

    iget-object v3, v3, Lcom/smaato/soma/exception/ParserException;->message:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/smaato/soma/internal/b;->g(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 109
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 111
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 120
    :catch_1
    move-exception v1

    .line 121
    throw v1

    .line 104
    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    .line 105
    :goto_4
    :try_start_9
    new-instance v2, Lcom/smaato/soma/internal/b;

    invoke-direct {v2}, Lcom/smaato/soma/internal/b;-><init>()V

    .line 106
    move-object v0, v2

    check-cast v0, Lcom/smaato/soma/internal/b;

    move-object v1, v0

    sget-object v5, Lcom/smaato/soma/ErrorCode;->NO_CONNECTION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {v1, v5}, Lcom/smaato/soma/internal/b;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 107
    move-object v0, v2

    check-cast v0, Lcom/smaato/soma/internal/b;

    move-object v1, v0

    const-string v5, "Can\'t connect to the Server for ad fetching."

    invoke-virtual {v1, v5}, Lcom/smaato/soma/internal/b;->g(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 109
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 111
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 122
    :catch_3
    move-exception v1

    .line 123
    new-instance v2, Lcom/smaato/soma/exception/LoadingNewBannerFailedException;

    invoke-direct {v2, v1}, Lcom/smaato/soma/exception/LoadingNewBannerFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 109
    :catchall_0
    move-exception v1

    move-object v3, v2

    :goto_5
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 111
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    :cond_3
    throw v1
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 109
    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v4

    move-object v3, v5

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_5

    .line 104
    :catch_4
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    .line 100
    :catch_6
    move-exception v1

    move-object v4, v2

    move-object v5, v3

    move-object v3, v1

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v4, v2

    move-object v5, v3

    move-object v3, v1

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto/16 :goto_2
.end method

.method public a(Lcom/smaato/soma/internal/c/b;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/c;->c:Lcom/smaato/soma/internal/c/b;

    .line 166
    return-void
.end method

.method public final b(Ljava/net/URL;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerHttpRequestFailed;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 136
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/c$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/c$2;-><init>(Lcom/smaato/soma/internal/requests/c;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 138
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/internal/requests/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load async: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    new-instance v0, Lcom/smaato/soma/internal/requests/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/internal/requests/c$a;-><init>(Lcom/smaato/soma/internal/requests/c;Lcom/smaato/soma/internal/requests/c$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/URL;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/c$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :cond_0
    return v5

    .line 148
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 149
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v2, Lcom/smaato/soma/internal/requests/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ex@asyncLoadNewBanner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 149
    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 153
    new-instance v2, Lcom/smaato/soma/exception/BannerHttpRequestFailed;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/smaato/soma/exception/BannerHttpRequestFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 155
    new-instance v2, Lcom/smaato/soma/exception/BannerHttpRequestFailed;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/smaato/soma/exception/BannerHttpRequestFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method
