.class Lcom/adcolony/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ADCDownload$Listener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "WebServices.download"

    new-instance v1, Lcom/adcolony/sdk/l$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/l$1;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 29
    const-string v0, "WebServices.get"

    new-instance v1, Lcom/adcolony/sdk/l$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/l$2;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 37
    const-string v0, "WebServices.post"

    new-instance v1, Lcom/adcolony/sdk/l$3;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/l$3;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 44
    return-void
.end method

.method public on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/ADCDownload;",
            "Lcom/adcolony/sdk/z;",
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
    .line 55
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 56
    const-string v0, "url"

    iget-object v1, p1, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    const-string v0, "success"

    iget-boolean v1, p1, Lcom/adcolony/sdk/ADCDownload;->e:Z

    invoke-static {v2, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 58
    const-string v0, "status"

    iget v1, p1, Lcom/adcolony/sdk/ADCDownload;->g:I

    invoke-static {v2, v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 59
    const-string v0, "body"

    iget-object v1, p1, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    const-string v0, "size"

    iget v1, p1, Lcom/adcolony/sdk/ADCDownload;->f:I

    invoke-static {v2, v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 63
    if-eqz p3, :cond_2

    .line 65
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 66
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "headers"

    invoke-static {v2, v0, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 79
    :cond_2
    invoke-virtual {p2, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 80
    iget-object v0, p1, Lcom/adcolony/sdk/ADCDownload;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 81
    return-void
.end method
