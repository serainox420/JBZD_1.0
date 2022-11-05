.class Lcom/smartadserver/android/library/ui/SASAdView$24;
.super Lcom/smartadserver/android/library/ui/d;
.source "SASAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 3152
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/smartadserver/android/library/ui/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 3

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/controller/b;

    if-nez v0, :cond_0

    .line 3172
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/b;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/controller/b;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/controller/b;

    .line 3173
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/controller/b;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object v1, v0, Lcom/smartadserver/android/library/controller/b;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 3174
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/controller/b;

    invoke-super {p0, v0}, Lcom/smartadserver/android/library/ui/d;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3177
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/controller/b;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/controller/b;->a(Landroid/webkit/WebChromeClient;)V

    .line 3178
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 2

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    if-nez v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/c;

    invoke-direct {v1}, Lcom/smartadserver/android/library/controller/c;-><init>()V

    iput-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    .line 3160
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object v1, v0, Lcom/smartadserver/android/library/controller/c;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 3161
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    invoke-super {p0, v0}, Lcom/smartadserver/android/library/ui/d;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3164
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$24;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/controller/c;->a(Landroid/webkit/WebViewClient;)V

    .line 3165
    return-void
.end method
