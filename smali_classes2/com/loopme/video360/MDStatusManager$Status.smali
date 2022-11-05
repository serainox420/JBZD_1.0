.class abstract Lcom/loopme/video360/MDStatusManager$Status;
.super Ljava/lang/Object;
.source "MDStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/video360/MDStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Status"
.end annotation


# instance fields
.field protected mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/loopme/video360/MDStatusManager$Status;->mId:I

    .line 72
    return-void
.end method


# virtual methods
.method public abstract isAllReady()Z
.end method

.method public abstract ready()V
.end method
