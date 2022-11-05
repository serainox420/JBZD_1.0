.class Lcom/openx/model/video/VideoPlayer$12;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->setPreparedListener()V
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
    .line 1162
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$12;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$12;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0, p1}, Lcom/openx/model/video/VideoPlayer;->access$302(Lcom/openx/model/video/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1170
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$12;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2600(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VideoPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$12;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/model/vast/VideoPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 1172
    return-void
.end method
