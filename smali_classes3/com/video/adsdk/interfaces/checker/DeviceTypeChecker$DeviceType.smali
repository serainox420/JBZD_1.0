.class public final enum Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;
.super Ljava/lang/Enum;
.source "DeviceTypeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

.field public static final enum SMARTPHONE:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

.field public static final enum TABLET:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;


# instance fields
.field private identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    const-string v1, "TABLET"

    const-string v2, "tablet"

    invoke-direct {v0, v1, v3, v2}, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->TABLET:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    .line 9
    new-instance v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    const-string v1, "SMARTPHONE"

    const-string v2, "smartphone"

    invoke-direct {v0, v1, v4, v2}, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->SMARTPHONE:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    sget-object v1, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->TABLET:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->SMARTPHONE:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->$VALUES:[Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->identifier:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->$VALUES:[Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    invoke-virtual {v0}, [Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->identifier:Ljava/lang/String;

    return-object v0
.end method
