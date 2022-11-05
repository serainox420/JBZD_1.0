.class Lcom/openx/model/video/VideoPlayer$6;
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
    .line 654
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$6;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 660
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$6;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2100(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$6;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0, v2}, Lcom/openx/model/video/VideoPlayer;->access$702(Lcom/openx/model/video/VideoPlayer;Z)Z

    .line 664
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$6;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0, v2}, Lcom/openx/model/video/VideoPlayer;->access$902(Lcom/openx/model/video/VideoPlayer;Z)Z

    .line 666
    return-void
.end method
