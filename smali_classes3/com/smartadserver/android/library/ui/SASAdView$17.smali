.class Lcom/smartadserver/android/library/ui/SASAdView$17;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->D()V
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
    .line 2871
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$17;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$17;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setStickToTopEnabled(Z)V

    .line 2875
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$17;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Z)V

    .line 2876
    return-void
.end method
