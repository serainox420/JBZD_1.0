.class public Lpl/jbzd/api/response/UserMediaResponse;
.super Lpl/jbzd/api/response/BaseApiResponse;
.source "UserMediaResponse.java"


# instance fields
.field public response:Lpl/jbzd/api/model/UserMediaModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lpl/jbzd/api/response/BaseApiResponse;-><init>()V

    return-void
.end method
