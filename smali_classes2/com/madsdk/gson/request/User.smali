.class public Lcom/madsdk/gson/request/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field public ext:Lcom/madsdk/gson/request/UserExt;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/madsdk/gson/request/UserExt;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/madsdk/gson/request/User;->id:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/madsdk/gson/request/User;->ext:Lcom/madsdk/gson/request/UserExt;

    .line 13
    return-void
.end method
