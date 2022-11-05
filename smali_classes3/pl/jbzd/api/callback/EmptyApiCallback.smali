.class public Lpl/jbzd/api/callback/EmptyApiCallback;
.super Lpl/jbzd/api/callback/SimpleApiCallback;
.source "EmptyApiCallback.java"


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
    .line 10
    invoke-direct {p0}, Lpl/jbzd/api/callback/SimpleApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 14
    return-void
.end method
