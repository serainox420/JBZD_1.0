.class public Lcom/madsdk/gson/response/Native;
.super Ljava/lang/Object;
.source "Native.java"


# instance fields
.field public assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/madsdk/gson/response/Asset;",
            ">;"
        }
    .end annotation
.end field

.field public imptrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public link:Lcom/madsdk/gson/request/Link;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
