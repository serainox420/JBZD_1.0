.class public final enum Lcom/facebook/ads/AudienceNetworkActivity$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AudienceNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/AudienceNetworkActivity$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BROWSER:Lcom/facebook/ads/AudienceNetworkActivity$Type;

.field public static final enum DISPLAY:Lcom/facebook/ads/AudienceNetworkActivity$Type;

.field public static final enum NATIVE:Lcom/facebook/ads/AudienceNetworkActivity$Type;

.field public static final enum REWARDED_VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

.field public static final enum VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

.field private static final synthetic a:[Lcom/facebook/ads/AudienceNetworkActivity$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const-string v1, "DISPLAY"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AudienceNetworkActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;->DISPLAY:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/AudienceNetworkActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;->VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const-string v1, "REWARDED_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/AudienceNetworkActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;->REWARDED_VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/AudienceNetworkActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;->NATIVE:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const-string v1, "BROWSER"

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/AudienceNetworkActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;->BROWSER:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->DISPLAY:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->REWARDED_VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->NATIVE:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->BROWSER:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;->a:[Lcom/facebook/ads/AudienceNetworkActivity$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AudienceNetworkActivity$Type;
    .locals 1

    const-class v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/AudienceNetworkActivity$Type;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;->a:[Lcom/facebook/ads/AudienceNetworkActivity$Type;

    invoke-virtual {v0}, [Lcom/facebook/ads/AudienceNetworkActivity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AudienceNetworkActivity$Type;

    return-object v0
.end method
