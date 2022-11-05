.class public Lcom/applovin/adview/ClickTrackingOverlayView;
.super Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/applovin/impl/sdk/cb;

    invoke-direct {v1, p2}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->K()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/applovin/adview/ClickTrackingOverlayView;->a(Landroid/content/Context;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 4

    new-instance v1, Lcom/applovin/impl/sdk/cb;

    invoke-direct {v1, p2}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->J()I

    move-result v3

    const/4 v0, -0x2

    if-eq v3, v0, :cond_0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/adview/ClickTrackingOverlayView;->setBackgroundColor(I)V

    invoke-virtual {p0, v2}, Lcom/applovin/adview/ClickTrackingOverlayView;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-static {p1, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method
