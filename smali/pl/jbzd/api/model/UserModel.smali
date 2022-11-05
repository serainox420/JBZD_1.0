.class public Lpl/jbzd/api/model/UserModel;
.super Ljava/lang/Object;
.source "UserModel.java"

# interfaces
.implements Lpl/jbzd/api/model/BaseApiModel;


# instance fields
.field public user:Lpl/jbzd/app/model/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
