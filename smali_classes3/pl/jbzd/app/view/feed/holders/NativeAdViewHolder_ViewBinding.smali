.class public Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "NativeAdViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;

    .line 21
    const v0, 0x7f110142

    const-string v1, "field \'layout\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;->layout:Landroid/widget/FrameLayout;

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;

    .line 28
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;

    .line 31
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;->layout:Landroid/widget/FrameLayout;

    .line 32
    return-void
.end method
