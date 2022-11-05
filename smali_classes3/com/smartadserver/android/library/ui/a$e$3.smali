.class Lcom/smartadserver/android/library/ui/a$e$3;
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
    .line 463
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$e$3;->a:Lcom/smartadserver/android/library/ui/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e$3;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e$3;->a:Lcom/smartadserver/android/library/ui/a$e;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->u(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setMuted(Z)V

    .line 467
    return-void
.end method
