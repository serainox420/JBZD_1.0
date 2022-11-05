.class Lcom/millennialmedia/InlineAd$4$1;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$4;->initSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/millennialmedia/InlineAd$4;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd$4;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$4$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 841
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->d:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->i(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->d:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->i(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->d:Lcom/millennialmedia/InlineAd;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$4$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 848
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->d:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->i(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->b:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->d:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->i(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v2, v2, Lcom/millennialmedia/InlineAd$4;->d:Lcom/millennialmedia/InlineAd;

    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->j(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v3, v3, Lcom/millennialmedia/InlineAd$4;->d:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getWidthPixels(Lcom/millennialmedia/InlineAd;)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v3, v3, Lcom/millennialmedia/InlineAd$4;->d:Lcom/millennialmedia/InlineAd;

    .line 856
    invoke-static {v3}, Lcom/millennialmedia/InlineAd;->j(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/InlineAd$4$1;->b:Lcom/millennialmedia/InlineAd$4;

    iget-object v4, v4, Lcom/millennialmedia/InlineAd$4;->d:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v3, v4}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getHeightPixels(Lcom/millennialmedia/InlineAd;)I

    move-result v3

    .line 855
    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->display(Landroid/widget/RelativeLayout;II)V

    .line 857
    return-void
.end method
