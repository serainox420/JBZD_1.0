.class public Lcom/apprupt/sdk/URLRequest$URLResponse;
.super Ljava/lang/Object;
.source "URLRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/URLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "URLResponse"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/Exception;

.field final synthetic f:Lcom/apprupt/sdk/URLRequest;


# direct methods
.method private constructor <init>(Lcom/apprupt/sdk/URLRequest;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apprupt/sdk/URLRequest$URLResponse;-><init>(Lcom/apprupt/sdk/URLRequest;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/URLRequest;ILjava/lang/String;Lcom/apprupt/sdk/URLRequest$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/apprupt/sdk/URLRequest$URLResponse;-><init>(Lcom/apprupt/sdk/URLRequest;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/apprupt/sdk/URLRequest;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    iput-object p1, p0, Lcom/apprupt/sdk/URLRequest$URLResponse;->f:Lcom/apprupt/sdk/URLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    .line 84
    if-eqz p4, :cond_0

    .line 85
    instance-of v0, p4, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 86
    const/16 p2, -0x3e9

    .line 87
    const-string v0, "Socket timeout"

    .line 99
    :cond_0
    :goto_0
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_5

    .line 101
    if-nez v0, :cond_4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server respond with code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 106
    :goto_1
    iput-object p3, p0, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    .line 107
    iput p2, p0, Lcom/apprupt/sdk/URLRequest$URLResponse;->a:I

    .line 108
    iput-object v0, p0, Lcom/apprupt/sdk/URLRequest$URLResponse;->b:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/apprupt/sdk/URLRequest$URLResponse;->d:Z

    .line 110
    iput-object p4, p0, Lcom/apprupt/sdk/URLRequest$URLResponse;->e:Ljava/lang/Exception;

    .line 111
    invoke-static {}, Lcom/apprupt/sdk/URLRequest;->d()Lcom/apprupt/sdk/Logger$log;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "URLResponse"

    aput-object v6, v5, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const/4 v0, 0x4

    aput-object p4, v5, v0

    invoke-interface {v4, v5}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 112
    return-void

    .line 88
    :cond_1
    instance-of v0, p4, Ljava/net/ConnectException;

    if-eqz v0, :cond_2

    .line 89
    const/16 p2, -0x3ea

    .line 90
    const-string v0, "Connect error"

    goto :goto_0

    .line 91
    :cond_2
    instance-of v0, p4, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_3

    .line 92
    const/16 p2, -0x3eb

    .line 93
    const-string v0, "No route to host"

    goto :goto_0

    .line 95
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while trying to connect ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method private constructor <init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 76
    const/16 v0, -0x44c

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/apprupt/sdk/URLRequest$URLResponse;-><init>(Lcom/apprupt/sdk/URLRequest;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/Exception;Lcom/apprupt/sdk/URLRequest$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/URLRequest$URLResponse;-><init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/Exception;)V

    return-void
.end method
