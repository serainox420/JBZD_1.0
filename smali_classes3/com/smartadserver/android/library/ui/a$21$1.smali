.class Lcom/smartadserver/android/library/ui/a$21$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$21;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$21;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$21;)V
    .locals 0

    .prologue
    .line 2316
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$21$1;->a:Lcom/smartadserver/android/library/ui/a$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$21$1;->a:Lcom/smartadserver/android/library/ui/a$21;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$21;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setVisibility(I)V

    .line 2320
    return-void
.end method
