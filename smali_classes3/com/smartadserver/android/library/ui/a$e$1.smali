.class Lcom/smartadserver/android/library/ui/a$e$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$e;->dispatchVPAIDEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$e;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$e;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->o(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->p(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setMuted(Z)V

    .line 407
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v1, v0, v2}, Lcom/smartadserver/android/library/ui/a;->a(ZZ)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getMediaDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;I)V

    .line 410
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->r(Lcom/smartadserver/android/library/ui/a;)V

    .line 411
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->s(Lcom/smartadserver/android/library/ui/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 413
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$1;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 415
    monitor-exit v1

    .line 418
    :cond_1
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
