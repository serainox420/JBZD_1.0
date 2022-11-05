.class public abstract Lpl/jbzd/api/callback/SimpleApiCallback;
.super Ljava/lang/Object;
.source "SimpleApiCallback.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lpl/jbzd/api/response/BaseApiResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/api/callback/SimpleApiCallback;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public after(Lretrofit2/Call;Lretrofit2/Response;Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;",
            "Lretrofit2/Response",
            "<TR;>;TR;)V"
        }
    .end annotation

    .prologue
    .line 27
    return-void
.end method

.method public before(Lretrofit2/Call;Lretrofit2/Response;Lpl/jbzd/api/response/BaseApiResponse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;",
            "Lretrofit2/Response",
            "<TR;>;TR;)Z"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public loadFromCache(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;",
            "Lretrofit2/Response",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public abstract onError(Lpl/jbzd/api/exception/ApiException;)V
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lpl/jbzd/api/exception/ApiException;

    sget-object v1, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->EMERGENCY:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    invoke-direct {v0, v1, p1, p2}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lpl/jbzd/api/callback/SimpleApiCallback;->onError(Lpl/jbzd/api/exception/ApiException;)V

    .line 73
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;",
            "Lretrofit2/Response",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v2, "Cache"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    const-string v2, "load-from-cache"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lpl/jbzd/api/exception/ApiException;

    sget-object v1, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->ALERT:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    const-string v2, "You are Offline"

    invoke-direct {v0, v1, p1, p2, v2}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lpl/jbzd/api/callback/SimpleApiCallback;->onError(Lpl/jbzd/api/exception/ApiException;)V

    .line 68
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/api/response/BaseApiResponse;

    .line 41
    invoke-static {v0}, Lpl/jbzd/api/util/ApiUtils;->isSuccessful(Lpl/jbzd/api/response/BaseApiResponse;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    iput-object v1, p0, Lpl/jbzd/api/callback/SimpleApiCallback;->errorMessage:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Lpl/jbzd/api/callback/SimpleApiCallback;->before(Lretrofit2/Call;Lretrofit2/Response;Lpl/jbzd/api/response/BaseApiResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Lpl/jbzd/api/callback/SimpleApiCallback;->onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V

    .line 52
    invoke-virtual {p0, p1, p2, v0}, Lpl/jbzd/api/callback/SimpleApiCallback;->after(Lretrofit2/Call;Lretrofit2/Response;Lpl/jbzd/api/response/BaseApiResponse;)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance v2, Lpl/jbzd/api/exception/ApiException;

    sget-object v3, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->ALERT:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    iget-object v0, p0, Lpl/jbzd/api/callback/SimpleApiCallback;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/jbzd/api/callback/SimpleApiCallback;->errorMessage:Ljava/lang/String;

    :goto_1
    invoke-direct {v2, v3, p1, p2, v0}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lpl/jbzd/api/callback/SimpleApiCallback;->onError(Lpl/jbzd/api/exception/ApiException;)V

    .line 57
    iput-object v1, p0, Lpl/jbzd/api/callback/SimpleApiCallback;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "Invalid data"

    goto :goto_1

    .line 61
    :cond_3
    new-instance v2, Lpl/jbzd/api/exception/ApiException;

    sget-object v3, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->ERROR:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/api/response/BaseApiResponse;

    iget-object v0, v0, Lpl/jbzd/api/response/BaseApiResponse;->message:Ljava/lang/String;

    :goto_2
    invoke-direct {v2, v3, p1, p2, v0}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lpl/jbzd/api/callback/SimpleApiCallback;->onError(Lpl/jbzd/api/exception/ApiException;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    .line 65
    :cond_5
    new-instance v2, Lpl/jbzd/api/exception/ApiException;

    sget-object v3, Lpl/jbzd/api/exception/ApiException$ErrorLevel;->CRITICAL:Lpl/jbzd/api/exception/ApiException$ErrorLevel;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/api/response/BaseApiResponse;

    iget-object v1, v0, Lpl/jbzd/api/response/BaseApiResponse;->message:Ljava/lang/String;

    :cond_6
    invoke-direct {v2, v3, p1, p2, v1}, Lpl/jbzd/api/exception/ApiException;-><init>(Lpl/jbzd/api/exception/ApiException$ErrorLevel;Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lpl/jbzd/api/callback/SimpleApiCallback;->onError(Lpl/jbzd/api/exception/ApiException;)V

    goto :goto_0
.end method

.method public abstract onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method
