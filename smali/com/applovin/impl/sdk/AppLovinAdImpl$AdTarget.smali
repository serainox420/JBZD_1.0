.class public final enum Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ACTIVITY_LANDSCAPE:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

.field public static final enum ACTIVITY_PORTRAIT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

.field public static final enum DEFAULT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

.field private static final synthetic a:[Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->DEFAULT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    const-string v1, "ACTIVITY_PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->ACTIVITY_PORTRAIT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    const-string v1, "ACTIVITY_LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->ACTIVITY_LANDSCAPE:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    sget-object v1, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->DEFAULT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->ACTIVITY_PORTRAIT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->ACTIVITY_LANDSCAPE:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    aput-object v1, v0, v4

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->a:[Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;
    .locals 1

    const-class v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    return-object v0
.end method

.method public static values()[Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->a:[Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    invoke-virtual {v0}, [Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    return-object v0
.end method
