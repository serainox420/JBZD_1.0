.class Lcom/smartadserver/android/library/ui/d$5;
.super Ljava/lang/Object;
.source "SASWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/d;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/d;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/d$5;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d$5;->a:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d$5;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/d;->b(Lcom/smartadserver/android/library/ui/d;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->removeView(Landroid/view/View;)V

    .line 301
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d$5;->a:Lcom/smartadserver/android/library/ui/d;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d$5;->a:Lcom/smartadserver/android/library/ui/d;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d$5;->a:Lcom/smartadserver/android/library/ui/d;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d$5;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/d;->b(Lcom/smartadserver/android/library/ui/d;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d$5;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/d;->b(Lcom/smartadserver/android/library/ui/d;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 308
    return-void
.end method
