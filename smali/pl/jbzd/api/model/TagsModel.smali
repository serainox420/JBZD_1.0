.class public Lpl/jbzd/api/model/TagsModel;
.super Ljava/lang/Object;
.source "TagsModel.java"

# interfaces
.implements Lpl/jbzd/api/model/BaseApiModel;


# instance fields
.field public tags:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
