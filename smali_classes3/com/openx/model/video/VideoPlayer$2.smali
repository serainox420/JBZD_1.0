.class Lcom/openx/model/video/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->updateView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoPlayer;

.field final synthetic val$bottomText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$2;->this$0:Lcom/openx/model/video/VideoPlayer;

    iput-object p2, p0, Lcom/openx/model/video/VideoPlayer$2;->val$bottomText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$2;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$100(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$2;->val$bottomText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method
