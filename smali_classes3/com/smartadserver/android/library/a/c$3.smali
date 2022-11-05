.class Lcom/smartadserver/android/library/a/c$3;
.super Ljava/lang/Object;
.source "SASHttpRequestManager.java"

# interfaces
.implements Lcom/smartadserver/android/library/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/a/c;->a(Lorg/apache/http/client/methods/HttpGet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/http/client/methods/HttpGet;

.field final synthetic b:Z

.field final synthetic c:Lcom/smartadserver/android/library/a/c;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/a/c;Lorg/apache/http/client/methods/HttpGet;Z)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/smartadserver/android/library/a/c$3;->c:Lcom/smartadserver/android/library/a/c;

    iput-object p2, p0, Lcom/smartadserver/android/library/a/c$3;->a:Lorg/apache/http/client/methods/HttpGet;

    iput-boolean p3, p0, Lcom/smartadserver/android/library/a/c$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 284
    invoke-static {}, Lcom/smartadserver/android/library/a/c;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lcom/smartadserver/android/library/a/c$3;->b:Z

    if-eqz v0, :cond_2

    .line 292
    const-string v0, "SASHttpRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry to call url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/a/c$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c$3;->c:Lcom/smartadserver/android/library/a/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->b(Lcom/smartadserver/android/library/a/c;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/a/c$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 294
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/smartadserver/android/library/a/c$3;->c:Lcom/smartadserver/android/library/a/c;

    iget-object v3, p0, Lcom/smartadserver/android/library/a/c$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/a/c;->a(Lcom/smartadserver/android/library/a/c;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    .line 298
    iget-object v3, p0, Lcom/smartadserver/android/library/a/c$3;->c:Lcom/smartadserver/android/library/a/c;

    invoke-static {v3, v2}, Lcom/smartadserver/android/library/a/c;->a(Lcom/smartadserver/android/library/a/c;Lorg/apache/http/client/methods/HttpGet;)V

    .line 299
    iget-object v3, p0, Lcom/smartadserver/android/library/a/c$3;->c:Lcom/smartadserver/android/library/a/c;

    invoke-static {v3}, Lcom/smartadserver/android/library/a/c;->b(Lcom/smartadserver/android/library/a/c;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    :goto_0
    monitor-exit v1

    .line 313
    return-void

    .line 304
    :cond_1
    const-string v0, "SASHttpRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call URL (retries limit reached): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/a/c$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c$3;->c:Lcom/smartadserver/android/library/a/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->b(Lcom/smartadserver/android/library/a/c;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/a/c$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 310
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c$3;->c:Lcom/smartadserver/android/library/a/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->b(Lcom/smartadserver/android/library/a/c;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/a/c$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 276
    const-string v0, "SASHttpRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully called URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/a/c$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/smartadserver/android/library/a/c;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c$3;->c:Lcom/smartadserver/android/library/a/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->b(Lcom/smartadserver/android/library/a/c;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/a/c$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
