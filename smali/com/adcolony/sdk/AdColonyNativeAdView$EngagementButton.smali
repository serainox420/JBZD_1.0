.class public Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;
.super Landroid/widget/Button;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/AdColonyNativeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EngagementButton"
.end annotation


# instance fields
.field a:Z

.field b:Landroid/view/View$OnClickListener;

.field final synthetic c:Lcom/adcolony/sdk/AdColonyNativeAdView;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyNativeAdView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;->c:Lcom/adcolony/sdk/AdColonyNativeAdView;

    .line 176
    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 177
    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;->a:Z

    if-nez v0, :cond_0

    .line 184
    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;->b:Landroid/view/View$OnClickListener;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;->a:Z

    .line 188
    :cond_0
    return-void
.end method
