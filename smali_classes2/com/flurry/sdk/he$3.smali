.class final Lcom/flurry/sdk/he$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/he;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/he;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/he;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/flurry/sdk/he$3;->a:Lcom/flurry/sdk/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/flurry/sdk/he$3;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/he;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/he$3;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/he;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/flurry/sdk/he$3;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/he;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 457
    :cond_0
    return-void
.end method
