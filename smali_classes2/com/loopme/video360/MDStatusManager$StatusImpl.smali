.class Lcom/loopme/video360/MDStatusManager$StatusImpl;
.super Lcom/loopme/video360/MDStatusManager$Status;
.source "MDStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/video360/MDStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusImpl"
.end annotation


# instance fields
.field private manager:Lcom/loopme/video360/MDStatusManager;


# direct methods
.method private constructor <init>(ILcom/loopme/video360/MDStatusManager;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/loopme/video360/MDStatusManager$Status;-><init>(I)V

    .line 52
    iput-object p2, p0, Lcom/loopme/video360/MDStatusManager$StatusImpl;->manager:Lcom/loopme/video360/MDStatusManager;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(ILcom/loopme/video360/MDStatusManager;Lcom/loopme/video360/MDStatusManager$1;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/loopme/video360/MDStatusManager$StatusImpl;-><init>(ILcom/loopme/video360/MDStatusManager;)V

    return-void
.end method


# virtual methods
.method public isAllReady()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/loopme/video360/MDStatusManager$StatusImpl;->manager:Lcom/loopme/video360/MDStatusManager;

    invoke-virtual {v0}, Lcom/loopme/video360/MDStatusManager;->isReady()Z

    move-result v0

    return v0
.end method

.method public ready()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/loopme/video360/MDStatusManager$StatusImpl;->manager:Lcom/loopme/video360/MDStatusManager;

    iget v1, p0, Lcom/loopme/video360/MDStatusManager$StatusImpl;->mId:I

    invoke-virtual {v0, v1}, Lcom/loopme/video360/MDStatusManager;->setChildReady(I)V

    .line 63
    return-void
.end method
