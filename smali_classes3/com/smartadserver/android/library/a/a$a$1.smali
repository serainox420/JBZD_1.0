.class Lcom/smartadserver/android/library/a/a$a$1;
.super Ljava/lang/Object;
.source "SASAsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/a/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/a/a$a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/a/a$a;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/smartadserver/android/library/a/a$a$1;->a:Lcom/smartadserver/android/library/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a$a$1;->a:Lcom/smartadserver/android/library/a/a$a;

    iget-object v2, v0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    iget-object v0, p0, Lcom/smartadserver/android/library/a/a$a$1;->a:Lcom/smartadserver/android/library/a/a$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/a/a;->a(Lcom/smartadserver/android/library/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0x12e

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/smartadserver/android/library/a/a;->a(Lcom/smartadserver/android/library/a/a;Z)Z

    .line 238
    const-string v0, "X-SMRT-I"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 241
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a$1;->a:Lcom/smartadserver/android/library/a/a$a;

    iget-object v2, v2, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/smartadserver/android/library/a/a;->a(Lcom/smartadserver/android/library/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_1

    .line 248
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 249
    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 250
    iget-object v1, p0, Lcom/smartadserver/android/library/a/a$a$1;->a:Lcom/smartadserver/android/library/a/a$a;

    new-instance v2, Lcom/smartadserver/android/library/a/a$b;

    invoke-direct {v2, v0}, Lcom/smartadserver/android/library/a/a$b;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object v2, v1, Lcom/smartadserver/android/library/a/a$a;->b:Lcom/smartadserver/android/library/a/a$b;

    .line 251
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a$a$1;->a:Lcom/smartadserver/android/library/a/a$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/a/a$a;->b:Lcom/smartadserver/android/library/a/a$b;

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 256
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 235
    goto :goto_0

    .line 248
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
