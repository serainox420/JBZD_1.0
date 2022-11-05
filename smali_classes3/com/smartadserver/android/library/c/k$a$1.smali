.class Lcom/smartadserver/android/library/c/k$a$1;
.super Ljava/lang/Object;
.source "SASMillennialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/k$a;->onRequestSucceeded(Lcom/millennialmedia/InlineAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/k$a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/k$a;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/smartadserver/android/library/c/k$a$1;->a:Lcom/smartadserver/android/library/c/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$a$1;->a:Lcom/smartadserver/android/library/c/k$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->c(Lcom/smartadserver/android/library/c/k;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$a$1;->a:Lcom/smartadserver/android/library/c/k$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->a(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    .line 94
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$a$1;->a:Lcom/smartadserver/android/library/c/k$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 95
    return-void
.end method
