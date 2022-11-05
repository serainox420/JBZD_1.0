.class Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->mraidResize(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

.field final synthetic val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

.field final synthetic val$closeXPx:I

.field final synthetic val$closeYPx:I

.field final synthetic val$heightPx:I

.field final synthetic val$widthPx:I

.field final synthetic val$xPx:I

.field final synthetic val$yPx:I


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;IIIIIILcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 0

    .prologue
    .line 2765
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iput p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$widthPx:I

    iput p3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$heightPx:I

    iput p4, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$xPx:I

    iput p5, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$yPx:I

    iput p6, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$closeXPx:I

    iput p7, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$closeYPx:I

    iput-object p8, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v4, 0x32

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    .line 2767
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$4200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/app/Activity;

    move-result-object v0

    .line 2768
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2770
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$widthPx:I

    iget v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$heightPx:I

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2773
    iget v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$xPx:I

    iget v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$yPx:I

    invoke-virtual {v2, v1, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2775
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2776
    invoke-static {v4}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v1

    .line 2777
    invoke-static {v4}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v4

    invoke-direct {v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2778
    iget v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$closeXPx:I

    iget v4, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$closeYPx:I

    invoke-virtual {v3, v1, v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2783
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2784
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2785
    if-eqz v1, :cond_0

    .line 2786
    iget-object v4, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v4, v4, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v4}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2789
    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v5, v5, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v5}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v4}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3002(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/view/View;)Landroid/view/View;

    .line 2790
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2791
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7$1;

    invoke-direct {v4, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7$1;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2802
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v5, v5, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v5}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v4}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2802(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 2803
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v4, v4, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v4}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2804
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v2, v2, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2806
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2808
    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v2, v2, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2809
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 2816
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    sget-object v2, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Resized:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3100(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 2817
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Resized:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setState(Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 2821
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2822
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$xPx:I

    iget v4, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$yPx:I

    iget v5, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$widthPx:I

    iget v6, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->val$heightPx:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;->onResized(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/graphics/Rect;)V

    .line 2827
    :cond_1
    return-void

    .line 2811
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2812
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
