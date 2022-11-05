.class Lcom/smartadserver/android/library/ui/SASAdView$3;
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
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 2130
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->s(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->s(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->siteId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2135
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->s(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->formatId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2136
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->s(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->pageId:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/smartadserver/android/library/ui/SASAdView$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v5}, Lcom/smartadserver/android/library/ui/SASAdView;->s(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->target:Ljava/lang/String;

    new-instance v6, Lcom/smartadserver/android/library/ui/SASAdView$3$1;

    invoke-direct {v6, p0}, Lcom/smartadserver/android/library/ui/SASAdView$3$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$3;)V

    invoke-virtual/range {v0 .. v6}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;)V

    .line 2150
    :cond_0
    return-void
.end method
