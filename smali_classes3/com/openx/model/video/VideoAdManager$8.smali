.class Lcom/openx/model/video/VideoAdManager$8;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->startContentVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoAdManager;

.field final synthetic val$videoURI:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoAdManager;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    iput-object p2, p0, Lcom/openx/model/video/VideoAdManager$8;->val$videoURI:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2276
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->val$videoURI:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 2279
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$4300(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2282
    const-string v0, "STATE_MACHINE"

    const-string v1, " make ad view invisible "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$4400(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2284
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 2285
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$4300(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 2286
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$4502(Lcom/openx/model/video/VideoAdManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 2287
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$4300(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$002(Lcom/openx/model/video/VideoAdManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$2602(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 2293
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setContentPlaying()V

    .line 2295
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setPreparing()V

    .line 2297
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 2299
    const-string v0, "STATE_MACHINE"

    const-string v1, " startContentVideo 2353"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$8;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$8;->val$videoURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 2305
    :cond_1
    return-void
.end method
