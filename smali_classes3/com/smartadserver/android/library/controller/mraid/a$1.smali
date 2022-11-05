.class Lcom/smartadserver/android/library/controller/mraid/a$1;
.super Ljava/lang/Object;
.source "SASMRAIDController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a;->setEnableStateChangeEvent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/smartadserver/android/library/controller/mraid/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a;Z)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$1;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    iput-boolean p2, p0, Lcom/smartadserver/android/library/controller/mraid/a$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$1;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setEnableStateChangeEvent(Z)V

    .line 258
    return-void
.end method
