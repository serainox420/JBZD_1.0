.class public final enum Lcom/facebook/ads/internal/f/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/f/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/f/c;

.field public static final enum b:Lcom/facebook/ads/internal/f/c;

.field public static final enum c:Lcom/facebook/ads/internal/f/c;

.field public static final enum d:Lcom/facebook/ads/internal/f/c;

.field public static final enum e:Lcom/facebook/ads/internal/f/c;

.field private static final synthetic f:[Lcom/facebook/ads/internal/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/f/c;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/f/c;->a:Lcom/facebook/ads/internal/f/c;

    new-instance v0, Lcom/facebook/ads/internal/f/c;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/f/c;->b:Lcom/facebook/ads/internal/f/c;

    new-instance v0, Lcom/facebook/ads/internal/f/c;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/f/c;->c:Lcom/facebook/ads/internal/f/c;

    new-instance v0, Lcom/facebook/ads/internal/f/c;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/f/c;->d:Lcom/facebook/ads/internal/f/c;

    new-instance v0, Lcom/facebook/ads/internal/f/c;

    const-string v1, "REWARDED_VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/f/c;->e:Lcom/facebook/ads/internal/f/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/internal/f/c;

    sget-object v1, Lcom/facebook/ads/internal/f/c;->a:Lcom/facebook/ads/internal/f/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/f/c;->b:Lcom/facebook/ads/internal/f/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/f/c;->c:Lcom/facebook/ads/internal/f/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/f/c;->d:Lcom/facebook/ads/internal/f/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/f/c;->e:Lcom/facebook/ads/internal/f/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/internal/f/c;->f:[Lcom/facebook/ads/internal/f/c;

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

.method public static a(Lcom/facebook/ads/internal/e;)Lcom/facebook/ads/internal/f/c;
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/f/c$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/f/c;->a:Lcom/facebook/ads/internal/f/c;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/facebook/ads/internal/f/c;->d:Lcom/facebook/ads/internal/f/c;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/facebook/ads/internal/f/c;->b:Lcom/facebook/ads/internal/f/c;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/facebook/ads/internal/f/c;->c:Lcom/facebook/ads/internal/f/c;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/facebook/ads/internal/f/c;->e:Lcom/facebook/ads/internal/f/c;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/f/c;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/f/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/f/c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/f/c;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/f/c;->f:[Lcom/facebook/ads/internal/f/c;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/f/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/f/c;

    return-object v0
.end method
