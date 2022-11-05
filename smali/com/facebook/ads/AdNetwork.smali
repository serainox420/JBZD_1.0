.class public final enum Lcom/facebook/ads/AdNetwork;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/AdNetwork;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADMOB:Lcom/facebook/ads/AdNetwork;

.field public static final enum AN:Lcom/facebook/ads/AdNetwork;

.field public static final enum FLURRY:Lcom/facebook/ads/AdNetwork;

.field public static final enum INMOBI:Lcom/facebook/ads/AdNetwork;

.field private static final synthetic a:[Lcom/facebook/ads/AdNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/AdNetwork;

    const-string v1, "AN"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdNetwork;->AN:Lcom/facebook/ads/AdNetwork;

    new-instance v0, Lcom/facebook/ads/AdNetwork;

    const-string v1, "ADMOB"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdNetwork;->ADMOB:Lcom/facebook/ads/AdNetwork;

    new-instance v0, Lcom/facebook/ads/AdNetwork;

    const-string v1, "FLURRY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdNetwork;->FLURRY:Lcom/facebook/ads/AdNetwork;

    new-instance v0, Lcom/facebook/ads/AdNetwork;

    const-string v1, "INMOBI"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdNetwork;->INMOBI:Lcom/facebook/ads/AdNetwork;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/ads/AdNetwork;

    sget-object v1, Lcom/facebook/ads/AdNetwork;->AN:Lcom/facebook/ads/AdNetwork;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/AdNetwork;->ADMOB:Lcom/facebook/ads/AdNetwork;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/AdNetwork;->FLURRY:Lcom/facebook/ads/AdNetwork;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/AdNetwork;->INMOBI:Lcom/facebook/ads/AdNetwork;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/ads/AdNetwork;->a:[Lcom/facebook/ads/AdNetwork;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdNetwork;
    .locals 1

    const-class v0, Lcom/facebook/ads/AdNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdNetwork;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/AdNetwork;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AdNetwork;->a:[Lcom/facebook/ads/AdNetwork;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdNetwork;

    return-object v0
.end method
