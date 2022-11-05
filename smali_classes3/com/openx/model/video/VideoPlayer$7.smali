.class Lcom/openx/model/video/VideoPlayer$7;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->configureBarItems()V
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
    .line 672
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$7;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$7;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VASTInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/model/vast/VASTInterface;->resume()V

    .line 680
    return-void
.end method
