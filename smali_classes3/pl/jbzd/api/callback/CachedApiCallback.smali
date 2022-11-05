.class public abstract Lpl/jbzd/api/callback/CachedApiCallback;
.super Lpl/jbzd/api/callback/SimpleApiCallback;
.source "CachedApiCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lpl/jbzd/api/response/BaseApiResponse;",
        ">",
        "Lpl/jbzd/api/callback/SimpleApiCallback",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lpl/jbzd/api/callback/SimpleApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract loadFromCache(Lretrofit2/Call;Lretrofit2/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;",
            "Lretrofit2/Response",
            "<TR;>;)V"
        }
    .end annotation
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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
    .line 18
    invoke-virtual {p2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "Cache"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    const-string v1, "load-from-cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0, p1, p2}, Lpl/jbzd/api/callback/CachedApiCallback;->loadFromCache(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Lpl/jbzd/api/callback/SimpleApiCallback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    goto :goto_0
.end method
