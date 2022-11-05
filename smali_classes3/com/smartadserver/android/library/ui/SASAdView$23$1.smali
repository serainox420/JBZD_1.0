.class Lcom/smartadserver/android/library/ui/SASAdView$23$1;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView$23;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView$23;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 856
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$23;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 857
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->v()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rootView IBinder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$23;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$23;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$23;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$23;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget v1, v1, Lcom/smartadserver/android/library/ui/SASAdView$23;->a:I

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView$23;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget v3, v3, Lcom/smartadserver/android/library/ui/SASAdView$23;->c:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget-object v5, v5, Lcom/smartadserver/android/library/ui/SASAdView$23;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget-object v6, v6, Lcom/smartadserver/android/library/ui/SASAdView$23;->e:Lcom/smartadserver/android/library/ui/SASAdView$a;

    iget-object v7, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget v7, v7, Lcom/smartadserver/android/library/ui/SASAdView$23;->f:I

    iget-object v8, p0, Lcom/smartadserver/android/library/ui/SASAdView$23$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$23;

    iget-boolean v8, v8, Lcom/smartadserver/android/library/ui/SASAdView$23;->g:Z

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V

    .line 865
    :cond_0
    return-void
.end method
