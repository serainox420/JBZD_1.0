.class Lcom/loopme/NativeVideoRecyclerAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "NativeVideoRecyclerAdapter.java"


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
    .line 46
    iput-object p1, p0, Lcom/loopme/NativeVideoRecyclerAdapter$1;->this$0:Lcom/loopme/NativeVideoRecyclerAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$l;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 50
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter$1;->this$0:Lcom/loopme/NativeVideoRecyclerAdapter;

    invoke-static {v0}, Lcom/loopme/NativeVideoRecyclerAdapter;->access$000(Lcom/loopme/NativeVideoRecyclerAdapter;)Lcom/loopme/NativeVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/NativeVideoRecyclerAdapter$1;->this$0:Lcom/loopme/NativeVideoRecyclerAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/loopme/NativeVideoController;->onScroll(Landroid/support/v7/widget/RecyclerView;Lcom/loopme/common/AdChecker;)V

    .line 51
    return-void
.end method
