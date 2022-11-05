.class public Lcom/openx/model/video/AdBreaks;
.super Lcom/openx/model/video/VideoInfo;
.source "AdBreaks.java"


# instance fields
.field adBreaks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/openx/model/video/VideoInfo;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/openx/model/video/VideoInfo;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/openx/model/video/AdBreaks;->adBreaks:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public getAdBreaks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/openx/model/video/AdBreaks;->adBreaks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAdBreaks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lcom/openx/model/video/AdBreaks;->adBreaks:Ljava/util/ArrayList;

    .line 24
    return-void
.end method
