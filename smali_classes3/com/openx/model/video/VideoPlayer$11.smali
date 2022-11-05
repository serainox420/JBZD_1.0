.class Lcom/openx/model/video/VideoPlayer$11;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->setErrorListener()V
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
    .line 1144
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$11;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$11;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2500(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VideoErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/openx/model/vast/VideoErrorListener;->onError(Landroid/media/MediaPlayer;II)V

    .line 1152
    const/4 v0, 0x1

    return v0
.end method
