.class public Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AndroidTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidClassAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;
    }
.end annotation


# instance fields
.field private final androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AndroidBuildInfo;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;I)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;->isAtLeastAndroidAPI(I)Z

    move-result v0

    return v0
.end method

.method private isAtLeastAndroidAPI(I)Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-static {v0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public withWebSettings(Landroid/webkit/WebSettings;)Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;-><init>(Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;Landroid/webkit/WebSettings;)V

    return-object v0
.end method
