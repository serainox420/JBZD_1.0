.class final Lcom/revmob/internal/k;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;


# instance fields
.field private a:Ljava/net/URI;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/revmob/internal/k;->a:Ljava/net/URI;

    return-object v0
.end method

.method public final getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/revmob/internal/k;->a:Ljava/net/URI;

    iget-object v0, p0, Lcom/revmob/internal/k;->a:Ljava/net/URI;
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/revmob/internal/w;->b:Lcom/revmob/internal/w;

    const-string v3, "getLocationURI"

    invoke-static {v1, v0, v2, v0, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/ProtocolException;->printStackTrace()V

    goto :goto_0
.end method

.method public final isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 5

    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/revmob/internal/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/revmob/internal/k;->a:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    sget-object v3, Lcom/revmob/internal/w;->b:Lcom/revmob/internal/w;

    const-string v4, "isRedirectRequested"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    goto :goto_0
.end method
