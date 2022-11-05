.class Lcom/millennialmedia/internal/MMWebView$1;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/millennialmedia/internal/MMWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$1;->b:Lcom/millennialmedia/internal/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/internal/MMWebView$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 510
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$1;->b:Lcom/millennialmedia/internal/MMWebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lcom/millennialmedia/internal/MMWebView$1;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/MMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method
