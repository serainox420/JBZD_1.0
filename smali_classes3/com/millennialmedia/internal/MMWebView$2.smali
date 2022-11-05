.class Lcom/millennialmedia/internal/MMWebView$2;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMWebView;->loadUrl(Ljava/lang/String;)V
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
    .line 609
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$2;->b:Lcom/millennialmedia/internal/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/internal/MMWebView$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->b:Lcom/millennialmedia/internal/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->b(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    .line 614
    return-void
.end method
