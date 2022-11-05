.class public Lcom/inmobi/commons/network/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/util/Map;
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

.field d:Lcom/inmobi/commons/network/ErrorCode;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/network/ErrorCode;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/inmobi/commons/network/Response;->a:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/commons/network/Response;->b:I

    .line 17
    iput-object v1, p0, Lcom/inmobi/commons/network/Response;->c:Ljava/util/Map;

    .line 21
    iput-object p1, p0, Lcom/inmobi/commons/network/Response;->d:Lcom/inmobi/commons/network/ErrorCode;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/inmobi/commons/network/Response;->a:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/commons/network/Response;->b:I

    .line 17
    iput-object v1, p0, Lcom/inmobi/commons/network/Response;->c:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/inmobi/commons/network/Response;->a:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/inmobi/commons/network/Response;->b:I

    .line 27
    iput-object p3, p0, Lcom/inmobi/commons/network/Response;->c:Ljava/util/Map;

    .line 28
    return-void
.end method


# virtual methods
.method public getError()Lcom/inmobi/commons/network/ErrorCode;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inmobi/commons/network/Response;->d:Lcom/inmobi/commons/network/ErrorCode;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inmobi/commons/network/Response;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/inmobi/commons/network/Response;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/inmobi/commons/network/Response;->b:I

    return v0
.end method
