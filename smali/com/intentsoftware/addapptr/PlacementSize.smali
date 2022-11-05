.class public final enum Lcom/intentsoftware/addapptr/PlacementSize;
.super Ljava/lang/Enum;
.source "PlacementSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intentsoftware/addapptr/PlacementSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intentsoftware/addapptr/PlacementSize;

.field public static final enum Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

.field public static final enum Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

.field public static final enum Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

.field public static final enum Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

.field public static final enum Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

.field public static final enum MultiSizeBanner:Lcom/intentsoftware/addapptr/PlacementSize;

.field public static final enum Native:Lcom/intentsoftware/addapptr/PlacementSize;


# instance fields
.field private final bannerSize:Lcom/intentsoftware/addapptr/BannerSize;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/intentsoftware/addapptr/PlacementSize;

    const-string v1, "Banner320x53"

    sget-object v2, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x53:Lcom/intentsoftware/addapptr/BannerSize;

    invoke-direct {v0, v1, v4, v2}, Lcom/intentsoftware/addapptr/PlacementSize;-><init>(Ljava/lang/String;ILcom/intentsoftware/addapptr/BannerSize;)V

    sput-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 5
    new-instance v0, Lcom/intentsoftware/addapptr/PlacementSize;

    const-string v1, "Banner768x90"

    sget-object v2, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    invoke-direct {v0, v1, v5, v2}, Lcom/intentsoftware/addapptr/PlacementSize;-><init>(Ljava/lang/String;ILcom/intentsoftware/addapptr/BannerSize;)V

    sput-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 6
    new-instance v0, Lcom/intentsoftware/addapptr/PlacementSize;

    const-string v1, "Banner300x250"

    sget-object v2, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    invoke-direct {v0, v1, v6, v2}, Lcom/intentsoftware/addapptr/PlacementSize;-><init>(Ljava/lang/String;ILcom/intentsoftware/addapptr/BannerSize;)V

    sput-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 7
    new-instance v0, Lcom/intentsoftware/addapptr/PlacementSize;

    const-string v1, "Fullscreen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v7, v2}, Lcom/intentsoftware/addapptr/PlacementSize;-><init>(Ljava/lang/String;ILcom/intentsoftware/addapptr/BannerSize;)V

    sput-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 8
    new-instance v0, Lcom/intentsoftware/addapptr/PlacementSize;

    const-string v1, "Banner468x60"

    sget-object v2, Lcom/intentsoftware/addapptr/BannerSize;->Banner468x60:Lcom/intentsoftware/addapptr/BannerSize;

    invoke-direct {v0, v1, v8, v2}, Lcom/intentsoftware/addapptr/PlacementSize;-><init>(Ljava/lang/String;ILcom/intentsoftware/addapptr/BannerSize;)V

    sput-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 9
    new-instance v0, Lcom/intentsoftware/addapptr/PlacementSize;

    const-string v1, "Native"

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/PlacementSize;-><init>(Ljava/lang/String;ILcom/intentsoftware/addapptr/BannerSize;)V

    sput-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 10
    new-instance v0, Lcom/intentsoftware/addapptr/PlacementSize;

    const-string v1, "MultiSizeBanner"

    const/4 v2, 0x6

    sget-object v3, Lcom/intentsoftware/addapptr/BannerSize;->MutlipleSizes:Lcom/intentsoftware/addapptr/BannerSize;

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/PlacementSize;-><init>(Ljava/lang/String;ILcom/intentsoftware/addapptr/BannerSize;)V

    sput-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->MultiSizeBanner:Lcom/intentsoftware/addapptr/PlacementSize;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/intentsoftware/addapptr/PlacementSize;

    sget-object v1, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/intentsoftware/addapptr/PlacementSize;->MultiSizeBanner:Lcom/intentsoftware/addapptr/PlacementSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->$VALUES:[Lcom/intentsoftware/addapptr/PlacementSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/intentsoftware/addapptr/BannerSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intentsoftware/addapptr/BannerSize;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/intentsoftware/addapptr/PlacementSize;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intentsoftware/addapptr/PlacementSize;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/PlacementSize;

    return-object v0
.end method

.method public static values()[Lcom/intentsoftware/addapptr/PlacementSize;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->$VALUES:[Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v0}, [Lcom/intentsoftware/addapptr/PlacementSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intentsoftware/addapptr/PlacementSize;

    return-object v0
.end method


# virtual methods
.method getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/intentsoftware/addapptr/PlacementSize;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    return-object v0
.end method

.method isBanner()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/intentsoftware/addapptr/PlacementSize;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
