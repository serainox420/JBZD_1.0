.class Lcom/facebook/share/internal/LikeActionController$7;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->publishLikeAsync(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$7;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .prologue
    .line 984
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 987
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Invalid Object Id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1500(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1031
    :goto_0
    return-void

    .line 999
    :cond_0
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1000
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1001
    invoke-static {v3}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1002
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1003
    new-instance v2, Lcom/facebook/share/internal/LikeActionController$7$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/share/internal/LikeActionController$7$1;-><init>(Lcom/facebook/share/internal/LikeActionController$7;Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;)V

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1030
    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_0
.end method
