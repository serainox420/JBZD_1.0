.class public Lcom/smartadserver/android/library/SASBannerView;
.super Lcom/smartadserver/android/library/ui/SASAdView;
.source "SASBannerView.java"


# static fields
.field private static final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/SASBannerView;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/SASAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Lcom/smartadserver/android/library/SASBannerView$1;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/SASBannerView$1;-><init>(Lcom/smartadserver/android/library/SASBannerView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/SASBannerView;->a(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lcom/smartadserver/android/library/SASBannerView$2;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/SASBannerView$2;-><init>(Lcom/smartadserver/android/library/SASBannerView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/SASBannerView;->a(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/SASBannerView;->setRefreshIntervalImpl(I)V

    .line 48
    return-void
.end method
