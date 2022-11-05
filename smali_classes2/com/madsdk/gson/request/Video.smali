.class public Lcom/madsdk/gson/request/Video;
.super Ljava/lang/Object;
.source "Video.java"


# instance fields
.field public maxduration:I

.field public mimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public minduration:I

.field public protocols:Ljava/util/List;
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
.method public constructor <init>(IILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/madsdk/gson/request/Video;->minduration:I

    .line 15
    iput p2, p0, Lcom/madsdk/gson/request/Video;->maxduration:I

    .line 16
    iput-object p3, p0, Lcom/madsdk/gson/request/Video;->protocols:Ljava/util/List;

    .line 17
    iput-object p4, p0, Lcom/madsdk/gson/request/Video;->mimes:Ljava/util/List;

    .line 18
    return-void
.end method
