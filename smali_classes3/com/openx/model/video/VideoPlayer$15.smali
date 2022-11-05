.class Lcom/openx/model/video/VideoPlayer$15;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1486
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$15;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$15;->this$0:Lcom/openx/model/video/VideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/openx/model/video/VideoPlayer;->access$2800(Lcom/openx/model/video/VideoPlayer;Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method
