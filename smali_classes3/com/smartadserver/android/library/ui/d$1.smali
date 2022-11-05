.class Lcom/smartadserver/android/library/ui/d$1;
.super Landroid/webkit/WebView;
.source "SASWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/d;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/d$1;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d$1;->a:Lcom/smartadserver/android/library/ui/d;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d$1;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/d;->a(Lcom/smartadserver/android/library/ui/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    .line 80
    :cond_0
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d$1;->a:Lcom/smartadserver/android/library/ui/d;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d$1;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/d;->a(Lcom/smartadserver/android/library/ui/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    monitor-exit v1

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/d$1;->a:Lcom/smartadserver/android/library/ui/d;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d$1;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/d;->a(Lcom/smartadserver/android/library/ui/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    :cond_0
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    .line 87
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 88
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v1

    .line 96
    :goto_0
    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d$1;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/d$1;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView;

    .line 100
    invoke-virtual {v0, p1, p2}, Lcom/smartadserver/android/library/ui/SASAdView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 105
    :cond_1
    return v2

    .line 90
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/d$1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 93
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/d$1;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method
