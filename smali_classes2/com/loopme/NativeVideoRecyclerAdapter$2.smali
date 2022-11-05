.class Lcom/loopme/NativeVideoRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "NativeVideoRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/NativeVideoRecyclerAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$a;Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/NativeVideoRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/loopme/NativeVideoRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/loopme/NativeVideoRecyclerAdapter$2;->this$0:Lcom/loopme/NativeVideoRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/loopme/NativeVideoRecyclerAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLayoutChange!!!!!"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter$2;->this$0:Lcom/loopme/NativeVideoRecyclerAdapter;

    invoke-static {v0}, Lcom/loopme/NativeVideoRecyclerAdapter;->access$000(Lcom/loopme/NativeVideoRecyclerAdapter;)Lcom/loopme/NativeVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter$2;->this$0:Lcom/loopme/NativeVideoRecyclerAdapter;

    invoke-static {v1}, Lcom/loopme/NativeVideoRecyclerAdapter;->access$200(Lcom/loopme/NativeVideoRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/NativeVideoRecyclerAdapter$2;->this$0:Lcom/loopme/NativeVideoRecyclerAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/loopme/NativeVideoController;->onScroll(Landroid/support/v7/widget/RecyclerView;Lcom/loopme/common/AdChecker;)V

    .line 59
    return-void
.end method
