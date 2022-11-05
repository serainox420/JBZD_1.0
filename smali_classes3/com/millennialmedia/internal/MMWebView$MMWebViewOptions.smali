.class public Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;
.super Ljava/lang/Object;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMWebViewOptions"
.end annotation


# instance fields
.field public final enableEnhancedAdControl:Z

.field public final enableMoat:Z

.field public final interstitial:Z

.field public final transparent:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->interstitial:Z

    .line 111
    iput-boolean p2, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->transparent:Z

    .line 112
    iput-boolean p3, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->enableMoat:Z

    .line 113
    iput-boolean p4, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->enableEnhancedAdControl:Z

    .line 114
    return-void
.end method

.method public static getDefault()Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    new-instance v0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;-><init>(ZZZZ)V

    return-object v0
.end method
