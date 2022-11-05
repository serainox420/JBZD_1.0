.class Lcom/loopme/NativeVideoAdapter$1;
.super Ljava/lang/Object;
.source "NativeVideoAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/NativeVideoAdapter;-><init>(Landroid/widget/BaseAdapter;Landroid/content/Context;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/NativeVideoAdapter;


# direct methods
.method constructor <init>(Lcom/loopme/NativeVideoAdapter;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/loopme/NativeVideoAdapter$1;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter$1;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-static {v0}, Lcom/loopme/NativeVideoAdapter;->access$000(Lcom/loopme/NativeVideoAdapter;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter$1;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-static {v0}, Lcom/loopme/NativeVideoAdapter;->access$000(Lcom/loopme/NativeVideoAdapter;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter$1;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-static {v0}, Lcom/loopme/NativeVideoAdapter;->access$100(Lcom/loopme/NativeVideoAdapter;)Lcom/loopme/NativeVideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/NativeVideoAdapter$1;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/loopme/NativeVideoController;->onScroll(Landroid/widget/AbsListView;Lcom/loopme/common/AdChecker;)V

    .line 57
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter$1;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-static {v0}, Lcom/loopme/NativeVideoAdapter;->access$000(Lcom/loopme/NativeVideoAdapter;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter$1;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-static {v0}, Lcom/loopme/NativeVideoAdapter;->access$000(Lcom/loopme/NativeVideoAdapter;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 49
    :cond_0
    return-void
.end method
