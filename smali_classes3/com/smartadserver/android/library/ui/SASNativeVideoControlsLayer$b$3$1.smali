.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3$1;
.super Ljava/lang/Object;
.source "SASNativeVideoControlsLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(Z)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 447
    return-void
.end method
