.class Lcom/smartadserver/android/library/ui/SASAdView$19;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->setExpandParentContainer(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 3038
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$19;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$19;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Z)V

    .line 3042
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$19;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Z)V

    .line 3043
    return-void
.end method
