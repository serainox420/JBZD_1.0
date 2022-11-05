.class public final enum Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;
.super Ljava/lang/Enum;
.source "NativeAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/nativeAd/NativeAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeAdIdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

.field public static final enum AdUnitGroupId:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

.field public static final enum AdUnitId:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    const-string v1, "AdUnitId"

    invoke-direct {v0, v1, v2}, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;->AdUnitId:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    .line 43
    new-instance v0, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    const-string v1, "AdUnitGroupId"

    invoke-direct {v0, v1, v3}, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;->AdUnitGroupId:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    sget-object v1, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;->AdUnitId:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;->AdUnitGroupId:Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;->$VALUES:[Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    return-object v0
.end method

.method public static values()[Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;->$VALUES:[Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    invoke-virtual {v0}, [Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/view/nativeAd/NativeAdManager$NativeAdIdType;

    return-object v0
.end method
