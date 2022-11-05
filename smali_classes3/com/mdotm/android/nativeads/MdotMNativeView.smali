.class public Lcom/mdotm/android/nativeads/MdotMNativeView;
.super Ljava/lang/Object;
.source "MdotMNativeView.java"


# static fields
.field private static nativeAd:Z


# instance fields
.field private mContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mdotm/android/nativeads/MdotMNativeView;->nativeAd:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mdotm/android/nativeads/MdotMNativeView;->mContext:Landroid/app/Activity;

    .line 17
    return-void
.end method

.method public static getNativeAd()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/mdotm/android/nativeads/MdotMNativeView;->nativeAd:Z

    return v0
.end method

.method public static setNativeAd(Z)V
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lcom/mdotm/android/nativeads/MdotMNativeView;->nativeAd:Z

    .line 32
    return-void
.end method


# virtual methods
.method public loadNativeAd(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mdotm/android/nativeads/MdotMNativeView;->nativeAd:Z

    .line 22
    const-string v0, "Native"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calling load native"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/mdotm/android/nativeads/MdotMNativeView;->nativeAd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcom/mdotm/android/view/MdotMInterstitial;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/mdotm/android/view/MdotMInterstitial;-><init>(Landroid/app/Activity;)V

    .line 24
    invoke-virtual {v1, p1, p2}, Lcom/mdotm/android/view/MdotMInterstitial;->loadInterstitial(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V

    .line 26
    return-void
.end method
