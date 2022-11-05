.class Lcom/smartadserver/android/library/SASInterstitialView$a$1;
.super Ljava/lang/Object;
.source "SASInterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASInterstitialView$a;->adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/SASInterstitialView$a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/SASInterstitialView$a;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a$1;->a:Lcom/smartadserver/android/library/SASInterstitialView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a$1;->a:Lcom/smartadserver/android/library/SASInterstitialView$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->setVisibility(I)V

    .line 121
    return-void
.end method
