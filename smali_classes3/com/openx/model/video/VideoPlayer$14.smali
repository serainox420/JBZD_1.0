.class Lcom/openx/model/video/VideoPlayer$14;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->setOnCompletionListener()V
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
    .line 1466
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$14;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$14;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2700(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VideoCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openx/model/vast/VideoCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 1474
    return-void
.end method
