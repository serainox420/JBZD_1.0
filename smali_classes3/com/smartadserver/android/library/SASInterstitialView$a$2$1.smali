.class Lcom/smartadserver/android/library/SASInterstitialView$a$2$1;
.super Ljava/lang/Object;
.source "SASInterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASInterstitialView$a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/SASInterstitialView$a$2;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/SASInterstitialView$a$2;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a$2$1;->a:Lcom/smartadserver/android/library/SASInterstitialView$a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a$2$1;->a:Lcom/smartadserver/android/library/SASInterstitialView$a$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/SASInterstitialView$a$2;->a:Lcom/smartadserver/android/library/SASInterstitialView$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->m()V

    .line 158
    return-void
.end method
