.class public Lpl/jbzd/api/response/TagsResponse;
.super Lpl/jbzd/api/response/BaseApiResponse;
.source "TagsResponse.java"


# instance fields
.field public tags:Lpl/jbzd/api/model/TagsModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lpl/jbzd/api/response/BaseApiResponse;-><init>()V

    return-void
.end method
