.class Lcom/openx/model/video/VideoPlayer$10$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer$10;->onStartTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/model/video/VideoPlayer$10;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer$10;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$10$1;->this$1:Lcom/openx/model/video/VideoPlayer$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10$1;->this$1:Lcom/openx/model/video/VideoPlayer$10;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoPlayer;->access$2302(Lcom/openx/model/video/VideoPlayer;Z)Z

    .line 1048
    return-void
.end method
