.class Lcom/openx/model/video/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->setOrientationListener()V
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
    .line 222
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$1;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$1;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0, p1}, Lcom/openx/model/video/VideoPlayer;->access$000(Lcom/openx/model/video/VideoPlayer;I)V

    .line 230
    return-void
.end method
