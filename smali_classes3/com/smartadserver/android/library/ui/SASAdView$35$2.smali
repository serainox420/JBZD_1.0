.class Lcom/smartadserver/android/library/ui/SASAdView$35$2;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView$35;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView$35;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView$35;)V
    .locals 0

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$2;->a:Lcom/smartadserver/android/library/ui/SASAdView$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$2;->a:Lcom/smartadserver/android/library/ui/SASAdView$35;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$2;->a:Lcom/smartadserver/android/library/ui/SASAdView$35;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$2;->a:Lcom/smartadserver/android/library/ui/SASAdView$35;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/controller/mraid/a;->a(II)V

    .line 1555
    return-void
.end method
