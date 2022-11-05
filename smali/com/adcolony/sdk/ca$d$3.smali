.class Lcom/adcolony/sdk/ca$d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$d;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 268
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 269
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 270
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 277
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 278
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iput-object v2, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    .line 282
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iput-object v2, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    .line 283
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$3;->a:Lcom/adcolony/sdk/ca$d;

    iput-object v2, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    .line 284
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 286
    :cond_3
    return-void
.end method
