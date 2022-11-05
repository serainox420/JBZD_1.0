.class public Lcom/loopme/tasks/AdFetcher;
.super Ljava/lang/Object;
.source "AdFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/tasks/AdFetcher$Listener;
    }
.end annotation


# static fields
.field private static final AGENT_PROPERTY:Ljava/lang/String; = "http.agent"

.field private static final INVALID_APPKEY_MESS:Ljava/lang/String; = "Missing or invalid app key"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PAGE_NOT_FOUND:Ljava/lang/String; = "Page not found"

.field static TIMEOUT:I = 0x0

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private mFormat:I

.field private mListener:Lcom/loopme/tasks/AdFetcher$Listener;

.field private mLoopMeError:Lcom/loopme/common/LoopMeError;

.field private final mRequestUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/loopme/tasks/AdFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/tasks/AdFetcher;->LOG_TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0x4e20

    sput v0, Lcom/loopme/tasks/AdFetcher;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/loopme/tasks/AdFetcher$Listener;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/loopme/tasks/AdFetcher;->mRequestUrl:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/loopme/tasks/AdFetcher;->mListener:Lcom/loopme/tasks/AdFetcher$Listener;

    .line 48
    iput p3, p0, Lcom/loopme/tasks/AdFetcher;->mFormat:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/tasks/AdFetcher;Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/loopme/tasks/AdFetcher;->complete(Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    return-void
.end method

.method private complete(Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/loopme/tasks/AdFetcher;->mListener:Lcom/loopme/tasks/AdFetcher$Listener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/loopme/tasks/AdFetcher;->mListener:Lcom/loopme/tasks/AdFetcher$Listener;

    invoke-interface {v0, p1, p2}, Lcom/loopme/tasks/AdFetcher$Listener;->onComplete(Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    .line 76
    :cond_0
    return-void
.end method

.method private handleStatusCode(I)V
    .locals 3

    .prologue
    .line 127
    sparse-switch p1, :sswitch_data_0

    .line 136
    new-instance v0, Lcom/loopme/common/LoopMeError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loopme/tasks/AdFetcher;->mLoopMeError:Lcom/loopme/common/LoopMeError;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    :sswitch_0
    return-void

    .line 132
    :sswitch_1
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "No ads found"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loopme/tasks/AdFetcher;->mLoopMeError:Lcom/loopme/common/LoopMeError;

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcc -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 79
    .line 82
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    const-string v2, "User-Agent"

    const-string v3, "http.agent"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget v2, Lcom/loopme/tasks/AdFetcher;->TIMEOUT:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 86
    sget v2, Lcom/loopme/tasks/AdFetcher;->TIMEOUT:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 88
    iget v2, p0, Lcom/loopme/tasks/AdFetcher;->mFormat:I

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_1

    const-string v2, "interstitial"

    .line 90
    :goto_0
    sget-object v3, Lcom/loopme/tasks/AdFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " loads ad with URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 93
    sget-object v3, Lcom/loopme/tasks/AdFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, v2}, Lcom/loopme/tasks/AdFetcher;->handleStatusCode(I)V

    .line 96
    const/16 v3, 0x194

    if-ne v2, v3, :cond_3

    .line 97
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 98
    invoke-static {v2}, Lcom/loopme/common/Utils;->getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v3, "Missing or invalid app key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    new-instance v2, Lcom/loopme/common/LoopMeError;

    const-string v3, "Missing or invalid app key"

    invoke-direct {v2, v3}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/loopme/tasks/AdFetcher;->mLoopMeError:Lcom/loopme/common/LoopMeError;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :goto_1
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 123
    :cond_0
    :goto_2
    return-object v1

    .line 88
    :cond_1
    :try_start_2
    const-string v2, "banner"

    goto :goto_0

    .line 102
    :cond_2
    new-instance v2, Lcom/loopme/common/LoopMeError;

    const-string v3, "Page not found"

    invoke-direct {v2, v3}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/loopme/tasks/AdFetcher;->mLoopMeError:Lcom/loopme/common/LoopMeError;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 111
    :catch_0
    move-exception v2

    .line 112
    :goto_3
    :try_start_3
    new-instance v2, Lcom/loopme/common/LoopMeError;

    const-string v3, "Request timeout"

    invoke-direct {v2, v3}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/loopme/tasks/AdFetcher;->mLoopMeError:Lcom/loopme/common/LoopMeError;

    .line 113
    const-string v2, "timeout[ad_request]"

    const-string v3, "server"

    invoke-static {v2, v3}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    :goto_4
    move-object v1, v0

    .line 123
    goto :goto_2

    .line 107
    :cond_3
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 108
    :try_start_4
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    invoke-static {v2}, Lcom/loopme/common/Utils;->getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 118
    :cond_4
    if-eqz v0, :cond_7

    .line 119
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_4

    .line 114
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 115
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v3, "Error during establish connection"

    invoke-direct {v0, v3}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loopme/tasks/AdFetcher;->mLoopMeError:Lcom/loopme/common/LoopMeError;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 118
    if-eqz v2, :cond_6

    .line 119
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_4

    .line 118
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_5

    .line 119
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    .line 118
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 114
    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5

    .line 111
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    iget-object v0, p0, Lcom/loopme/tasks/AdFetcher;->mRequestUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/loopme/tasks/AdFetcher;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/loopme/tasks/AdFetcher;->mLoopMeError:Lcom/loopme/common/LoopMeError;

    invoke-direct {p0, v4, v0}, Lcom/loopme/tasks/AdFetcher;->complete(Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v1, Lcom/loopme/common/ResponseParser;

    new-instance v2, Lcom/loopme/tasks/AdFetcher$1;

    invoke-direct {v2, p0}, Lcom/loopme/tasks/AdFetcher$1;-><init>(Lcom/loopme/tasks/AdFetcher;)V

    iget v3, p0, Lcom/loopme/tasks/AdFetcher;->mFormat:I

    invoke-direct {v1, v2, v3}, Lcom/loopme/common/ResponseParser;-><init>(Lcom/loopme/common/ResponseParser$Listener;I)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/loopme/common/ResponseParser;->getAdParams(Ljava/lang/String;)Lcom/loopme/common/AdParams;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, v0, v4}, Lcom/loopme/tasks/AdFetcher;->complete(Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    goto :goto_0
.end method
