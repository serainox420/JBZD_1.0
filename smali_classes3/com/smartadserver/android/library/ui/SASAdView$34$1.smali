.class Lcom/smartadserver/android/library/ui/SASAdView$34$1;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView$34;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView$34;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView$34;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$34$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$34$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$34;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$34;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$34$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$34;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView$34;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/g/c;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(I)V

    .line 1118
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$34$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$34;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$34;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$34$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$34;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$34;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->a()V

    .line 1121
    :cond_0
    return-void
.end method
