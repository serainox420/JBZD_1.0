.class final enum Lcom/applovin/impl/sdk/cs;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/cs;

.field public static final enum b:Lcom/applovin/impl/sdk/cs;

.field public static final enum c:Lcom/applovin/impl/sdk/cs;

.field private static final synthetic d:[Lcom/applovin/impl/sdk/cs;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/cs;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/cs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    new-instance v0, Lcom/applovin/impl/sdk/cs;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/sdk/cs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/cs;

    new-instance v0, Lcom/applovin/impl/sdk/cs;

    const-string v1, "POSTBACKS"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/sdk/cs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/cs;->c:Lcom/applovin/impl/sdk/cs;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/applovin/impl/sdk/cs;

    sget-object v1, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/cs;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/sdk/cs;->c:Lcom/applovin/impl/sdk/cs;

    aput-object v1, v0, v4

    sput-object v0, Lcom/applovin/impl/sdk/cs;->d:[Lcom/applovin/impl/sdk/cs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
