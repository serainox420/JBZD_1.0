.class Lcom/smartadserver/android/library/ui/SASAdView$4;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/View$OnClickListener;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->a:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->s(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->insertionId:I

    .line 2180
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->s(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)V

    .line 2181
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->t(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 2182
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->b:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2183
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2184
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    instance-of v0, v0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$4;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->n()V

    .line 2187
    :cond_0
    return-void
.end method
