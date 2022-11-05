.class final Lcom/flurry/sdk/he$2;
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
    .line 436
    iput-object p1, p0, Lcom/flurry/sdk/he$2;->a:Lcom/flurry/sdk/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/flurry/sdk/he$2;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/he;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/he$2;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/he;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/flurry/sdk/he$2;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/he;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/he$2;->a:Lcom/flurry/sdk/he;

    sget-object v1, Lcom/flurry/sdk/he$c;->b:Lcom/flurry/sdk/he$c;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->a(Lcom/flurry/sdk/he$c;)V

    goto :goto_0
.end method
