.class public Lpl/jbzd/api/response/FavoriteResponse;
.super Lpl/jbzd/api/response/BaseApiResponse;
.source "FavoriteResponse.java"


# instance fields
.field public data:Lpl/jbzd/api/model/StatusModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lpl/jbzd/api/response/BaseApiResponse;-><init>()V

    return-void
.end method
