.class public Lpl/jbzd/api/response/DefaultApiResponse;
.super Lpl/jbzd/api/response/BaseApiResponse;
.source "DefaultApiResponse.java"


# instance fields
.field public data:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lpl/jbzd/api/response/BaseApiResponse;-><init>()V

    return-void
.end method
