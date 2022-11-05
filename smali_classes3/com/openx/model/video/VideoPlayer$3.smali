.class Lcom/openx/model/video/VideoPlayer$3;
.super Lcom/openx/model/video/VideoPlayer$StoppableRunnable;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$3;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0, p1}, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;-><init>(Lcom/openx/model/video/VideoPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 422
    invoke-super {p0}, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->run()V

    .line 423
    return-void
.end method
