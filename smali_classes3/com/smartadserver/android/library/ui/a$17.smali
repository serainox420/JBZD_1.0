.class Lcom/smartadserver/android/library/ui/a$17;
.super Lcom/smartadserver/android/library/ui/a$a;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->getOnSwipeTouchListener()Lcom/smartadserver/android/library/ui/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2120
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$17;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/a$a;-><init>(Lcom/smartadserver/android/library/ui/a;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$17;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->o(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$17;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$17;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->isSwipeToClose()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$17;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isVideo360Mode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$17;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->e()V

    .line 2126
    :cond_0
    return-void
.end method
