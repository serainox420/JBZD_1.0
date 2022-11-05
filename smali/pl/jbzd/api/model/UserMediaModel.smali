.class public Lpl/jbzd/api/model/UserMediaModel;
.super Ljava/lang/Object;
.source "UserMediaModel.java"

# interfaces
.implements Lpl/jbzd/api/model/BaseApiModel;


# instance fields
.field public comments:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public media:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public user:Lpl/jbzd/app/model/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
