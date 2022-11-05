.class Lcom/openx/model/video/VideoAdManager$3;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->createVideoThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoAdManager;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 1132
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$900(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$902(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 1137
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->threadResume()V

    .line 1139
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1141
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$500(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1144
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setStarted()V

    .line 1148
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_START:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1200(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 1150
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/openx/model/video/VideoAdManager;->access$1302(Lcom/openx/model/video/VideoAdManager;D)D

    .line 1151
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoAdManager;->access$1402(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 1152
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoAdManager;->access$1502(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 1153
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoAdManager;->access$1602(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 1154
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoAdManager;->access$1702(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 1155
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$3;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoAdManager;->access$802(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 1159
    :cond_0
    return-void
.end method
